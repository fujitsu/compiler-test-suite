#include <stdio.h>
#define Loop_MAX 80
#define Test_NUM 80
#define EXPECTED_VALUE 1024000

typedef struct {
  int a[Test_NUM][Test_NUM][Test_NUM] ;
} st01 ;

typedef struct {
  int b[Test_NUM][Test_NUM][Test_NUM] ;
  int c[Test_NUM][Test_NUM][Test_NUM] ;
} st02 ;

extern void for_test(st01 (* restrict st01),
                     st02 (* restrict st02) );


