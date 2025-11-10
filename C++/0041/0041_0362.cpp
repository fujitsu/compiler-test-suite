#include "public3/004.h"

struct LiteralClass {};
struct NonLiteralClass { virtual ~NonLiteralClass(){} } non_literal;



constexpr int scalar = 1;
constexpr LiteralClass literal = LiteralClass();
constexpr NonLiteralClass& non_literal_refer = non_literal;
constexpr int arr1[4] = {1, 2, 3, 4};
constexpr LiteralClass arr2[4] = {{},{},{},{}};
constexpr class LiteralClass2 {} literal2 {};
class LiteralClass3 {} constexpr literal3 = {};

namespace ns_test
{
    constexpr int scalar = 1;
    constexpr LiteralClass literal = LiteralClass();
    constexpr NonLiteralClass& non_literal_refer = non_literal;
    constexpr int arr1[4] = {1, 2, 3, 4};
    constexpr LiteralClass arr2[4] = {{},{},{},{}};
    constexpr class LiteralClass2 {} literal2 {};
    class LiteralClass3 {} constexpr literal3 = {};
}

void test1()
{
    constexpr int scalar = 1;
    constexpr LiteralClass literal = LiteralClass();
    constexpr NonLiteralClass& non_literal_refer = non_literal;
    constexpr int arr1[4] = {1, 2, 3, 4};
    constexpr LiteralClass arr2[4] = {{},{},{},{}};
    constexpr class LiteralClass2 {} literal2 {};
    class LiteralClass3 {} constexpr literal3 = {};
}




constexpr int NormalFun1(int);
constexpr LiteralClass NormalFun2(LiteralClass);
constexpr NonLiteralClass& NormalFun3(NonLiteralClass&);
constexpr const int (&NormalFun4())[4];
constexpr const LiteralClass (&NormalFun5())[4];

constexpr int NormalFun1(int) { return 0; }
constexpr LiteralClass NormalFun2(LiteralClass) { return LiteralClass(); }
constexpr NonLiteralClass& NormalFun3(NonLiteralClass&) { return non_literal; }
constexpr const int (&NormalFun4())[4] { return arr1; }
constexpr const LiteralClass (&NormalFun5())[4] { return arr2; }

class MemFunTest
{
public:
    constexpr int MemFun1(int);
    constexpr LiteralClass MemFun2(LiteralClass);
    constexpr NonLiteralClass& MemFun3(NonLiteralClass&);
    constexpr const int (&MemFun4())[4];
    constexpr const LiteralClass (&MemFun5())[4];
};

constexpr int MemFunTest::MemFun1(int) { return 0; }
constexpr LiteralClass MemFunTest::MemFun2(LiteralClass) { return LiteralClass(); }
constexpr NonLiteralClass& MemFunTest::MemFun3(NonLiteralClass&) { return non_literal; }
constexpr const int (&MemFunTest::MemFun4())[4] { return arr1; }
constexpr const LiteralClass (&MemFunTest::MemFun5())[4] { return arr2; }

void test2() {}



template <class T>
constexpr T TmplFun(T t) { return t; }

class MemFunTmplTest
{
public:
    template <class T>
    constexpr T TmplFun1(T t) { return t; }
    template <class T>
    constexpr T TmplFun2(T);
};
template <class T>
constexpr T MemFunTmplTest::TmplFun2(T t) { return t; }

void test3()
{
    constexpr int x1              = TmplFun<int>(1);
    constexpr LiteralClass y1     = TmplFun<LiteralClass>(literal);
    

    MemFunTmplTest mftt;
    constexpr int x2              = mftt.TmplFun1<int>(1);
    constexpr LiteralClass y2     = mftt.TmplFun1<LiteralClass>(literal);
    
    constexpr int x3              = mftt.TmplFun2<int>(1);
    constexpr LiteralClass y3     = mftt.TmplFun2<LiteralClass>(literal);
    
}




template <class T>
class StaticDataMemTest
{
public:
    static constexpr T data1 = {};
    static constexpr NonLiteralClass& data2 = non_literal_refer;
    
};


                                                 
template class StaticDataMemTest<int>;
template class StaticDataMemTest<LiteralClass>;

void test()
{
    test1();
    test2();
    test3();
}

PASS_CASE_MAIN_FUNCTION
