




#include <cstddef>

struct A {
    int x;
};

int main() {
    static_assert(noexcept(offsetof(A, x)), "");
}
