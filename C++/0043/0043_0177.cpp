#include <atomic>
#include "./004.h"


#ifndef ATOMIC_BOOL_LOCK_FREE
# error ATOMIC_BOOL_LOCK_FREE is not defined!
#elif (ATOMIC_BOOL_LOCK_FREE != 0 && ATOMIC_BOOL_LOCK_FREE != 1 && ATOMIC_BOOL_LOCK_FREE != 2)
# error ATOMIC_BOOL_LOCK_FREE is not defined as 0, 1 or 2!
#endif


#ifndef ATOMIC_CHAR_LOCK_FREE
# error ATOMIC_CHAR_LOCK_FREE is not defined!
#elif (ATOMIC_CHAR_LOCK_FREE != 0 && ATOMIC_CHAR_LOCK_FREE != 1 && ATOMIC_CHAR_LOCK_FREE != 2)
# error ATOMIC_CHAR_LOCK_FREE is not defined as 0, 1 or 2!
#endif


#ifndef ATOMIC_CHAR16_T_LOCK_FREE
# error ATOMIC_CHAR16_T_LOCK_FREE is not defined!
#elif (ATOMIC_CHAR16_T_LOCK_FREE != 0 && ATOMIC_CHAR16_T_LOCK_FREE != 1 && ATOMIC_CHAR16_T_LOCK_FREE != 2)
# error ATOMIC_CHAR16_T_LOCK_FREE is not defined as 0, 1 or 2!
#endif


#ifndef ATOMIC_CHAR32_T_LOCK_FREE
# error ATOMIC_CHAR32_T_LOCK_FREE is not defined!
#elif (ATOMIC_CHAR32_T_LOCK_FREE != 0 && ATOMIC_CHAR32_T_LOCK_FREE != 1 && ATOMIC_CHAR32_T_LOCK_FREE != 2)
# error ATOMIC_CHAR32_T_LOCK_FREE is not defined as 0, 1 or 2!
#endif


#ifndef ATOMIC_WCHAR_T_LOCK_FREE
# error ATOMIC_WCHAR_T_LOCK_FREE is not defined!
#elif (ATOMIC_WCHAR_T_LOCK_FREE != 0 && ATOMIC_WCHAR_T_LOCK_FREE != 1 && ATOMIC_WCHAR_T_LOCK_FREE != 2)
# error ATOMIC_WCHAR_T_LOCK_FREE is not defined as 0, 1 or 2!
#endif


#ifndef ATOMIC_SHORT_LOCK_FREE
# error ATOMIC_SHORT_LOCK_FREE is not defined!
#elif (ATOMIC_SHORT_LOCK_FREE != 0 && ATOMIC_SHORT_LOCK_FREE != 1 && ATOMIC_SHORT_LOCK_FREE != 2)
# error ATOMIC_SHORT_LOCK_FREE is not defined as 0, 1 or 2!
#endif


#ifndef ATOMIC_INT_LOCK_FREE
# error ATOMIC_INT_LOCK_FREE is not defined!
#elif (ATOMIC_INT_LOCK_FREE != 0 && ATOMIC_INT_LOCK_FREE != 1 && ATOMIC_INT_LOCK_FREE != 2)
# error ATOMIC_INT_LOCK_FREE is not defined as 0, 1 or 2!
#endif


#ifndef ATOMIC_LONG_LOCK_FREE
# error ATOMIC_LONG_LOCK_FREE is not defined!
#elif (ATOMIC_LONG_LOCK_FREE != 0 && ATOMIC_LONG_LOCK_FREE != 1 && ATOMIC_LONG_LOCK_FREE != 2)
# error ATOMIC_LONG_LOCK_FREE is not defined as 0, 1 or 2!
#endif


#ifndef ATOMIC_LLONG_LOCK_FREE
# error ATOMIC_LLONG_LOCK_FREE is not defined!
#elif (ATOMIC_LLONG_LOCK_FREE != 0 && ATOMIC_LLONG_LOCK_FREE != 1 && ATOMIC_LLONG_LOCK_FREE != 2)
# error ATOMIC_LLONG_LOCK_FREE is not defined as 0, 1 or 2!
#endif


#ifndef ATOMIC_POINTER_LOCK_FREE
# error ATOMIC_POINTER_LOCK_FREE is not defined!
#elif (ATOMIC_POINTER_LOCK_FREE != 0 && ATOMIC_POINTER_LOCK_FREE != 1 && ATOMIC_POINTER_LOCK_FREE != 2)
# error ATOMIC_POINTER_LOCK_FREE is not defined as 0, 1 or 2!
#endif

void test() {}

PASS_CASE_MAIN_FUNCTION
