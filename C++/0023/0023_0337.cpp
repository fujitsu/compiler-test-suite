#include <new>

int main()
{   
    void * v1 = nullptr;
    operator delete(v1,std::align_val_t(alignof(int)));
    void * v2 = nullptr;
    operator delete[](v2,std::align_val_t(alignof(double)));
    return 0;
}
