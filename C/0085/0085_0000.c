#include <assert.h>
#ifndef __STDC_NO_COMPLEX__
#include <complex.h>
#endif
#include <errno.h>
#include <fenv.h>
#include <float.h>
#include <inttypes.h>
#include <iso646.h>
#include <limits.h>
#include <locale.h>
#include <math.h>
#include <setjmp.h>
#include <signal.h>
#include <stdalign.h>
#include <stdarg.h>
#ifndef __STDC_NO_ATOMICS__
#include <stdatomic.h>
#endif
#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <stdnoreturn.h>
#include <string.h>
#include <tgmath.h>
#ifndef __STDC_NO_THREADS__
#include <threads.h>
#endif
#include <time.h>
#include <wchar.h>
#include <wctype.h>

int main(){
#if !defined assert || !defined static_assert
#error "not defined macros in assert.h"
#endif

#ifndef __STDC_NO_COMPLEX__
#if !defined complex || !defined _Complex_I || !defined I
#error "not defined macros in complex.h"
#endif
#endif

#if !defined EDOM || !defined EILSEQ || !defined ERANGE
#error "not defined macros in errno.h"
#endif

#if !defined FE_ALL_EXCEPT || !defined FE_DFL_ENV
#error "not defined macros in fenv.h"
#endif

#if !defined FLT_RADIX || !defined FLT_ROUNDS || \
    !defined FLT_EVAL_METHOD || !defined DECIMAL_DIG || \
    !defined FLT_MANT_DIG || !defined DBL_MANT_DIG || !defined LDBL_MANT_DIG || \
    !defined FLT_DIG || !defined DBL_DIG || !defined LDBL_DIG || \
    !defined FLT_MIN_EXP || !defined DBL_MIN_EXP || !defined LDBL_MIN_EXP || \
    !defined FLT_MIN_10_EXP || !defined DBL_MIN_10_EXP || !defined LDBL_MIN_10_EXP || \
    !defined FLT_MAX_EXP || !defined DBL_MAX_EXP || !defined LDBL_MAX_EXP || \
    !defined FLT_MAX_10_EXP || !defined DBL_MAX_10_EXP || !defined LDBL_MAX_10_EXP || \
    !defined FLT_MAX || !defined DBL_MAX || !defined LDBL_MAX || \
    !defined FLT_EPSILON || !defined DBL_EPSILON || !defined LDBL_EPSILON || \
    !defined FLT_MIN || !defined DBL_MIN || !defined LDBL_MIN || \
    !defined FLT_HAS_SUBNORM || !defined DBL_HAS_SUBNORM || !defined LDBL_HAS_SUBNORM || \
    !defined FLT_DECIMAL_DIG || !defined DBL_DECIMAL_DIG || !defined LDBL_DECIMAL_DIG || \
    !defined FLT_TRUE_MIN || !defined DBL_TRUE_MIN || !defined LDBL_TRUE_MIN
#error "not defined macros in float.h"
#endif

#if !defined PRId32 || !defined PRIdLEAST32 || !defined PRIdFAST32 || \
    !defined PRIdMAX || !defined PRIdPTR || \
    !defined PRIi32 || !defined PRIiLEAST32 || !defined PRIiFAST32 || \
    !defined PRIiMAX || !defined PRIiPTR || \
    !defined PRIo32 || !defined PRIoLEAST32 || !defined PRIoFAST32 || \
    !defined PRIoMAX || !defined PRIoPTR || \
    !defined PRIu32 || !defined PRIuLEAST32 || !defined PRIuFAST32 || \
    !defined PRIuMAX || !defined PRIuPTR || \
    !defined PRIx32 || !defined PRIxLEAST32 || !defined PRIxFAST32 || \
    !defined PRIxMAX || !defined PRIxPTR || \
    !defined PRIX32 || !defined PRIXLEAST32 || !defined PRIXFAST32 || \
    !defined PRIXMAX || !defined PRIXPTR || \
    !defined SCNd32 || !defined SCNdLEAST32 || !defined SCNdFAST32 || \
    !defined SCNdMAX || !defined SCNdPTR || \
    !defined SCNi32 || !defined SCNiLEAST32 || !defined SCNiFAST32 || \
    !defined SCNiMAX || !defined SCNiPTR || \
    !defined SCNo32 || !defined SCNoLEAST32 || !defined SCNoFAST32 || \
    !defined SCNoMAX || !defined SCNoPTR || \
    !defined SCNu32 || !defined SCNuLEAST32 || !defined SCNuFAST32 || \
    !defined SCNuMAX || !defined SCNuPTR || \
    !defined SCNx32 || !defined SCNxLEAST32 || !defined SCNxFAST32 || \
    !defined SCNxMAX || !defined SCNxPTR
#error "not defined macros in inttypes.h"
#endif

#if !defined and || !defined and_eq || !defined bitand || \
    !defined bitor || !defined compl || !defined not || \
    !defined not_eq || !defined or || !defined or_eq || \
    !defined xor || !defined xor_eq
#error "not defined macros in iso646.h"
#endif

#if !defined CHAR_BIT || !defined SCHAR_MIN || !defined SCHAR_MAX || \
    !defined UCHAR_MAX || !defined CHAR_MIN || !defined CHAR_MAX || \
    !defined MB_LEN_MAX || !defined SHRT_MIN || !defined SHRT_MAX || \
    !defined USHRT_MAX || !defined INT_MIN || !defined INT_MAX || \
    !defined UINT_MAX || !defined LONG_MIN || !defined LONG_MAX || \
    !defined ULONG_MAX || !defined LLONG_MIN || !defined LLONG_MAX || \
    !defined ULLONG_MAX
#error "not defined macros in limits.h"
#endif

#if !defined LC_ALL || !defined LC_COLLATE || !defined LC_CTYPE || \
    !defined LC_MONETARY || !defined LC_NUMERIC || !defined LC_TIME
#error "not defined macros in locale.h"
#endif

#if !defined HUGE_VAL || !defined HUGE_VALF || !defined HUGE_VALL || \
    !defined INFINITY || !defined FP_INFINITE || !defined FP_NAN || \
    !defined FP_NORMAL || !defined FP_SUBNORMAL || !defined FP_ZERO || \
    !defined FP_ILOGB0 || !defined FP_ILOGBNAN || !defined MATH_ERRNO || \
    !defined MATH_ERREXCEPT || !defined math_errhandling || !defined fpclassify || \
    !defined isfinite || !defined isinf || !defined isnan || \
    !defined isnormal || !defined signbit || !defined isgreater || \
    !defined isgreaterequal || !defined isless || !defined islessequal || \
    !defined islessgreater || !defined isunordered
#error "not defined macros in math.h"
#endif

#if !defined setjmp
#error "not defined macros in setjmp.h"
#endif

#if !defined SIG_DFL || !defined SIG_ERR || !defined SIG_IGN
#error "not defined macros in signal.h"
#endif

#if !defined alignas || !defined alignof || \
    !defined __alignas_is_defined || !defined __alignof_is_defined
#error "not defined macros in atdalign.h"
#endif

#if !defined va_start || !defined va_arg || !defined va_end || \
    !defined va_copy
#error "not defined macros in stdarg.h"
#endif

#ifndef __STDC_NO_ATOMICS__
#if !defined ATOMIC_BOOL_LOCK_FREE || !defined ATOMIC_CHAR_LOCK_FREE || !defined ATOMIC_CHAR16_T_LOCK_FREE || \
    !defined ATOMIC_CHAR32_T_LOCK_FREE || !defined ATOMIC_WCHAR_T_LOCK_FREE || !defined ATOMIC_SHORT_LOCK_FREE || \
    !defined ATOMIC_INT_LOCK_FREE || !defined ATOMIC_LONG_LOCK_FREE || !defined ATOMIC_LLONG_LOCK_FREE || \
    !defined ATOMIC_POINTER_LOCK_FREE || !defined ATOMIC_FLAG_INIT || !defined ATOMIC_VAR_INIT || \
    !defined kill_dependency
#error "not defined macros in stdatomic.h"
#endif
#endif

#if !defined bool || !defined true || !defined false || \
    !defined __bool_true_false_are_defined
#error "not defined macros in stdbool.h"
#endif

#if !defined NULL
#error "not defined macros in stddef.h and string.h and time.h and wchar.h"
#endif

#if !defined offsetof
#error "not defined macros in stddef.h"
#endif

#if !defined WCHAR_MIN || !defined WCHAR_MAX
#error "not defined macros in stdint.h and wchar.h"
#endif

#if !defined INT32_MIN || !defined INT32_MAX || !defined UINT32_MAX || \
    !defined INT_LEAST32_MIN || !defined INT_LEAST32_MAX || !defined UINT_LEAST32_MAX || \
    !defined INT_FAST32_MIN || !defined INT_FAST32_MAX || !defined UINT_FAST32_MAX || \
    !defined INTPTR_MIN || !defined INTPTR_MAX || !defined UINTPTR_MAX || \
    !defined INTMAX_MIN || !defined INTMAX_MAX || !defined UINTMAX_MAX || \
    !defined PTRDIFF_MIN || !defined PTRDIFF_MAX || !defined SIG_ATOMIC_MIN || \
    !defined SIG_ATOMIC_MAX || !defined SIZE_MAX || !defined WINT_MIN || \
    !defined WINT_MAX || !defined INT32_C || !defined UINT32_C || \
    !defined INTMAX_C || !defined UINTMAX_C
#error "not defined macros in stdint.h"
#endif

#if !defined _IOFBF || !defined _IOLBF || !defined _IONBF || \
    !defined BUFSIZ || !defined EOF || !defined FOPEN_MAX || \
    !defined FILENAME_MAX || !defined L_tmpnam || !defined TMP_MAX || \
    !defined SEEK_CUR || !defined SEEK_END || !defined SEEK_SET || \
    !defined stderr || !defined stdin || !defined stdout
#error "not defined macros in stdio.h"
#endif

#if !defined EXIT_FAILURE || !defined EXIT_SUCCESS || \
    !defined RAND_MAX || !defined MB_CUR_MAX
#error "not defined macros in stdlib.h"
#endif

#if !defined noreturn
#error "not defined macros in stdnoreturn.h"
#endif

#if !defined acos || !defined asin || !defined atan || \
    !defined acosh || !defined asinh || !defined atanh || \
    !defined cos || !defined sin || !defined tan || \
    !defined cosh || !defined sinh || !defined tanh || \
    !defined exp || !defined log || !defined pow || \
    !defined sqrt || !defined fabs || !defined atan2 || \
    !defined cbrt || !defined ceil || !defined copysign || \
    !defined erf || !defined erfc || !defined exp2 || \
    !defined expm1 || !defined fdim || !defined floor || \
    !defined fma || !defined fmax || !defined fmin || \
    !defined fmod || !defined frexp || !defined hypot || \
    !defined ilogb || !defined ldexp || !defined lgamma || \
    !defined llrint || !defined llround || !defined log10 || \
    !defined log1p || !defined log2 || !defined logb || \
    !defined lrint || !defined lround || !defined nearbyint || \
    !defined nextafter || !defined nexttoward || !defined remainder || \
    !defined remquo || !defined rint || !defined round || \
    !defined scalbn || !defined scalbln || !defined tgamma || \
    !defined trunc || !defined carg || !defined conj || \
    !defined creal || !defined cimag || !defined cproj
#error "not defined macros in tgmath.h"
#endif

#ifndef __STDC_NO_THREADS__
#if !defined thread_local || !defined ONCE_FLAG_INIT || !defined TSS_DTOR_ITERATIONS
#error "not defined macros in threads.h"
#endif
#endif

#if !defined CLOCKS_PER_SEC || !defined TIME_UTC
#error "not defined macros in time.h"
#endif

#if !defined WEOF
#error "not defined macros in wchar.h and wctype.h"
#endif

  puts("OK");
  return 0;
}

