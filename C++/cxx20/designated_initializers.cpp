/*
FEATURE: C++20 Designated initializers
SPEC: ISO/IEC 14882:2020 (C++20) §11.6.1 [dcl.init.aggr]
PURPOSE: Verify designated initializers with mixed member types,
         including aggregates, arrays, and fundamental types.
RUN: clang++ -std=c++20 -Wall -Wextra designated_initializers.cpp
*/

#include <cstring>
#include <cstdlib>  // for EXIT_SUCCESS / EXIT_FAILURE

struct Inner {
    int x;
    double y;
};

struct Outer {
    int id;
    bool enabled;
    double ratio;
    int values[3];
    Inner inner;
};

struct preinit {
    char *strings = "abc";
    int pre1 = 100;
    short int no_init1;
    long int pre2 = 345L;
    int no_init2;
    long long pre3 = 678LL;
};

int main()
{
    Outer o = {
        .id = 42,
        .enabled = true,
        .values = { 1, 2, 3 },
        .inner = {
            .y = 3.5,
            .x = 7
        }
        // ratio is intentionally omitted
    };

    preinit p = {
	.strings = "def",
        .pre3 = 999LL
    };
    p.pre1 += 200;
    p.pre2 -= 45L;

    if (o.id != 42) {
        return EXIT_FAILURE;
    }
    if (o.enabled != true) {
        return EXIT_FAILURE;
    }
    if (o.ratio != 0.0) {
        return EXIT_FAILURE;
    }

    if (o.values[0] != 1 || o.values[1] != 2 || o.values[2] != 3) {
        return EXIT_FAILURE;
    }

    if (o.inner.x != 7 || o.inner.y != 3.5) {
        return EXIT_FAILURE;
    }

    if (strcmp(p.strings, "def")) {
        return EXIT_FAILURE;
    }

    if (p.pre1 != 300) {
        return EXIT_FAILURE;
    }

    if (p.pre2 != 300L) {
        return EXIT_FAILURE;
    }

    if (p.pre3 != 999LL) {
        return EXIT_FAILURE;
    }

    return EXIT_SUCCESS;
}

