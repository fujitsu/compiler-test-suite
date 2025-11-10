#include "./004.h"
#include <typeinfo>

template <class T> T prvalue();

struct Polymorphic { virtual void f(){} } p_lvalue;


static_assert( noexcept(typeid(prvalue<Polymorphic>())), "error");

struct NonPolymorphic {} np_lvalue;

static_assert( noexcept(typeid(np_lvalue)), "error");
static_assert( noexcept(typeid(prvalue<NonPolymorphic>())), "error");

void test() {}

PASS_CASE_MAIN_FUNCTION
