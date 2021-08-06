# hal/CMakeLists.txt

set(HAL_DIR ${CMAKE_CURRENT_SOURCE_DIR})

aux_source_directory("${HAL_DIR}/src" LIBHAL_SRC)

add_library(hal ${LIBHAL_SRC})

set(HAL_INC "${HAL_DIR}/include")
set(HAL_INC ${HAL_INC} PARENT_SCOPE)

target_include_directories(hal
    PUBLIC ${HAL_INC}
    )

# file(GLOB_RECURSE LIBHAL_INC_FILES ${HAL_DIR}/include/*.h)
# set_target_properties(hal PROPERTIES PUBLIC_HEADER ${LIBHAL_INC_FILES})
install(DIRECTORY "${HAL_DIR}/include" # source directory
        DESTINATION "hal/include" # target directory
        FILES_MATCHING # install only matched files
        PATTERN "*.h" # select header files
)
install(TARGETS hal
        LIBRARY DESTINATION hal/lib  # 动态库安装路径
        ARCHIVE DESTINATION hal/lib  # 静态库安装路径
        RUNTIME DESTINATION hal/bin  # 可执行文件安装路径
        PUBLIC_HEADER DESTINATION hal/include  # 头文件安装路径
        )
