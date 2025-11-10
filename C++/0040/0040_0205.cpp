#include "001.h"

#if (!__clang__)


namespace case1
{
    void test()
    {
        std::nullptr_t np;
        
        assert(np <= np);
        assert(np >= np);
        assert(!(np < np));
        assert(!(np > np));

        assert(np <= nullptr);
        assert(np >= nullptr);
        assert(!(np < nullptr));
        assert(!(np > nullptr));

        assert(nullptr <= np);
        assert(nullptr >= np);
        assert(!(nullptr < np));
        assert(!(nullptr > np));

        assert(nullptr <= nullptr);
        assert(nullptr >= nullptr);
        assert(!(nullptr < nullptr));
        assert(!(nullptr > nullptr));

        assert(np <= 0);
        assert(np >= 0);
        assert(!(np < 0));
        assert(!(np > 0));

        assert(0 <= np);
        assert(0 >= np);
        assert(!(0 < np));
        assert(!(0 > np));

        assert(nullptr <= 0);
        assert(nullptr >= 0);
        assert(!(nullptr < 0));
        assert(!(nullptr > 0));

        assert(0 <= nullptr);
        assert(0 >= nullptr);
        assert(!(0 < nullptr));
        assert(!(0 > nullptr));
    }
}


namespace case2
{
    void test()
    {
        std::nullptr_t np;
        
        assert(np == np);
        assert(!(np != np));

        assert(np == nullptr);
        assert(!(np != nullptr));

        assert(nullptr == np);
        assert(!(nullptr != np));

        assert(nullptr == nullptr);
        assert(!(nullptr != nullptr));

        assert(np == 0);
        assert(!(np != 0));

        assert(0 == np);
        assert(!(0 != np));

        assert(nullptr == 0);
        assert(!(nullptr != 0));

        assert(0 == nullptr);
        assert(!(0 != nullptr));
    }
}

#endif


namespace case3
{
    void test()
    {
        std::nullptr_t np;

        assert(!(nullptr && nullptr));
        assert(!(nullptr && 1));
        assert(!(1 && nullptr));
        assert(!(np && np));
        assert(!(np && 1));
        assert(!(1 && np));

        assert(!(nullptr || nullptr));
        assert(!(nullptr || 0));
        assert( (nullptr || 1));
        assert(!(0 || nullptr));
        assert( (1 || nullptr));
        assert(!(np || np));
        assert(!(np || 0));
        assert( (np || 1));
        assert(!(0 || np));
        assert( (1 || np));
    }
}

void test()
{
    #if (!__clang__)
    case1::test();
    case2::test();
    #endif
    case3::test();
}

PASS_CASE_MAIN_FUNCTION
