#include "public3/004.h"
#include "public3/005.h"

namespace case1
{
    template <class ...Types> void a(Types ...args){}
    template <class ...Types> void b(Types ...args...){}
    template <class ...Types> void c(Types ...args, ...){}
    template <class ...Types> void d(Types ...args1, Types ...args2)
        { assert( sizeof...(args2) == 0 ); }
    template <class ...Types> void e(Types ...args1, Types ...args2...)
        { assert( sizeof...(args2) == 0 ); }
    template <class ...Types> __one f(Types ...args);
    template <class ...Types> __two f(Types ...args, int);
    template <class ...Types> __two f(int, Types ...args);

    void test()
    {
        a();
        a(1);
        a(3.14, "test");
        
        assert_true((is_same<decltype(b<>), decltype(c<>)>::value));
        assert_true((is_same<decltype(b<int>), decltype(c<int>)>::value));
        assert_true((is_same<decltype(b<bool, double>), decltype(c<bool, double>)>::value));
        
        
        
        

        
        
        
        
        assert_true((sizeof(f()) == sizeof(__one)));
        assert_true((sizeof(f(0)) == sizeof(__two)));
        assert_true((sizeof(f(false)) == sizeof(__one)));
        assert_true((sizeof(f(false, 0)) == sizeof(__one)));
    }
}

namespace case2
{
    template <class ...Types> void a(Types (*...pfs)()){}
    template <class ...Types> void b(Types (*...pfs)()...){}
    template <class ...Types> void c(Types (*...pfs)(), ...){}
    template <class ...Types> void d(Types (*...pfs1)(), Types (*...pfs2)())
        { assert( sizeof...(pfs2) == 0 ); }
    template <class ...Types> void e(Types (*...pfs1)(), Types (*...pfs2)()...)
        { assert( sizeof...(pfs2) == 0 ); }
    template <class ...Types> __one f(Types (*...pfs)());
    template <class ...Types> __two f(Types (*...pfs)(), int(*)());
    template <class ...Types> __two f(int(*)(), Types (*...pfs)());
    
    double t1() { return 0; }
    int    t2() { return 0; }

    void test()
    {
        a();
        a(t1);
        a(t1, t2);
        
        assert_true((is_same<decltype(b<>), decltype(c<>)>::value));
        assert_true((is_same<decltype(b<int>), decltype(c<int>)>::value));
        assert_true((is_same<decltype(b<bool, double>), decltype(c<bool, double>)>::value));
        
        
        
        

        
        
        
        
        assert_true((sizeof(f()) == sizeof(__one)));
        assert_true((sizeof(f(t1)) == sizeof(__one)));
        assert_true((sizeof(f(t1, t2)) == sizeof(__one)));
        assert_true((sizeof(f(t2, t1)) == sizeof(__two)));
    }
}

namespace case3
{
    template <class ...Types> void a(Types (&...arrs)[5]){}
    template <class ...Types> void b(Types (&...arrs)[5]...){}
    template <class ...Types> void c(Types (&...arrs)[5], ...){}
    template <class ...Types> void d(Types (&...arrs1)[5], Types (&...arrs2)[5])
        { assert( sizeof...(arrs2) == 0 ); }
    template <class ...Types> void e(Types (&...arrs1)[5], Types (&...arrs2)[5]...)
        { assert( sizeof...(arrs2) == 0 ); }
    template <class ...Types> __one f(Types (&...arrs)[5]);
    template <class ...Types> __two f(Types (&...arrs)[5], int(&)[5]);
    template <class ...Types> __two f(int(&)[5], Types (&...arrs)[5]);
    
    double arr1[5];
    int arr2[5];
    
    void test()
    {
        a();
        a(arr1);
        a(arr1, arr2);
        
        assert_true((is_same<decltype(b<>), decltype(c<>)>::value));
        assert_true((is_same<decltype(b<int>), decltype(c<int>)>::value));
        assert_true((is_same<decltype(b<bool, double>), decltype(c<bool, double>)>::value));
        
        
        
        
  
        
        
        
        
        assert_true((sizeof(f()) == sizeof(__one)));
        assert_true((sizeof(f(arr1)) == sizeof(__one)));
        assert_true((sizeof(f(arr1, arr2)) == sizeof(__one)));
        assert_true((sizeof(f(arr2, arr1)) == sizeof(__two)));
    }
}

