// ext_atomic.h copyright 2008 cycling '74

#ifndef __EXT_ATOMIC_H__
#define __EXT_ATOMIC_H__

#if __GNUC__ && !defined(MAC_VERSION)
#define USE_GNUC_ATOMICS
#endif

#ifdef USE_GNUC_ATOMICS

#include <stdint.h>

typedef volatile int32_t t_int32_atomic;
typedef volatile int64_t t_int64_atomic;
typedef volatile uint32_t t_uint32_atomic;
typedef volatile uint64_t t_uint64_atomic;

/** increment an atomic int value
    @ingroup threading
    return value of ATOMIC_INCREMENT and ATOMIC_DECREMENT is the *new* value after performing the operation
*/
#define ATOMIC_INCREMENT(atomicptr) (__atomic_add_fetch(atomicptr, 1, __ATOMIC_RELAXED))

/** increment an atomic int value with a memory barrier
    @ingroup threading
    return value of ATOMIC_INCREMENT and ATOMIC_DECREMENT is the *new* value after performing the operation
*/
#define ATOMIC_INCREMENT_BARRIER(atomicptr) (__atomic_add_fetch(atomicptr, 1, __ATOMIC_SEQ_CST))

/** decrement an atomic int value
    @ingroup threading
    return value of ATOMIC_INCREMENT and ATOMIC_DECREMENT is the *new* value after performing the operation
*/
#define ATOMIC_DECREMENT(atomicptr) (__atomic_sub_fetch(atomicptr, 1, __ATOMIC_RELAXED))

/** decrement an atomic int value with a memory barrier
    @ingroup threading
    return value of ATOMIC_INCREMENT and ATOMIC_DECREMENT is the *new* value after performing the operation
*/
#define ATOMIC_DECREMENT_BARRIER(atomicptr) (__atomic_sub_fetch(atomicptr, 1, __ATOMIC_SEQ_CST))


static
#ifdef __cplusplus
bool
#else
_Bool
#endif
atomic_compare_and_swap_32(t_int32_atomic *ptr, t_int32_atomic old, t_int32_atomic new_)
{
	return __atomic_compare_exchange_n(ptr, (int32_t *)&old, new_, 0, __ATOMIC_SEQ_CST, __ATOMIC_SEQ_CST);
}

static
#ifdef __cplusplus
bool
#else
_Bool
#endif
atomic_compare_and_swap_64(t_int64_atomic *ptr, t_int64_atomic old, t_int64_atomic new_)
{
	return __atomic_compare_exchange_n(ptr, (int64_t *)&old, new_, 0, __ATOMIC_SEQ_CST, __ATOMIC_SEQ_CST);
}

#define ATOMIC_COMPARE_SWAP32(oldvalue, newvalue, atomicptr) atomic_compare_and_swap_32(atomicptr, oldvalue, newvalue)
#define ATOMIC_COMPARE_SWAP64(oldvalue, newvalue, atomicptr) atomic_compare_and_swap_64(atomicptr, oldvalue, newvalue)


#else // USE_GNUC_ATOMICS

#ifdef MAC_VERSION

#include <stdint.h>
#include <libkern/OSAtomic.h>

typedef volatile int32_t t_int32_atomic;
typedef volatile int64_t t_int64_atomic;
typedef volatile u_int32_t t_uint32_atomic;
typedef volatile u_int64_t t_uint64_atomic;

/** increment an atomic int value
	@ingroup threading
	return value of ATOMIC_INCREMENT and ATOMIC_DECREMENT is the *new* value after performing the operation
*/
#define ATOMIC_INCREMENT(atomicptr) OSAtomicIncrement32((int32_t *)atomicptr)

/** increment an atomic int value with a memory barrier
	@ingroup threading
	return value of ATOMIC_INCREMENT and ATOMIC_DECREMENT is the *new* value after performing the operation
*/
#define ATOMIC_INCREMENT_BARRIER(atomicptr) OSAtomicIncrement32Barrier((int32_t *)atomicptr)

