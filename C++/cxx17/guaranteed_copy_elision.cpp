/*
 * This type explicitly deletes copy and move constructors.
 * Under C++17 guaranteed copy elision rules, the program must
 * still compile and run correctly when objects are initialized
 * directly from prvalues.
 */
#include <cstdlib>  // for EXIT_SUCCESS / EXIT_FAILURE

struct NoCopyNoMove {
    int value;

    explicit NoCopyNoMove(int v) : value(v) {}

    NoCopyNoMove(const NoCopyNoMove&) = delete;
    NoCopyNoMove(NoCopyNoMove&&) = delete;
};

/*
 * Returning a prvalue of type NoCopyNoMove.
 * In C++17, this must construct the result object directly
 * without invoking copy or move constructors.
 */
NoCopyNoMove make_object() {
    return NoCopyNoMove(42);
}

int main() {
    /*
     * Direct initialization from a prvalue.
     * Guaranteed copy elision ensures that no copy or move
     * constructor is required here.
     */
    NoCopyNoMove obj = make_object();

    /*
     * Runtime check to ensure the object was constructed
     * with the expected value.
     */
    if (obj.value != 42) {
        return EXIT_FAILURE; // Test failed
    }

    return EXIT_SUCCESS; // Test passed
}

