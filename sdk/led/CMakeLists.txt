set(LOCAL_DIR ${CMAKE_CURRENT_SOURCE_DIR})

get_filename_component(MODULE_NAME ${LOCAL_DIR} NAME)

aux_source_directory("${LOCAL_DIR}/src" LOCAL_SRC)

add_library(${MODULE_NAME} ${LOCAL_SRC})

target_include_directories(${MODULE_NAME}
    PUBLIC "${LOCAL_DIR}/include"
    )
