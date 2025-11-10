#include "public1/004.h"
#include "public1/005.h"


namespace case1
{
    
    template <class T = char>
    T type_param();

    
    template <bool flg = false>
    bool non_type_param() { return flg; }

    
    template <class T> class cls_test {};
    template <template <class T> class U = cls_test >
    U<int> tmpl_param1();

    
    template <template <class T = double> class U = cls_test >
    U<> tmpl_param2();
    
    
    template <class ...P, class T = long>
    T param_pack();

    void test()
    {
        static_assert((is_same<decltype(type_param<>()), char>::value == true), "not expected type");
        assert( non_type_param<>() ==  false );
        static_assert((is_same<decltype(tmpl_param1<>()), cls_test<int> >::value == true), "not expected type");
        static_assert((is_same<decltype(tmpl_param2<>()), cls_test<double> >::value == true), "not expected type");
        static_assert((is_same<decltype(param_pack<int, char>()), long >::value == true), "not expected type");
    }
}


namespace case2
{
    template <class X>
    class cls_test
    {
    
    public:
        
        template <class T = char>
        T type_param();

        
        template <bool flg = false>
        bool non_type_param() { return flg; }

        
        template <class T> class cls_nest {};
        template <template <class T> class U = cls_nest >
        U<int> tmpl_param1();

        
        template <template <class T = double> class U = cls_nest >
        U<> tmpl_param2();
        
        
        template <class ...P, class T = long>
        T param_pack();

    
    public:
        
        template <class T = char>
        static T s_type_param();

        
        template <bool flg = false>
        static bool s_non_type_param() { return flg; }

        
        
        template <template <class T> class U = cls_nest >
        static U<int> s_tmpl_param1();

        
        template <template <class T = double> class U = cls_nest >
        static U<> s_tmpl_param2();
        
        
        template <class ...P, class T = long>
        static T s_param_pack();
    };

    void test()
    {
        typedef cls_test<char> Test;

        
        Test obj;
        static_assert((is_same<decltype(obj.type_param<>()), char>::value == true), "not expected type");
        assert( obj.non_type_param<>() ==  false );
        static_assert((is_same<decltype(obj.tmpl_param1<>()), Test::cls_nest<int> >::value == true), "not expected type");
        static_assert((is_same<decltype(obj.tmpl_param2<>()), Test::cls_nest<double> >::value == true), "not expected type");
        static_assert((is_same<decltype(obj.param_pack<int, char>()), long >::value == true), "not expected type");

        
        static_assert((is_same<decltype(Test::s_type_param<>()), char>::value == true), "not expected type");
        assert( Test::s_non_type_param<>() ==  false );
        static_assert((is_same<decltype(Test::s_tmpl_param1<>()), Test::cls_nest<int> >::value == true), "not expected type");
        static_assert((is_same<decltype(Test::s_tmpl_param2<>()), Test::cls_nest<double> >::value == true), "not expected type");
        static_assert((is_same<decltype(Test::s_param_pack<int, char>()), long >::value == true), "not expected type");
    }
}

void test()
{ 
    case1::test();
    case2::test();
}

PASS_CASE_MAIN_FUNCTION
