# sdk/base/CMakeLists.txt

set(LOCAL_DIR ${CMAKE_CURRENT_SOURCE_DIR})

get_filename_component(MODULE_NAME ${LOCAL_DIR} NAME)

set(LOCAL_INC "${LOCAL_DIR}/include")

list(APPEND SDK_FILES_INC ${LOCAL_INC})

set(SDK_FILES_INC ${SDK_FILES_INC} PARENT_SCOPE)

