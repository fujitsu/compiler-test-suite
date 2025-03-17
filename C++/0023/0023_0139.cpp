#include <cassert>
#include <type_traits>

struct S
{
    void (*p)(){};
    void (*q)(){};
    void (*w)() noexcept{};
    void (*e)() noexcept{};
    
    const void (*p1)(){};
    const void (*q1)(){};
    const void (*w1)() noexcept{};
    const void (*e1)() noexcept{};
    
    volatile void (*p2)(){};
    volatile void (*q2)(){};
    volatile void (*w2)() noexcept{};
    volatile void (*e2)() noexcept{};
    
    void f1()
    {
        q = p;   
        w = e;
        assert(true == (std::is_same<decltype(p), decltype(q)>::value));
        assert(true == (std::is_same<decltype(w), decltype(e)>::value));
    }
    void f2()
    {
        q1 = p1;
        w1 = e1;
        assert(true == (std::is_same<decltype(p1), decltype(q1)>::value));
        assert(true == (std::is_same<decltype(w1), decltype(e1)>::value));
    }
    void f3()
    {
        q2 = p2;
        w2 = e2;
        assert(true == (std::is_same<decltype(p2), decltype(q2)>::value));
        assert(true == (std::is_same<decltype(w2), decltype(e2)>::value));
    }
    void f4()
    {
        assert(false == (std::is_same<decltype(p), decltype(w)>::value));
        assert(false == (std::is_same<decltype(p1), decltype(w1)>::value));
        assert(false == (std::is_same<decltype(p2), decltype(w2)>::value));
        assert(false == (std::is_same<decltype(p), decltype(p1)>::value));
        assert(false == (std::is_same<decltype(p), decltype(p2)>::value));
    }
    void test()
    {
        f1();
        f2();
        f3();
        f4();
    }
};

struct S1
{
    int (*p)(){};
    int (*q)(){};
    int (*w)() noexcept{};
    int (*e)() noexcept{};
    
    const int (*p1)(){};
    const int (*q1)(){};
    const int (*w1)() noexcept{};
    const int (*e1)() noexcept{};
    
    volatile int (*p2)(){};
    volatile int (*q2)(){};
    volatile int (*w2)() noexcept{};
    volatile int (*e2)() noexcept{};

    void f1()
    {
        q = p;   
        w = e;
        assert(true == (std::is_same<decltype(p), decltype(q)>::value));
        assert(true == (std::is_same<decltype(w), decltype(e)>::value));
    }
    void f2()
    {
        q1 = p1;
        w1 = e1;
        assert(true == (std::is_same<decltype(p1), decltype(q1)>::value));
        assert(true == (std::is_same<decltype(w1), decltype(e1)>::value));
    }
    void f3()
    {
        q2 = p2;
        w2 = e2;
        assert(true == (std::is_same<decltype(p2), decltype(q2)>::value));
        assert(true == (std::is_same<decltype(w2), decltype(e2)>::value));
    }
    void f4()
    {
        
        assert(false == (std::is_same<decltype(p), decltype(w)>::value));
        assert(false == (std::is_same<decltype(p1), decltype(w1)>::value));
        assert(false == (std::is_same<decltype(p2), decltype(w2)>::value));
        assert(false == (std::is_same<decltype(p), decltype(p1)>::value));
        assert(false == (std::is_same<decltype(p), decltype(p2)>::value));
    }
    void test()
    {
        f1();
        f2();
        f3();
        f4();
    }
};

int main()
{
    S s;
    s.test();

    S1 s1;
    s1.test();
}
