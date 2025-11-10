#include <stdio.h>
#include <math.h>
#define Loop_MAX 10000
#define Test_NUM 10000
#define EXPECTED_VALUE 7071.07

typedef struct {
  double a[Test_NUM] ;
} st01 ;

typedef struct {
  double b[Test_NUM] ;
  double c[Test_NUM] ;
} st02 ;

extern void for_test(st01 (* restrict st01), st02 (* restrict st02) );


