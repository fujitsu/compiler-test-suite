#include "public1/004.h"

namespace case1
{
    class cls_test
    {
    public:
        static int count;
        ~cls_test() { count++; }
        class cls_nest
        {
        public:
            static int count;
            ~cls_nest() { count++; }
        };
    };

    int cls_test::count = 0;
    int cls_test::cls_nest::count = 0;

    void test()
    {
        {
            cls_test ct;
            assert(cls_test::count == 0);
            ct.~decltype(ct)();
            assert(cls_test::count == 1);
        }
        assert(cls_test::count == 2);
        
        {
            cls_test::cls_nest ctn;
            assert(cls_test::cls_nest::count == 0);
            ctn.~decltype(ctn)();
            assert(cls_test::cls_nest::count == 1);
        }
        assert(cls_test::cls_nest::count == 2);
    }
}

namespace case2
{
    class base
    {
    public:
        static int count;
        virtual ~base(){ count++; }
    };

    class derived : public base 
    {
    public:
        static int count;
        ~derived(){ count++; }
    };

    int base::count = 0;
    int derived::count = 0;

    void test()
    {
        {
            derived d;
            base *pb = &d;
            assert(base::count == 0);
            assert(derived::count == 0);
            pb->~decltype(base())();
            assert(base::count == 1);
            assert(derived::count == 1);
        }
        assert(base::count == 2);
        assert(derived::count == 2);
    }
}

void test()
{
    case1::test();
    case2::test();
}

PASS_CASE_MAIN_FUNCTION
