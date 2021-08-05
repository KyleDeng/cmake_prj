# sdk/led/CMakeLists.txt

set(LOCAL_DIR ${CMAKE_CURRENT_SOURCE_DIR})

get_filename_component(MODULE_NAME ${LOCAL_DIR} NAME)

# aux_source_directory("${LOCAL_DIR}/src" LOCAL_SRC)
file(GLOB_RECURSE LOCAL_SRC ${LOCAL_DIR}/src/*.c)
message(local:${LOCAL_SRC})

set(LOCAL_INC "${LOCAL_DIR}/include")

list(APPEND SDK_FILES_SRC ${LOCAL_SRC})
list(APPEND SDK_FILES_INC ${LOCAL_INC})

set(SDK_FILES_SRC ${SDK_FILES_SRC} PARENT_SCOPE)
set(SDK_FILES_INC ${SDK_FILES_INC} PARENT_SCOPE)


# add_library(${MODULE_NAME} ${LOCAL_SRC})
#
# target_include_directories(${MODULE_NAME}
#     PUBLIC "${LOCAL_DIR}/include"
#     )
