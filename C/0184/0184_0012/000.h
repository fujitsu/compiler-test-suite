#include <stdio.h>
#define Loop_MAX 10000
#define Test_NUM 10000
#define EXPECTED_VALUE 20000


typedef struct {
  double a[Test_NUM] ;
} st01 ;

typedef struct {
  int b[Test_NUM] ;
  int c[Test_NUM] ;
} st02 ;

extern void for_test(st01 (* restrict st01), st02 (* restrict st02) );


