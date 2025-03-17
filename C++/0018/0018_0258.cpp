





#include <memory>
#include <cassert>

int main()
{
    int* p = new int[3];
    std::unique_ptr<int[]> s(p);
    assert(s.get() == p);
    static_assert(noexcept(s.get()),"");
}
