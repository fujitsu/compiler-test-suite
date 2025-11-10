#include <atomic>
#include "./004.h"

static_assert( __has_trivial_destructor(std::atomic<char>) , "error" );
static_assert( __has_trivial_destructor(std::atomic<signed char>) , "error" );
static_assert( __has_trivial_destructor(std::atomic<unsigned char>) , "error" );
static_assert( __has_trivial_destructor(std::atomic<short>) , "error" );
static_assert( __has_trivial_destructor(std::atomic<unsigned short>) , "error" );
static_assert( __has_trivial_destructor(std::atomic<int>) , "error" );
static_assert( __has_trivial_destructor(std::atomic<unsigned int>) , "error" );
static_assert( __has_trivial_destructor(std::atomic<long>) , "error" );
static_assert( __has_trivial_destructor(std::atomic<unsigned long>) , "error" );
static_assert( __has_trivial_destructor(std::atomic<long long>) , "error" );
static_assert( __has_trivial_destructor(std::atomic<unsigned long long>) , "error" );
static_assert( __has_trivial_destructor(std::atomic<char16_t>) , "error" );
static_assert( __has_trivial_destructor(std::atomic<char32_t>) , "error" );
static_assert( __has_trivial_destructor(std::atomic<wchar_t>) , "error" );

static_assert( __has_trivial_destructor(std::atomic<bool>) , "error" );

void test() {}

PASS_CASE_MAIN_FUNCTION
