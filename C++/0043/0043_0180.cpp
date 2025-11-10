#include <atomic>
#include "./004.h"

constexpr std::atomic<char> atomic_char((char)0);
constexpr std::atomic<signed char> atomic_signed_char((signed char)0);
constexpr std::atomic<unsigned char> atomic_unsigned_char((unsigned char)0);
constexpr std::atomic<short> atomic_short((short)0);
constexpr std::atomic<unsigned short> atomic_unsigned_short((unsigned short)0);
constexpr std::atomic<int> atomic_int((int)0);
constexpr std::atomic<unsigned int> atomic_unsigned_int((unsigned int)0);
constexpr std::atomic<long> atomic_long((long)0);
constexpr std::atomic<unsigned long> atomic_unsigned_long((unsigned long)0);
constexpr std::atomic<long long> atomic_long_long((long long)0);
constexpr std::atomic<unsigned long long> atomic_unsigned_long_long((unsigned long long)0);
constexpr std::atomic<char16_t> atomic_char16_t((char16_t)0);
constexpr std::atomic<char32_t> atomic_char32_t((char32_t)0);
constexpr std::atomic<wchar_t> atomic_wchar_t((wchar_t)0);

constexpr std::atomic<bool> atomic_bool(true);

struct X;
constexpr std::atomic<X*> atomic_X_p((X*)0);

void test() {}

PASS_CASE_MAIN_FUNCTION
