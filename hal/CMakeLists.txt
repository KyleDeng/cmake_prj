set(HAL_DIR ${CMAKE_CURRENT_SOURCE_DIR})

# set(LIBHAR_SRC )

aux_source_directory("${HAL_DIR}/src" LIBHAR_SRC)

add_library(hal ${LIBHAR_SRC})

target_include_directories(hal
    PUBLIC "${HAL_DIR}/include"
    )
