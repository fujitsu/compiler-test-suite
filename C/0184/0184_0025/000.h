#include <stdio.h>
#define Loop_MAX 10000
#define Test_NUM 10000
#define EXPECTED_VALUE 20000

typedef struct {
  int a[Test_NUM + 1] ;
} st01 ;

typedef struct {
  int b[Test_NUM + 1] ;
  int c[Test_NUM + 1] ;
} st02 ;

extern void for_test(st01 (* restrict st01), st02 (* restrict st02) );


