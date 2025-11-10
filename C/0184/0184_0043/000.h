#include <stdio.h>
#define Loop_MAX 10000
#define Test_NUM 10000
#define Struct_NUM 50
#define EXPECTED_VALUE 1000000

typedef struct {
  int a[Test_NUM] ;
} st01 ;

typedef struct {
  int b[Test_NUM] ;
  int c[Test_NUM] ;
} st02 ;

extern void for_test(st01 (* restrict st01),
                     st02 (* restrict st02)
                    );


