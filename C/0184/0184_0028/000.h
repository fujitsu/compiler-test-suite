#include <stdio.h>
#include <math.h>
#define Loop_MAX 10000
#define Test_NUM 10000
#define EXPECTED_VALUE 10000

typedef struct {
  float a[Test_NUM] ;
} st01 ;

typedef struct {
  float b[Test_NUM] ;
  float c[Test_NUM] ;
} st02 ;

extern void for_test(st01 (* restrict st01), st02 (* restrict st02) );


