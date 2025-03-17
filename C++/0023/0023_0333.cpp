#include <new>

class A{
    public:
       int b[10];
};

int main()
{   
    A a;
    void* vp =  operator new[](sizeof(a.b), std::align_val_t(alignof(A)));
    operator delete[](vp, std::align_val_t(alignof(A)));
    return 0;
}
