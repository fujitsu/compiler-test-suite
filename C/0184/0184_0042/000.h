#include <stdio.h>
#define Loop_MAX 10000
#define Test_NUM 10000
#define Struct_NUM 10000
#define EXPECTED_VALUE 20000

typedef struct {
  int a ;
} st01 ;

typedef struct {
  int b ;
  int c ;
} st02 ;

extern void for_test(st01 (* restrict st01),
                     st02 (* restrict st02),
                     int n                 );


