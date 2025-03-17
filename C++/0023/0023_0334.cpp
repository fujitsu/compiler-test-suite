#include <new>

class A{
    public:
       int b[10];
};

int main()
{  
    A a;
    void * v = operator new[](sizeof(a.b), std::align_val_t(alignof(A)),std::nothrow) ;
    operator delete[](v, std::align_val_t(alignof(A)),std::nothrow);
    return 0;
}
