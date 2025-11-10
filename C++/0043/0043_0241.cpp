#include <iostream>
#include <memory>
#include <cstdint>

void test() {
    int * p = new int (1);    

    std::declare_reachable(p);     

    p = (int*)((std::uintptr_t)p ^ UINTPTR_MAX);   
    
    p = std::undeclare_reachable((int*)((std::uintptr_t)p ^ UINTPTR_MAX));  

    int deref = *p ;    
    delete p;
}

int main() {
    test();
}
