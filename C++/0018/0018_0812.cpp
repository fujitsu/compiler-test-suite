
#include <utility>
#include <cassert>
#include <memory>

void test()
{
    int i[3] = {1, 2, 3};
    int j[3] = {4, 5, 6};
    std::swap(i, j);
    assert(i[0] == 4);
    assert(i[1] == 5);
    assert(i[2] == 6);
    assert(j[0] == 1);
    assert(j[1] == 2);
    assert(j[2] == 3);
}

void test1()
{
    std::unique_ptr<int> arr1[3];
    for (int i = 0; i < 3; ++i)
        arr1[i].reset(new int(i+1));
        
    std::unique_ptr<int> arr2[3];
    for (int i = 0; i < 3; ++i)
        arr2[i].reset(new int(i+4));
    std::swap(arr1, arr2);
    assert(*arr1[0] == 4);
    assert(*arr1[1] == 5);
    assert(*arr1[2] == 6);
    assert(*arr2[0] == 1);
    assert(*arr2[1] == 2);
    assert(*arr2[2] == 3);
}

int main()
{
    test();
    test1();
}
