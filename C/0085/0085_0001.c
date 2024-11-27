#include <errno.h>
#include <limits.h>
#include <float.h>
#include <stddef.h>
#include <assert.h>
#include <locale.h>
#include <math.h>
#include <setjmp.h>
#include <signal.h>
#include <stdarg.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int main(){
#if !defined EDOM || !defined ERANGE
#error "not defined macros in errno.h"
#endif

#if !defined CHAR_BIT || !defined SCHAR_MIN || !defined SCHAR_MAX || \
    !defined UCHAR_MAX || !defined CHAR_MIN || !defined CHAR_MAX || \
    !defined MB_LEN_MAX || !defined SHRT_MIN || !defined SHRT_MAX || \
    !defined USHRT_MAX || !defined INT_MIN || !defined INT_MAX || \
    !defined UINT_MAX || !defined LONG_MIN || !defined LONG_MAX || \
    !defined ULONG_MAX
#error "not defined macros in limits.h"
#endif

#if !defined FLT_RADIX || !defined FLT_ROUNDS || \
    !defined FLT_MANT_DIG || !defined DBL_MANT_DIG || !defined LDBL_MANT_DIG || \
    !defined FLT_DIG || !defined DBL_DIG || !defined LDBL_DIG || \
    !defined FLT_MIN_EXP || !defined DBL_MIN_EXP || !defined LDBL_MIN_EXP || \
    !defined FLT_MIN_10_EXP || !defined DBL_MIN_10_EXP || !defined LDBL_MIN_10_EXP || \
    !defined FLT_MAX_EXP || !defined DBL_MAX_EXP || !defined LDBL_MAX_EXP || \
    !defined FLT_MAX_10_EXP || !defined DBL_MAX_10_EXP || !defined LDBL_MAX_10_EXP || \
    !defined FLT_MAX || !defined DBL_MAX || !defined LDBL_MAX || \
    !defined FLT_EPSILON || !defined DBL_EPSILON || !defined LDBL_EPSILON || \
    !defined FLT_MIN || !defined DBL_MIN || !defined LDBL_MIN
#error "not defined macros in float.h"
#endif

#if !defined NULL
#error "not defined macros in stddef.h and string.h and time.h"
#endif

#if !defined assert
#error "not defined macros in assert.h"
#endif

#if !defined LC_ALL || !defined LC_COLLATE || !defined LC_CTYPE || \
    !defined LC_MONETARY || !defined LC_NUMERIC || !defined LC_TIME
#error "not defined macros in locale.h"
#endif

#if !defined HUGE_VAL
#error "not defined macros in math.h"
#endif

#if !defined setjmp
#error "not defined macros in setjmp.h"
#endif

#if !defined SIG_DFL || !defined SIG_ERR || !defined SIG_IGN
#error "not defined macros in signal.h"
#endif

#if !defined va_start || !defined va_arg || !defined va_end
#error "not defined macros in stdarg.h"
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

  puts("OK");
  return 0;
}

