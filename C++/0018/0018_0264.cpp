





#include <memory>
#include <cassert>

void do_nothing(int*) {}

int main()
{
    int* ptr1(new int);
    int* ptr2(new int);
    const std::shared_ptr<int> p1(ptr1);
    const std::shared_ptr<int> p2(ptr2);
    const std::shared_ptr<int> p3(ptr2, do_nothing);
    assert((p1 < p2) == (ptr1 < ptr2));
    assert(!(p2 < p3) && !(p3 < p2));
}
