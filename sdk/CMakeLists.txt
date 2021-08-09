# sdk/CMakeLists.txt

set(SDK_DIR ${CMAKE_CURRENT_SOURCE_DIR})

set(SDK_FILES_SRC)
set(SDK_FILES_INC)

add_subdirectory(base)
add_subdirectory(led)
add_subdirectory(key)

# message(src:${SDK_FILES_SRC})
# message(inc:${SDK_FILES_INC})

# list(LENGTH SDK_FILES_SRC LEN_SRC)
# list(LENGTH SDK_FILES_INC LEN_INC)
# message(len_src:${LEN_SRC})
# message(len_inc:${LEN_INC})
set(SDK_INC ${SDK_FILES_INC} PARENT_SCOPE)

add_library(sdk ${SDK_FILES_SRC})

target_include_directories(sdk
    PUBLIC ${SDK_FILES_INC}
    )


install(DIRECTORY ${SDK_FILES_INC} # source directory
        DESTINATION "sdk/include" # target directory
        FILES_MATCHING # install only matched files
        PATTERN "*.h" # select header files
)
install(TARGETS sdk
        LIBRARY DESTINATION sdk/lib  # 动态库安装路径
        ARCHIVE DESTINATION sdk/lib  # 静态库安装路径
        RUNTIME DESTINATION sdk/bin  # 可执行文件安装路径
        PUBLIC_HEADER DESTINATION sdk/include  # 头文件安装路径
        )

