
#include <stdio.h>
#include <complex.h>

typedef long double  _Complex  test_t;
typedef long double  elem_t;

typedef struct COMPLEX {
  elem_t r;
  elem_t i;
} complex_t;

void check(elem_t a,elem_t b)
{
   if(a == 1. && b == 2.) {
     puts("OK");
   }
   else {
     puts("NG");
   }
}

void test1(int i1,int i2,int i3,int i4,int i5,int i6,test_t x)
{
   if( i1 != 1 || i2 != 2 ||i3 != 3 ||i4 != 4 ||i5 != 5 || i6 != 6) {
     puts("NG");
   }
   check(crealf(x),cimagf(x));
}

void test2(int i1,int i2,int i3,int i4,int i5,int i6,complex_t a)
{
   if( i1 != 1 || i2 != 2 ||i3 != 3 ||i4 != 4 ||i5 != 5 || i6 != 6) {
     puts("NG");
   }
   check(a.r,a.i);
}

void test4(int i1,int i2,int i3,int i4,int i5,int i6,test_t);
void test3(int i1,int i2,int i3,int i4,int i5,int i6,complex_t);

#pragma weak test3=test1
#pragma weak test4=test2

static  int clean_arg(int i1,int i2,int i3,int i4,int i5,int i6)
{
}
int main()
{
  test_t  x;
  complex_t a;

  test1(1,2,3,4,5,6,1 + 2 * I);
  
  a.r = 1;
  a.i = 2;
  test2(1,2,3,4,5,6,a);


  test4(1,2,3,4,5,6,1 + 2 * I);
  
  clean_arg(1,2,3,4,5,6);

  a.r = 1;
  a.i = 2;
  test3(1,2,3,4,5,6,a);


  puts("PASS");
}
