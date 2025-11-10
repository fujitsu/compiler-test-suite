#include <atomic>
#include "./004.h"

#ifdef __clang__ 

static_assert( __is_trivially_constructible(std::atomic<char>) , "error" );
static_assert( __is_trivially_constructible(std::atomic<signed char>) , "error" );
static_assert( __is_trivially_constructible(std::atomic<unsigned char>) , "error" );
static_assert( __is_trivially_constructible(std::atomic<short>) , "error" );
static_assert( __is_trivially_constructible(std::atomic<unsigned short>) , "error" );
static_assert( __is_trivially_constructible(std::atomic<int>) , "error" );
static_assert( __is_trivially_constructible(std::atomic<unsigned int>) , "error" );
static_assert( __is_trivially_constructible(std::atomic<long>) , "error" );
static_assert( __is_trivially_constructible(std::atomic<unsigned long>) , "error" );
static_assert( __is_trivially_constructible(std::atomic<long long>) , "error" );
static_assert( __is_trivially_constructible(std::atomic<unsigned long long>) , "error" );
static_assert( __is_trivially_constructible(std::atomic<char16_t>) , "error" );
static_assert( __is_trivially_constructible(std::atomic<char32_t>) , "error" );
static_assert( __is_trivially_constructible(std::atomic<wchar_t>) , "error" );

static_assert( __is_trivially_constructible(std::atomic<bool>) , "error" );

#else

std::atomic<char>               atomic_c;
std::atomic<signed char>        atomic_sc;
std::atomic<unsigned char>      atomic_uc;
std::atomic<short>              atomic_s;
std::atomic<unsigned short>     atomic_us;
std::atomic<int>                atomic_i;
std::atomic<unsigned int>       atomic_ui;
std::atomic<long>               atomic_l;
std::atomic<unsigned long>      atomic_ul;
std::atomic<long long>          atomic_ll;
std::atomic<unsigned long long> atomic_ull;
std::atomic<char16_t>           atomic_c16;
std::atomic<char32_t>           atomic_c32;
std::atomic<wchar_t>            atomic_wc;

std::atomic<bool>               atomic_b;

# warning whether the default constructor of type atomic<Integer> is trivial is unknown

#endif

void test() {}

PASS_CASE_MAIN_FUNCTION
