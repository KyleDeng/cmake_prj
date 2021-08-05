# sdk/CMakeLists.txt

set(SDK_DIR ${CMAKE_CURRENT_SOURCE_DIR})

set(SDK_FILES_SRC)
set(SDK_FILES_INC)

add_subdirectory(base)
add_subdirectory(led)

message(src:${SDK_FILES_SRC})
message(inc:${SDK_FILES_INC})
message(hal:${HAL_INC})

list(LENGTH SDK_FILES_SRC LEN_SRC)
list(LENGTH SDK_FILES_INC LEN_INC)
message(len_src:${LEN_SRC})
message(len_inc:${LEN_INC})

add_library(sdk ${SDK_FILES_SRC})

target_include_directories(sdk INTERFACE
    ${HAL_INC}
    ${SDK_FILES_INC}
    )
