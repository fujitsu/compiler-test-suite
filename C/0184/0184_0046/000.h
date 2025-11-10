#include <stdio.h>
#define Loop_MAX 10000
#define Test_NUM 10000
#define Struct_NUM  2
#define Struct_NUM2 5
#define Struct_NUM3 5
#define EXPECTED_VALUE 1000000

typedef struct {
  int a[Test_NUM] ;
} st01 ;

typedef struct {
  int b[Test_NUM] ;
  int c[Test_NUM] ;
} st02 ;

extern void for_test(st01 (* restrict st01)[Struct_NUM2][Struct_NUM3],
                     st02 (* restrict st02)[Struct_NUM2][Struct_NUM3]
                     );


