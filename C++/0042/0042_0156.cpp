#include "./004.h"

int f();
int g() throw();
int h() noexcept;
int i() noexcept(true);
int j() noexcept(false);

static_assert(!noexcept(f()), "error");
static_assert( noexcept(g()), "error");
static_assert( noexcept(h()), "error");
static_assert( noexcept(i()), "error");
static_assert(!noexcept(j()), "error");



struct X
{
    int f();
    int g() throw();
    int h() noexcept;
    int i() noexcept(true);
    int j() noexcept(false);
} x;

static_assert(!noexcept(x.f()), "error");
static_assert( noexcept(x.g()), "error");
static_assert( noexcept(x.h()), "error");
static_assert( noexcept(x.i()), "error");
static_assert(!noexcept(x.j()), "error");



int (*pf)();
int (*pg)() throw();
int (*ph)() noexcept;
int (*pi)() noexcept(true);
int (*pj)() noexcept(false);

static_assert(!noexcept(pf()), "error");



static_assert(!noexcept(pj()), "error");



int (X::*pmf)();
int (X::*pmg)() throw();
int (X::*pmh)() noexcept;
int (X::*pmi)() noexcept(true);
int (X::*pmj)() noexcept(false);

static_assert(!noexcept((x.*pmf)()), "error");



static_assert(!noexcept((x.*pmj)()), "error");




struct FO {
    void operator()(char) throw();
    void operator()(int) noexcept;
    void operator()(long) noexcept(true);
    void operator()(double) noexcept(false);
} fo;

static_assert( noexcept(fo('c')), "error");
static_assert( noexcept(fo(0)),   "error");
static_assert( noexcept(fo(0L)),  "error");
static_assert(!noexcept(fo(0.)),  "error");

void test() {}

PASS_CASE_MAIN_FUNCTION
