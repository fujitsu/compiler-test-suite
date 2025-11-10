#include "public2/004.h"
#include "000.h"

struct A
{
    int x;
    char y, z;
};

void test()
{
    int arr1[] {0, 1, 2};
    int arr2[3]{};
    const int (&arr3)[]{0, 1, 2};
    const int (&arr4)[3]{};

    for(int i = 0; i < 3; i++)
        assert(arr1[i] == i);
    for(int i = 0; i < 3; i++)
        assert(arr2[i] == 0);
    for(int i = 0; i < 3; i++)
        assert(arr3[i] == i);
    for(int i = 0; i < 3; i++)
        assert(arr4[i] == 0);

    A a1 {1, '2', 0x33};
    A a2 {};
    const A& a3 {1, '2', 0x33};
    const A& a4 {};

    assert(a1.x == 1  );
    assert(a1.y == '2');
    assert(a1.z == '3');
    assert(a2.x == 0  );
    assert(a2.y == 0  );
    assert(a2.z == 0  );
    assert(a3.x == 1  );
    assert(a3.y == '2');
    assert(a3.z == '3');
    assert(a4.x == 0  );
    assert(a4.y == 0  );
    assert(a4.z == 0  );
}

PASS_CASE_MAIN_FUNCTION
