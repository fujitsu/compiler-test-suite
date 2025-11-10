#include "public1/004.h"
#include "public1/005.h"

template <class T> T prvalue(typename enable_if<!is_reference<T>::value, void*>::type = 0);

class CompleteClass
{
public:
    CompleteClass() { count++; }
    static int count;
private:
    CompleteClass(const CompleteClass&);
};

int CompleteClass::count = 0;

void complete_test()
{
    
    decltype(prvalue<CompleteClass>()) cc1;
    assert(CompleteClass::count == 1);
    
    decltype((0, prvalue<CompleteClass>())) cc2;
    assert(CompleteClass::count == 2);
}

class IncompleteClass;

void incomplete_test()
{
    
    decltype(prvalue<IncompleteClass>()) *pic1;
    
    decltype((0, prvalue<IncompleteClass>())) *pic2;
}

void test()
{
    complete_test();
    incomplete_test();
}

PASS_CASE_MAIN_FUNCTION
