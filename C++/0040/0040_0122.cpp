#include "public1/004.h"

class A {};
class B {};
class C {};
class D : decltype(A()), decltype(B()), decltype(C()){};
class E : public decltype(A()), protected decltype(B()), private decltype(C()) {};
class F : virtual public decltype(A()), virtual protected decltype(B()), virtual private decltype(C()) {};
class G : public virtual decltype(A()), protected virtual decltype(B()), private virtual decltype(C()) {};
class H : decltype(A()), protected decltype(B()), private virtual decltype(C()) {};

void test(){}

PASS_CASE_MAIN_FUNCTION
