#include "public2/004.h"

namespace case1
{
    class X
    {
    public:
        int data;

        static void test()
        {
            int x = sizeof data;
            int y = sizeof (data + 2);
            int z = sizeof (X::data + 2);
            
            int arr1[sizeof data];
            int arr2[sizeof(data + 2)];
            int arr3[sizeof X::data];
            int arr4[sizeof(X::data + 2)];
        }
        
        class inner
        {
        public:
            int x = sizeof(data);
            int y = sizeof(data + 2);
            int z = sizeof(X::data + 2);
        };
    };

    int x = sizeof X::data;
    int y = sizeof (X::data + 2);

    class Y : X
    {
        int x = sizeof data;
        int y = sizeof (X::data + 2);
    };

    void test()
    {
        int x = sizeof X::data;
        int y = sizeof (X::data + 2);
    }
}

namespace case2
{
    template <class T>
    class X
    {
    public:
        T data;

        static void test()
        {
            int x = sizeof data;
            int y = sizeof (data + 2);
            int z = sizeof (X::data + 2);
            
            int arr1[sizeof data];
            int arr2[sizeof(data + 2)];
            int arr3[sizeof X::data];
            int arr4[sizeof(X::data + 2)];
        }
        
        class inner
        {
        public:
            int x = sizeof(data);
            int y = sizeof(data + 2);
            int z = sizeof(X<int>::data + 2);
        };
    };

    int x = sizeof X<int>::data;
    int y = sizeof (X<int>::data + 2);

    class Y : X<int>
    {
        int x = sizeof data;
        int y = sizeof (X<int>::data + 2);
    };

    void test()
    {
        int x = sizeof X<int>::data;
        int y = sizeof (X<int>::data + 2);
    }
}

void test()
{
    case1::test();
    case2::test();
}

PASS_CASE_MAIN_FUNCTION
