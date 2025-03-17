#include <new>
#include <cassert>
#include <cstddef>

constexpr auto OverAligned = alignof(std::max_align_t) * 2;
int A_constructed = 0;
struct A
{
    A() {++A_constructed;}
    ~A() {--A_constructed;}
};

void* operator new[](std::size_t sz, std::align_val_t al,const std::nothrow_t&)noexcept
{
    assert(static_cast<std::size_t>(al) == OverAligned);
    ++A_constructed;
    return ::operator new[](sz);
}

void operator delete[](void* ptr,std::align_val_t al,const std::nothrow_t&)noexcept
{
    assert(static_cast<std::size_t>(al) == OverAligned);
    --A_constructed;
    return ::operator delete[](ptr);
}

int main()
{
    A* p1 = new(std::nothrow) A[3];
    assert(p1);
    assert(A_constructed == 3);
    delete[] p1;
    assert(!A_constructed);   
}
