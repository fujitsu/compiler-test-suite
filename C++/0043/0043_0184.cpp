#include <atomic>
#include "./004.h"

template <bool _v> struct bool_constant { static const bool value = _v; };
template <bool _v> const bool bool_constant<_v>::value;
template <class _Bp, class _Dp> struct is_same_or_base_of : public bool_constant<__is_base_of(_Bp, _Dp)> {};
template <class _Tp> struct is_same_or_base_of<_Tp, _Tp>  : public bool_constant<true> {};

static_assert( (is_same_or_base_of< std::atomic_char, std::atomic<char> >::value), "error" );
static_assert( (is_same_or_base_of< std::atomic_schar, std::atomic<signed char> >::value), "error" );
static_assert( (is_same_or_base_of< std::atomic_uchar, std::atomic<unsigned char> >::value), "error" );
static_assert( (is_same_or_base_of< std::atomic_short, std::atomic<short> >::value), "error" );
static_assert( (is_same_or_base_of< std::atomic_ushort, std::atomic<unsigned short> >::value), "error" );
static_assert( (is_same_or_base_of< std::atomic_int, std::atomic<int> >::value), "error" );
static_assert( (is_same_or_base_of< std::atomic_uint, std::atomic<unsigned int> >::value), "error" );
static_assert( (is_same_or_base_of< std::atomic_long, std::atomic<long> >::value), "error" );
static_assert( (is_same_or_base_of< std::atomic_ulong, std::atomic<unsigned long> >::value), "error" );
static_assert( (is_same_or_base_of< std::atomic_llong, std::atomic<long long> >::value), "error" );
static_assert( (is_same_or_base_of< std::atomic_ullong, std::atomic<unsigned long long> >::value), "error" );
static_assert( (is_same_or_base_of< std::atomic_char16_t, std::atomic<char16_t> >::value), "error" );
static_assert( (is_same_or_base_of< std::atomic_char32_t, std::atomic<char32_t> >::value), "error" );
static_assert( (is_same_or_base_of< std::atomic_wchar_t, std::atomic<wchar_t> >::value), "error" );
static_assert( (is_same_or_base_of< std::atomic_bool, std::atomic<bool> >::value), "error" );

void test() {}

PASS_CASE_MAIN_FUNCTION
