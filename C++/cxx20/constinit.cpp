/*
FEATURE: C++20 constinit
SPEC: P1143R2, C++20 [dcl.constinit]
PURPOSE: Verify that constinit variables are statically initialized,
         can be used with thread_local storage, and remain mutable
         after initialization.
RUN: clang++ -std=c++20 -Wall -Wextra -Werror constinit.cpp
*/

#include <thread>
#include <cstdlib>  // for EXIT_SUCCESS / EXIT_FAILURE

/* Verify initialization of a global constinit variable. */
constinit int global_counter = 10;

/* Verify initialization of a thread-local constinit variable. */
thread_local constinit int tls_counter = 20;

/* Verify that a constinit variable can be modified at run time. */
bool test_global_modification() {
    global_counter += 5;
    return global_counter == 15;
}

/* Verify that a thread-local constinit variable can be modified. */
bool test_thread_local_modification() {
    tls_counter += 7;
    return tls_counter == 27;
}

/* Verify that a separate thread receives its own thread-local instance. */
bool test_thread_local_isolation() {
    bool result = false;

    std::thread worker([&result]() {
        result = (tls_counter == 20);

        tls_counter = 100;

        result = result && (tls_counter == 100);
    });

    worker.join();

    return result;
}

int main() {
    /* Verify initial value of the global constinit variable. */
    if (global_counter != 10) {
        return EXIT_FAILURE;
    }

    /* Verify initial value of the thread-local constinit variable. */
    if (tls_counter != 20) {
        return EXIT_FAILURE;
    }

    /* Verify run-time modification of the global variable. */
    if (!test_global_modification()) {
        return EXIT_FAILURE;
    }

    /* Verify run-time modification of the thread-local variable. */
    if (!test_thread_local_modification()) {
        return EXIT_FAILURE;
    }

    /* Restore the thread-local value for the next test. */
    tls_counter = 20;

    /* Verify thread-local storage isolation. */
    if (!test_thread_local_isolation()) {
        return EXIT_FAILURE;
    }

    /* Verify that the main thread's instance was not modified. */
    if (tls_counter != 20) {
        return EXIT_FAILURE;
    }

    return EXIT_SUCCESS;
}
