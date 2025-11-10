#include "public3/004.h"
#include "public3/006.h"

class X {};

X operator "" _suffix01(const char*);
X operator "" _suffix02(unsigned long long int);
X operator "" _suffix03(long double);
X operator "" _suffix04(char);
X operator "" _suffix05(wchar_t);
X operator "" _suffix06(char16_t);
X operator "" _suffix07(char32_t);
X operator "" _suffix08(const char*,     std::size_t);
X operator "" _suffix09(const wchar_t*,  std::size_t);
X operator "" _suffix10(const char16_t*, std::size_t);
X operator "" _suffix11(const char32_t*, std::size_t);

void test() {}

PASS_CASE_MAIN_FUNCTION
