#ifndef __STDC_NO_ATOMICS__
#include <stdatomic.h>
#endif 

void test() {
#ifndef __STDC_NO_ATOMICS__

#ifndef ATOMIC_BOOL_LOCK_FREE
# error ATOMIC_BOOL_LOCK_FREE is not defined.
#endif

#ifndef ATOMIC_CHAR_LOCK_FREE
# error ATOMIC_CHAR_LOCK_FREE is not defined.
#endif

#ifndef ATOMIC_CHAR16_T_LOCK_FREE
# error  ATOMIC_CHAR16_T_LOCK_FREE is not defined.
#endif

#ifndef ATOMIC_CHAR32_T_LOCK_FREE
# error  ATOMIC_CHAR32_T_LOCK_FREE is not defined.
#endif

#ifndef ATOMIC_WCHAR_T_LOCK_FREE
# error  ATOMIC_WCHAR_T_LOCK_FREE is not defined.
#endif

#ifndef ATOMIC_SHORT_LOCK_FREE
# error  ATOMIC_SHORT_LOCK_FREE is not defined.
#endif

#ifndef ATOMIC_INT_LOCK_FREE
# error  ATOMIC_INT_LOCK_FREE  is not defined.
#endif

#ifndef ATOMIC_LONG_LOCK_FREE
# error  ATOMIC_LONG_LOCK_FREE is not defined.
#endif

#ifndef ATOMIC_LLONG_LOCK_FREE
# error  ATOMIC_LLONG_LOCK_FREE is not defined. 
#endif

#ifndef ATOMIC_POINTER_LOCK_FREE
# error  ATOMIC_POINTER_LOCK_FREE is not defined.
#endif
 
#ifndef ATOMIC_FLAG_INIT 
# error  ATOMIC_FLAG_INIT is not defined.
#endif

#endif 
} 

int main(int argc, char *argv[]) {
    test();
    return 0;
}
