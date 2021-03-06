
#ifndef _EXT_SYSMEM_H_
#define _EXT_SYSMEM_H_

#include "ext_prefix.h"
#include "max_types.h"

BEGIN_USING_C_LINKAGE

#ifndef sysmem_newptr
/**
	Allocate memory.
	This function is similar to NewPtr() or malloc(). It allocates a pointer of 
	a given number of bytes and returns a pointer to the memory allocated.
		
	@ingroup memory
	@param	size	The amount of memory to allocate.
	@return			A pointer to the allocated memory, or NULL if the allocation fails.
*/
t_ptr sysmem_newptr(t_ptr_size size);

#endif


/**
	Allocate memory and set it to zero.
	This function is similar to NewPtrClear() or calloc(). 	 
	It allocates a pointer of a given number of bytes, zeroing all memory, 
	and returns a pointer to the memory allocated.

	@ingroup memory
	@param	size	The amount of memory to allocate.
	@return			A pointer to the allocated memory, or NULL if the allocation fails.
*/
t_ptr sysmem_newptrclear(t_ptr_size size);


/**
	Resize an existing pointer. 
	This function is similar to realloc(). 
	It resizes an existing pointer and returns a new pointer to the resized memory.

	@ingroup memory
	@param	ptr		The pointer to the memory that will be resized.
	@param	newsize	The new size of the pointer in bytes.
	@return			A pointer to the resized memory, or NULL if the allocation fails.
*/
t_ptr sysmem_resizeptr(void *ptr, t_ptr_size newsize);


/**
	Resize an existing pointer and clear the newly allocated memory, if any. 

	@ingroup memory
	@param	ptr		The pointer to the memory that will be resized.
	@param	newsize	The new size of the pointer in bytes.
	@return			A pointer to the resized memory, or NULL if the allocation fails.
*/
t_ptr sysmem_resizeptrclear(void *ptr, t_ptr_size newsize);


/**
	Find the size of a pointer.  This function is similar to _msize().

	@ingroup memory
	@param	ptr		The pointer whose size will be queried
	@return			The number of bytes allocated to the pointer specified.
*/
t_ptr_size sysmem_ptrsize(void *ptr);


/**
	Free memory allocated with sysmem_newptr().
	This function is similar to DisposePtr or free. 
	It frees the memory that had been allocated to the given pointer.

	@ingroup memory
	@param	ptr		The pointer whose memory will be freed.
*/
void sysmem_freeptr(void *ptr);

#ifndef sysmem_copyptr
/**
	Copy memory the contents of one pointer to another pointer.
	This function is similar to BlockMove() or memcpy(). 
	It copies the contents of the memory from the source to the destination pointer.

	@ingroup memory
	@param	src		A pointer to the memory whose bytes will be copied.
	@param	dst		A pointer to the memory where the data will be copied.
	@param	bytes	The size in bytes of the data to be copied.
*/
void sysmem_copyptr(const void *src, void *dst, t_ptr_size bytes);

#endif


/**
	Allocate a handle (a pointer to a pointer).
	This function is similar to NewHandle(). 
	It allocates a handle of a given number of bytes and returns a #t_handle.

	@ingroup memory
	@param	size	The size of the handle in bytes that will be allocated. 
	@return			A new #t_handle.
*/
t_handle sysmem_newhandle(t_ptr_size size);


/**
	Allocate a handle (a pointer to a pointer) whose memory is set to zero.

	@ingroup memory
	@param	size	The size of the handle in bytes that will be allocated. 
	@return			A new #t_handle.
	@see			sysmem_newhandle()
*/
t_handle sysmem_newhandleclear(t_ptr_size size);


/**
	Resize an existing handle.
	This function is similar to SetHandleSize().
	It resizes an existing handle to the size specified.

	@ingroup memory
	@param	handle	The handle that will be resized. 
	@param	newsize	The new size of the handle in bytes. 
	@return			The number of bytes allocated to the specified handle.
*/
t_max_err sysmem_resizehandle(t_handle handle, t_ptr_size newsize);


/**
	Find the size of a handle. 
	This function is similar to GetHandleSize(). 

	@ingroup memory
	@param	handle	The handle whose size will be queried.
	@return			The number of bytes allocated to the specified handle.
*/
t_ptr_size sysmem_handlesize(t_handle handle);


/**
	Free memory allocated with sysmem_newhandle().

	@ingroup memory
	@param	handle	The handle whose memory will be freed.
*/
void sysmem_freehandle(t_handle handle);


/**
	Set the locked/unlocked state of a handle.
	This function is similar to HLock or HUnlock. 
	It sets the lock state of a handle, using a zero or non-zero number.
		
	@ingroup memory
	@param	handle	The handle that will be locked. 
	@param	lock	The new lock state of the handle. 
	@return			The previous lock state.
*/
int sysmem_lockhandle(t_handle handle, int lock);


/**
	Add memory to an existing handle and copy memory to the resized portion from a pointer.
	This function is similar to PtrAndHand(). It resizes an existing handle 
	by adding a given number of bytes to it and copies data from a pointer 
	into those bytes.

	@ingroup memory
	@param	p		The existing pointer whose data will be copied into the resized handle.
	@param	h		The handle which will be enlarged by the size of the pointer.
	@param	size	The size in bytes that will be added to the handle.
	@return			The number of bytes allocated to the specified handle.
*/
t_max_err sysmem_ptrandhand(void *p, t_handle h, t_ptr_size size);


/**	Add memory to an existing handle and copy memory to the resized portion from a pointer.
	Unlike sysmem_ptrandhand(), however, this copies the ptr before the previously exising handle data.

	@ingroup memory
	@param	p		The existing pointer whose data will be copied into the resized handle.
	@param	h		The handle which will be enlarged by the size of the pointer.
	@param	size	The size in bytes that will be added to the handle.
	@return			An error code.
*/
t_max_err sysmem_ptrbeforehand(void *p, t_handle h, t_ptr_size size);


/**	Add a null terminator to a handle.
	@ingroup memory
	@param	h		A handle to null terminate.
	@return			An error code.
*/
t_max_err sysmem_nullterminatehandle(t_handle h);


END_USING_C_LINKAGE

#endif // _EXT_SYSMEM_H_

