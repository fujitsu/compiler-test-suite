#include <stdio.h>
#define Loop_MAX 500
#define Test_NUM 500
#define EXPECTED_VALUE 250000

typedef struct {
  int a[Test_NUM][Test_NUM] ;
} st01 ;

typedef struct {
  int b[Test_NUM][Test_NUM] ;
  int c[Test_NUM][Test_NUM] ;
} st02 ;

extern void for_test(st01 (* restrict st01),
                     st02 (* restrict st02) );


