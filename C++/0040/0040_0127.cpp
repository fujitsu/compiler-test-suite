#include "public1/004.h"
#include "public1/005.h"

namespace case1
{
    struct cls_test
    {
        static const int data = 1;
        struct cls_nest
        {
            static const int data = 2;
        };
    };

    void test()
    {
        cls_test ct;
        cls_test::cls_nest ctn1;
        decltype(ct)::cls_nest ctn2;
        assert(decltype(ct)::data == 1);
        assert(decltype(ct)::cls_nest::data == 2);
        assert(decltype(ctn1)::data == 2);
        assert(decltype(ctn2)::data == 2);
    }
}


namespace case2
{
    template <class OT>
    struct cls_test
    {
        static const int data = 1;
        template <class IT>
        struct cls_nest
        {
            static const int data = 2;
        };
    };
    
    template <class OT>
        const int cls_test<OT>::data;
    template <class OT>
        template <class IT>
            const int cls_test<OT>::cls_nest<IT>::data;

    void test()
    {
        cls_test<int> cti;
        typename cls_test<int>::cls_nest<char> ctinc1;
        typename decltype(cti)::cls_nest<char> ctinc2;
        assert(decltype(cti)::data == 1);
        assert(decltype(cti)::cls_nest<char>::data == 2);
        assert(decltype(ctinc1)::data == 2);
        assert(decltype(ctinc2)::data == 2);
    }
}

void test()
{
    case1::test();
    case2::test();
    
}

PASS_CASE_MAIN_FUNCTION
