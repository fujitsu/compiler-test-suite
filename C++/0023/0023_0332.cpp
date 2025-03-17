#include <new>
#include <limits>

int main()
{   
    void * v1 =  operator new(std::numeric_limits<std::size_t>::max(),std::align_val_t(std::numeric_limits<int>::max()),std::nothrow);
    operator delete (v1,std::align_val_t(std::numeric_limits<int>::max()),std::nothrow);
    return 0;
}
