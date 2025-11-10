#include <atomic>
#include "./004.h"

static_assert( __is_standard_layout(std::atomic_flag) , "error" );

#ifdef __clang__ 
static_assert( __is_trivially_constructible(std::atomic_flag) , "error" );
#else
std::atomic_flag flag; 
# warning whether the default constructor of type atomic_flag is trivial is unknown
#endif

static_assert( __has_trivial_destructor(std::atomic_flag) , "error" );

void test() {}

PASS_CASE_MAIN_FUNCTION
