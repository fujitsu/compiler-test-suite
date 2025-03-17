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

void* operator new(std::size_t sz, std::align_val_t al)
{
    assert(static_cast<std::size_t>(al) == OverAligned);
    ++A_constructed;
    return ::operator new(sz,al);
}

void operator delete(void* ptr, std::align_val_t al) noexcept
{
    assert(static_cast<std::size_t>(al) == OverAligned);
    --A_constructed;
    return ::operator delete(ptr);
}

int main()
{
    A* p1 = new A;
    assert(p1);
    assert(A_constructed == 1);
    delete p1;
    assert(!A_constructed); 
}
