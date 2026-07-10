/*
FEATURE: Differing begin and end types in range-based for
SPEC: example working draft note (e.g. N4659 §6.5.4) - begin and end may have differing types if comparable
PURPOSE: Verify that a range with an iterator type returned by begin() and a distinct sentinel type returned by end() can be used in a range-based for loop under C++17.
RUN: clang++ -std=c++17 -Wall -Wextra -Werror range_for_sentinel.cpp
*/

// A minimal test demonstrating an iterator + sentinel pair with different types
// used in a range-based for loop. The program returns 0 on success, non-zero on
// failure. Comments are in English as requested.

#include <vector>
#include <iostream>
#include <cstdlib>  // for EXIT_SUCCESS / EXIT_FAILURE

// Forward declaration of sentinel
//struct EndSentinel;

// Iterator type
struct MyIterator {
    int current;

    int operator*() const { return current; }

    MyIterator& operator++() {
        ++current;
        return *this;
    }
};

// Sentinel type (different type from MyIterator)
struct EndSentinel {
    int limit;
};

// Comparison between iterator and sentinel (iterator != sentinel)
bool operator!=(const MyIterator& it, const EndSentinel& s) {
    return it.current != s.limit;
}

// Also provide comparison in the other order for completeness (not required by range-for but harmless)
bool operator!=(const EndSentinel& s, const MyIterator& it) {
    return it != s;
}

// Range object that returns MyIterator from begin() and EndSentinel from end()
struct MyRange {
    int start;
    int finish; // exclusive

    MyIterator begin() const { return MyIterator{start}; }
    EndSentinel end() const { return EndSentinel{finish}; }
};

int main() {
    // Create a range generating 0,1,2,3,4
    MyRange r{0, 5};

    std::vector<int> collected;
    for (int v : r) {
        collected.push_back(v);
    }

    // Expected sequence
    std::vector<int> expect{0,1,2,3,4};

    if (collected == expect) {
        // success
        return EXIT_SUCCESS;
    } else {
        // print diagnostic for human debugging and return failure
        std::cerr << "Collected sequence mismatch:\n";
        std::cerr << "Got: ";
        for (int x : collected) std::cerr << x << ' ';
        std::cerr << "\nExpected: ";
        for (int x : expect) std::cerr << x << ' ';
        std::cerr << '\n';
        return EXIT_FAILURE;
    }
}