namespace case4
{
    class A;
    class B;
    template <class ...Types> void a(int (Types::*...pmfs)()){}
    template <class ...Types> void b(int (Types::*...pmfs)()...){}
    template <class ...Types> void c(int (Types::*...pmfs)(), ...){}
    template <class ...Types> void d(int (Types::*...pmfs1)(), int (Types::*...pmfs2)())
        { assert( sizeof...(pmfs2) == 0 ); }
    template <class ...Types> void e(int (Types::*...pmfs1)(), int (Types::*...pmfs2)()...)
        { assert( sizeof...(pmfs2) == 0 ); }
    template <class ...Types> __one f(int (Types::*...pmfs)());
    template <class ...Types> __two f(int (Types::*...pmfs)(), int(A::*)());
    template <class ...Types> __two f(int(A::*)(), int (Types::*...pmfs)());
    template <class ...Types> __two f(int(B::*)(), int (Types::*...pmfs)());

    struct A { int t1() { return 0; } };
    struct B { int t2() { return 0; } };

    void test()
    {
        a();
        a(&A::t1);
        a(&A::t1,&B:: t2);
      
        assert_true((is_same<decltype(b<>), decltype(c<>)>::value));
        assert_true((is_same<decltype(b<A>), decltype(c<A>)>::value));
        assert_true((is_same<decltype(b<A,B>), decltype(c<A,B>)>::value));
        
        
        
        

        
        
        
        
        assert_true((sizeof(f()) == sizeof(__one)));
        assert_true((sizeof(f(&A::t1)) == sizeof(__two)));
        assert_true((sizeof(f(&A::t1, &B::t2)) == sizeof(__two)));
        assert_true((sizeof(f(&B::t2, &A::t1)) == sizeof(__two)));    
    }
}

namespace case5
{
    struct A;

    template <class ...Types> void a(int Types::*...pmds){}
    template <class ...Types> void b(int Types::*...pmds...){}
    template <class ...Types> void c(int Types::*...pmds, ...){}
    template <class ...Types> void d(int Types::*...pmds1, int Types::*...pmds2)
        { assert( sizeof...(pmds2) == 0 ); }
    template <class ...Types> void e(int Types::*...pmds1, int Types::*...pmds2...)
        { assert( sizeof...(pmds2) == 0 ); }
    template <class ...Types> __one f(int Types::*...pmds);
    template <class ...Types> __two f(int Types::*...pmds, int A::*);
    template <class ...Types> __two f(int A::*, int Types::*...pmds);

    struct A { int data; };
    struct B { int data; };

    void test()
    {
       a();
       a(&A::data);
       a(&A::data,&B:: data);
     
       assert_true((is_same<decltype(b<>), decltype(c<>)>::value));
       assert_true((is_same<decltype(b<A>), decltype(c<A>)>::value));
       assert_true((is_same<decltype(b<A,B>), decltype(c<A,B>)>::value));
       
       
       
       

       
       
       
       
       assert_true((sizeof(f()) == sizeof(__one)));
       assert_true((sizeof(f(&A::data)) == sizeof(__two)));
       assert_true((sizeof(f(&B::data, &A::data)) == sizeof(__one)));
       assert_true((sizeof(f(&A::data, &B::data)) == sizeof(__two)));         
    }
}

namespace case6
{
    template <class ...Types> void a(Types ...){}
    template <class ...Types> void b(Types ......){}
    template <class ...Types> void c(Types ..., ...){}
    template <class ...Types> void d(Types ..., Types ...){}
    template <class ...Types> void e(Types ..., Types ......){}
    
    void test()
    {
        a();
        a(1);
        a(1, 2);
        
        assert_true((is_same<decltype(b<>), decltype(c<>)>::value));
        assert_true((is_same<decltype(b<int>), decltype(c<int>)>::value));
        assert_true((is_same<decltype(b<bool, double>), decltype(c<bool, double>)>::value));
        
        
        
        

        
        
        
    }
}


namespace case7
{

    template <class ...Types> void b(int Types::*......){}
    template <class ...Types> void c(int Types::*..., ...){}

    template <class ...Types> void e(int Types::*..., int Types::*......){}

    struct A { int data; };
    struct B { int data; };

    void test()
    {
        b();
        b(&A::data);
        b(&A::data,&B::data);
        
        assert_true((is_same<decltype(b<>), decltype(c<>)>::value));
        assert_true((is_same<decltype(b<A>), decltype(c<A>)>::value));
        assert_true((is_same<decltype(b<A,B>), decltype(c<A,B>)>::value));
        
        
        
        
        
        
        
        
    }  
}

void test()
{
    case1::test();
    case2::test();
    case3::test();
    case4::test();
    case5::test();
    case6::test();
    case7::test();
}

PASS_CASE_MAIN_FUNCTION
