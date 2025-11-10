#include "public3/004.h"



namespace case1
{
    
    const int ci = 2;
    const volatile int cvi = 1;
    const int& circi = ci;             
  
#if (__EDG__) && (__EDG_VERSION__ < 411)
    const volatile int& cvirci = ci;   
    static_assert(cvirci, "");         
#endif  
    const volatile int& cvircvi = cvi; 
  
    
    
    enum E {e = 1};
    const E ce = e;
    const volatile E cve = e;
    const E& cerce = ce;             
    static_assert(cerce, "error");   
#if (__EDG__) && (__EDG_VERSION__ < 411)
    const volatile E& cverce = ce;   
    static_assert(cverce, "error");  
#endif  
    const volatile E& cvercve = cve; 
  
}



namespace case2
{
    struct X
    {
        constexpr X(int d) : data(d) {}
      
      const int data;
    };
  constexpr X x = {1}; 

    constexpr int ci = 1;
    struct Y
    {
        constexpr Y(int d) : d1(d), d2(ci) {}
        int d1;
        const volatile int& d2;
    };
    constexpr Y y = {2};
    static_assert(y.d1, "error"); 

}



namespace case3
{
    struct X
    {
        constexpr X() : data(1) {}
        int data;
    };
    static_assert(static_cast<X&&>(X()).data, "error");          

}

void test() {}

PASS_CASE_MAIN_FUNCTION

