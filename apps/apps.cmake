set(APPS_DIR ${CMAKE_CURRENT_LIST_DIR})

set(APP_NAME "app_huatuo")
set(APP_VERSION "1.1.0")

include(${APPS_DIR}/${APP_NAME}/app.cmake)

add_executable(${APP_NAME} ${APP_SRC})
target_include_directories(${APP_NAME}
    PUBLIC ${APP_INC}
    )
target_link_libraries(${APP_NAME} PUBLIC
    sdk
    hal
    )

