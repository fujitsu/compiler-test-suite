#include "public2/004.h"

void f() throw();
void f() noexcept;
void f() noexcept(true);

void f() noexcept(1 == 1);

void g() noexcept(1 == 2);
void g() noexcept(false);

void test() {}

PASS_CASE_MAIN_FUNCTION
