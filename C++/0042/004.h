#ifndef __CXX11_TEST_HEADER_PUBLIC_H__
#define __CXX11_TEST_HEADER_PUBLIC_H__

#include <stdio.h>
#include <assert.h>
#include "003.h"


#define PRINT_PASS_CASE_INFO()   do { printf("%s\n", PASS_CASE_RUN_OK_INFO); } while(0)


#define PRINT_FAIL_CASE_INFO()   do { printf("%s\n", FAIL_CASE_RUN_OK_INFO); } while(0)

#define PASS_CASE_MAIN_FUNCTION \
    int main() \
    { \
        test(); \
        PRINT_PASS_CASE_INFO(); \
        return 0; \
    }

#define FAIL_CASE_MAIN_FUNCTION \
    int main() \
    { \
        test(); \
        PRINT_FAIL_CASE_INFO(); \
        return 0; \
    }

struct __one { char __; };
struct __two { char __[2]; };

#define assert_true(expr)  static_assert( (expr), "error");
#define assert_false(expr) static_assert(!(expr), "error");

#endif 
