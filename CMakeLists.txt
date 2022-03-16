cmake_minimum_required(VERSION 3.16)
project(shared_buffer_c C)

set(CMAKE_C_STANDARD 99)

add_executable(consumer main_consumer.c consumer.c consumer.h shared_buffer.h)

add_executable(producer main_producer.c producer.c producer.h shared_buffer.h)