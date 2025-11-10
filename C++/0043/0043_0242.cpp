#include <iostream>
#include <memory>

void test() {
    int * bar = new int(2);
    std::declare_no_pointers (reinterpret_cast<char*>(&bar),sizeof(int*));  

    int deref = *bar ;  

    std::undeclare_no_pointers (reinterpret_cast<char*>(&bar),sizeof(int*)); 

    delete bar;
}

int main() {
    test();
}
