
#include <iostream>
#include <memory>
#include <cassert>

void test() {
    std::pointer_safety ps = std::get_pointer_safety(); 
    switch (ps) {
        case std::pointer_safety::relaxed:    break;
        case std::pointer_safety::preferred:  break;
        case std::pointer_safety::strict:      break;
        default:
            assert(0);
    } 
}

int main() {
    test();
}
