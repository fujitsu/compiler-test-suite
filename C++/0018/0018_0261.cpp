





#include <memory>
#include <cassert>

int main()
{
    std::unique_ptr<int[]> p(new int[3]);
    int* i = p.get();
    int* j = p.release();
    static_assert(noexcept(p.release()),"");
    assert(p.get() == 0);
    assert(i == j);
    delete [] j;
}
