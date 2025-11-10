#include <stdio.h>
#define Loop_MAX 50
#define Test_NUM 50
#define Test_NUM2 50
#define Test_NUM3 50
#define Struct_NUM 3
#define EXPECTED_VALUE 750000

typedef struct {
  int a[Test_NUM][Test_NUM2][Test_NUM3] ;
} st01 ;

typedef struct {
  int b[Test_NUM][Test_NUM2][Test_NUM3] ;
  int c[Test_NUM][Test_NUM2][Test_NUM3] ;
} st02 ;

extern void for_test(st01 (* restrict st01),
                     st02 (* restrict st02)
                    );


