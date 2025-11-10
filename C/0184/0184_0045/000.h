#include <stdio.h>
#define Loop_MAX 100
#define Test_NUM 100
#define Test_NUM2 100
#define Struct_NUM 5
#define EXPECTED_VALUE 100000

typedef struct {
  int a[Test_NUM][Test_NUM2] ;
} st01 ;

typedef struct {
  int b[Test_NUM][Test_NUM2] ;
  int c[Test_NUM][Test_NUM2] ;
} st02 ;

extern void for_test(st01 (* restrict st01),
                     st02 (* restrict st02)
                    );


