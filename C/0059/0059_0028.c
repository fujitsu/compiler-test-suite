
#include<stdio.h>
#include<math.h>
#include<complex.h>

int test1(double a, double b){
   double   complex   z  = a * I + b;

   double   _r,_i;
   double   zr,zi;

   _r = __real__ z;
   _i = __imag__ z;

   zr = creal(z)  ;
   zi = cimag(z)  ;

   if(_r == zr)        printf("*OK1 \n");
   else                printf("*NG1 \n");
   if(_i == zi)        printf("*OK2 \n");
   else                printf("*NG2 \n");
   if(_r ==  b)        printf("*OK3 \n");
   else                printf("*NG3 \n");
   if(_i ==  a)        printf("*OK4 \n");
   else                printf("*NG4 \n");
  
   fflush(stdout);
}

int test2(float  a, float  b){
   float    complex   z  = a * I + b;

   float    _r,_i;
   float    zr,zi;

   _r = __real__ z;
   _i = __imag__ z;

   zr = crealf(z)  ;
   zi = cimagf(z)  ;

   if(_r == zr)        printf("*OK1 \n");
   else                printf("*NG1 \n");
   if(_i == zi)        printf("*OK2 \n");
   else                printf("*NG2 \n");
   if(_r ==  b)        printf("*OK3 \n");
   else                printf("*NG3 \n");
   if(_i ==  a)        printf("*OK4 \n");
   else                printf("*NG4 \n");
  
   fflush(stdout);
}

int test3(long double a, long double  b){
   long double   complex   z  = a * I + b;

   long double   _r,_i;
   long double   zr,zi;

   _r = __real__ z;
   _i = __imag__ z;

   zr = creall(z)  ;
   zi = cimagl(z)  ;

   if(_r == zr)        printf("*OK1 \n");
   else                printf("*NG1 \n");
   if(_i == zi)        printf("*OK2 \n");
   else                printf("*NG2 \n");
   if(_r ==  b)        printf("*OK3 \n");
   else                printf("*NG3 \n");
   if(_i ==  a)        printf("*OK4 \n");
   else                printf("*NG4 \n");
  
   fflush(stdout);
}

int main() {
  printf("double test 1\n");
  test1(3.1,0.04);
  printf("double test 2\n");
  test1(-3000.1,-0.00004);

  printf("float  test 3\n");
  test2(3.1,0.04);
  printf("float  test 4\n");
  test2(-31000.1,-0.00000004);

  printf("long d test 5\n");
  test3(3.1,0.04);
  printf("long d test 6\n");
  test3(-3300.1,-0.03334);
  return 0;
}