/** decrement an atomic int value
	@ingroup threading
	return value of ATOMIC_INCREMENT and ATOMIC_DECREMENT is the *new* value after performing the operation
*/
#define ATOMIC_DECREMENT(atomicptr) OSAtomicDecrement32((int32_t *)atomicptr)

/** decrement an atomic int value with a memory barrier
	@ingroup threading
	return value of ATOMIC_INCREMENT and ATOMIC_DECREMENT is the *new* value after performing the operation
*/
#define ATOMIC_DECREMENT_BARRIER(atomicptr) OSAtomicDecrement32Barrier((int32_t *)atomicptr)

#define ATOMIC_COMPARE_SWAP32(oldvalue, newvalue, atomicptr) (OSAtomicCompareAndSwap32Barrier(oldvalue, newvalue, atomicptr))
#define ATOMIC_COMPARE_SWAP64(oldvalue, newvalue, atomicptr) (OSAtomicCompareAndSwap64Barrier(oldvalue, newvalue, atomicptr))

#else // WIN_VERSION

// rbs: intrin.h is not compatible with C, only C++
// #include <intrin.h>
typedef volatile long t_int32_atomic;
typedef volatile __int64 t_int64_atomic;
typedef volatile unsigned long t_uint32_atomic;
typedef volatile unsigned __int64 t_uint64_atomic;

BEGIN_USING_C_LINKAGE

LONG  __cdecl _InterlockedIncrement(LONG volatile *Addend);
LONG  __cdecl _InterlockedDecrement(LONG volatile *Addend);
LONG  __cdecl _InterlockedCompareExchange(LONG volatile *Dest, LONG Exchange, LONG Comp);
__int64  __cdecl _InterlockedCompareExchange64(__int64 volatile *Dest, __int64 Exchange, __int64 Comp);
//   LONG  __cdecl _InterlockedExchange(LPLONG volatile Target, LONG Value);
//   LONG  __cdecl _InterlockedExchangeAdd(LPLONG volatile Addend, LONG Value);

END_USING_C_LINKAGE

#pragma intrinsic (_InterlockedIncrement)
#pragma intrinsic (_InterlockedDecrement)
#pragma intrinsic (_InterlockedCompareExchange)
#pragma intrinsic (_InterlockedCompareExchange64)

/**	Use this routine for incrementing a global counter using a threadsafe and multiprocessor safe method.
	@ingroup			threading
	@param	atomicptr	pointer to the (int) counter.
*/

// on windows I don't think there are non-barrier atomic increment / decrement functions
// perhaps could be done with inline assembly?

#define ATOMIC_INCREMENT(atomicptr)			  (_InterlockedIncrement(atomicptr))
#define ATOMIC_INCREMENT_BARRIER(atomicptr)   (_InterlockedIncrement(atomicptr))


/**	Use this routine for decrementing a global counter using a threadsafe and multiprocessor safe method.
	@ingroup	threading
	@param	atomicptr	pointer to the (int) counter.
*/
#define ATOMIC_DECREMENT(atomicptr)			  (_InterlockedDecrement(atomicptr))
#define ATOMIC_DECREMENT_BARRIER(atomicptr)   (_InterlockedDecrement(atomicptr))

/** atomic compare exchange does this:
    - if (*atomicptr == oldvalue) *atomicptr = newvalue;
	- all of above done atomically
	- return value is boolean: true if exchange was done
	@ingroup	threading
	@param	atomicptr		pointer to the atomic value
	@param	newvalue		value that will be assigned to *atomicptr if test succeeds
	@param	oldvalue		newvalue is only stored if original value equals oldvalue
*/
#define ATOMIC_COMPARE_SWAP32(oldvalue, newvalue, atomicptr) (_InterlockedCompareExchange(atomicptr, newvalue, oldvalue)==oldvalue)
#define ATOMIC_COMPARE_SWAP64(oldvalue, newvalue, atomicptr) (_InterlockedCompareExchange64(atomicptr, newvalue, oldvalue)==oldvalue)

#endif // WIN_VERSION

#endif // USE_GNUC_ATOMICS

#endif // #ifndef __EXT_ATOMIC_H__
