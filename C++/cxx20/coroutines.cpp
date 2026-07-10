/*
FEATURE: Coroutines
SPEC: ISO/IEC 14882:2020 §9.5 [dcl.fct.def.coroutine], §17.13 [support.coroutine]
PURPOSE: Verify basic C++20 coroutine support including co_yield, co_return,
         coroutine_handle, suspension, resumption, and completion detection.
RUN: clang++ -std=c++20 -Wall -Wextra -Werror coroutines.cpp
*/

#include <coroutine>
#include <exception>
#include <cstdlib>  // for EXIT_SUCCESS / EXIT_FAILURE

// Simple generator coroutine that yields integer values.
struct Generator {
    struct promise_type {
        int current_value = 0;

        Generator get_return_object() {
            return Generator{
                std::coroutine_handle<promise_type>::from_promise(*this)
            };
        }

        std::suspend_always initial_suspend() noexcept {
            return {};
        }

        std::suspend_always final_suspend() noexcept {
            return {};
        }

        std::suspend_always yield_value(int value) noexcept {
            current_value = value;
            return {};
        }

        void return_void() noexcept {}

        void unhandled_exception() {
            std::terminate();
        }
    };

    using handle_type = std::coroutine_handle<promise_type>;

    explicit Generator(handle_type h) : coro(h) {}

    Generator(const Generator&) = delete;
    Generator& operator=(const Generator&) = delete;

    Generator(Generator&& other) noexcept : coro(other.coro) {
        other.coro = nullptr;
    }

    ~Generator() {
        if (coro) {
            coro.destroy();
        }
    }

    bool resume() {
        if (!coro || coro.done()) {
            return false;
        }

        coro.resume();
        return !coro.done();
    }

    int value() const {
        return coro.promise().current_value;
    }

    bool done() const {
        return !coro || coro.done();
    }

private:
    handle_type coro;
};

// Coroutine function under test.
Generator sequence() {
    co_yield 10;
    co_yield 20;
    co_yield 30;
    co_return;
}

int main() {
    Generator gen = sequence();

    // Must begin suspended.
    if (gen.done()) {
        return EXIT_FAILURE;
    }

    // First resume: expect 10.
    if (!gen.resume()) {
        return EXIT_FAILURE;
    }
    if (gen.value() != 10) {
        return EXIT_FAILURE;
    }

    // Second resume: expect 20.
    if (!gen.resume()) {
        return EXIT_FAILURE;
    }
    if (gen.value() != 20) {
        return EXIT_FAILURE;
    }

    // Third resume: expect 30.
    if (!gen.resume()) {
        return EXIT_FAILURE;
    }
    if (gen.value() != 30) {
        return EXIT_FAILURE;
    }

    // Final resume should complete coroutine.
    if (gen.resume()) {
        return EXIT_FAILURE;
    }

    if (!gen.done()) {
        return EXIT_FAILURE;
    }

    return EXIT_SUCCESS;
}
