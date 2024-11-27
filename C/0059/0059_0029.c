
#include<stdio.h>
#include<math.h>
#include<complex.h>

int test01(float complex z) {
   if ( __real__ z==__real__ conjf(z)) printf("test01-01 OK\n");
   else                                printf("test01-01 NG\n");

   if (-__imag__ z==__imag__ conjf(z)) printf("test01-02 OK\n");
   else                                printf("test01-02 NG\n");

   if (sizeof(z)==2*sizeof(float))     printf("test01-03 OK\n");
   else                                printf("test01-03 NG\n");
   return 0;
}

int test02(double complex z)   {
   if ( __real__ z==__real__ conj(z))  printf("test02-01 OK\n");
   else                                printf("test02-01 NG\n");

   if (-__imag__ z==__imag__ conj(z))  printf("test02-02 OK\n");
   else                                printf("test02-02 NG\n");

   if (sizeof(z)==2*sizeof(double))    printf("test02-03 OK\n");
   else                                printf("test02-03 NG\n");
   return 0;
}

int test03(long double complex z) {
   if ( __real__ z==__real__ conjl(z)) printf("test03-01 OK\n");
   else                                printf("test03-01 NG\n");

   if (-__imag__ z==__imag__ conjl(z)) printf("test03-02 OK\n");
   else                                printf("test03-02 NG\n");

   if (sizeof(z)==2*sizeof(long double)) printf("test03-03 OK\n");
   else                                printf("test03-03 NG\n");
   return 0;
}

int test04(double complex z) {
   if ( __real__ z==__real__ ~z) printf("test04-01 OK\n");
   else                          printf("test04-01 NG\n");

   if (-__imag__ z==__imag__ ~z) printf("test04-02 OK\n");
   else                          printf("test04-02 NG\n");

   return 0;
}

int main() {
  test01(1.1215+1.2345*I);
  test02(2.2345+9.9945I);
  test03(3.1215+I*(0.0245));
  test04(3.1415+I*-0.1234);
  test04(3.1415+I-0.1234);
}
