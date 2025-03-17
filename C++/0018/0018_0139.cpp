




#include <exception>
#include <cassert>

int main() {
    std::exception_ptr p;
    assert(p == nullptr);

    std::exception_ptr p2;
    assert(p2 == nullptr);

    assert(p == p2);
}
