#include "public3/004.h"
#include "public3/005.h"

char16_t cu = u'a';
static_assert((is_same<decltype(u'b'), char16_t>::value), "error");

char32_t cU1 = U'a';
static_assert((is_same<decltype(U'b'), char32_t>::value), "error");

void test() {}

PASS_CASE_MAIN_FUNCTION
