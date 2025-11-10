


#include "public1/004.h"
#include "public1/005.h"

struct X
{
    X() {}
    
    X(X& rhs) {}
    
    template <class T> X(T& rhs, typename enable_if<is_same<X const, T>::value, void*>::type = 0) {}
    ~X() {}
 private:
    struct ref { ref(X*p) : p(p) {} X* p; };
 public:
    operator ref() { return ref(this); }
    
    X(ref rhs){}
};

void sinkref(X const&) {}

void test()
{
    sinkref(X());
}

PASS_CASE_MAIN_FUNCTION
