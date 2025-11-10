#include <stdio.h>
#define Loop_MAX 10000
#define Test_NUM 10000
#define EXPECTED_VALUE 20000

typedef struct {
  int a[Test_NUM] ;
  int d[Test_NUM] ;
} st01 ;

typedef struct {
  int b[Test_NUM] ;
  int e[Test_NUM] ;
} st02 ;

typedef struct {
  int c[Test_NUM] ;
  int f[Test_NUM] ;
} st03 ;

extern void for_test(st01 (* restrict st01),
                     st02 (* restrict st02),
                     st03 (* restrict st03) );


