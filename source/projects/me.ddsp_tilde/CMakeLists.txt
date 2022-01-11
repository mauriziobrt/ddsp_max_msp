cmake_minimum_required(VERSION 3.0)

find_package(Torch REQUIRED)
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} ${TORCH_CXX_FLAGS}")

set(C74_MIN_API_DIR ${CMAKE_CURRENT_SOURCE_DIR}/../../min-api)

include(${C74_MIN_API_DIR}/script/min-pretarget.cmake)

include_directories( 
	"${C74_INCLUDES}"
)

include_directories(
	SYSTEM ${TORCH_INCLUDE_DIRS}
)

set( SOURCE_FILES
	${PROJECT_NAME}.cpp
)


add_library( 
	${PROJECT_NAME} 
	MODULE
	${SOURCE_FILES}
)

target_link_libraries(${PROJECT_NAME} PUBLIC "${TORCH_LIBRARIES}")

include(${C74_MIN_API_DIR}/script/min-posttarget.cmake)
include(${C74_MIN_API_DIR}/test/min-object-unittest.cmake)

set_property(TARGET ${PROJECT_NAME} PROPERTY CXX_STANDARD 17)

