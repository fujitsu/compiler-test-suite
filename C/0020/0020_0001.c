/***********************************************************
 * Test program for restrict qualification to array elements.
 * If the optimization is done as intended, ok is output.
 ************************************************************/

#include <stdio.h>

void func01(char x[restrict] , char y[restrict]) {
  x[0] = 1;
  y[0] = 3;
  x[0] = y[0] + 1;

  if (x[0] == 4) {
    puts("x[restrict]&y[restrict]:ok");
  } else {
    puts("x[restrict]&y[restrict]:ng");
  }
}


 void func02(int x[restrict] , int  y[restrict]) { 
   x[0] = 1; 
   y[0] = 3; 
   x[0] = y[0] + 1; 

   if (x[0] == 4) { 
     puts("x[restrict]&y[restrict]:ok"); 
   } else { 
     puts("x[restrict]&y[restrict]:ng"); 
   } 
 } 

 void func03(unsigned char x[restrict] , unsigned char  y[restrict]) { 
   x[0] = 1; 
   y[0] = 3; 
   x[0] = y[0] + 1; 

   if (x[0] == 4) { 
     puts("x[restrict]&y[restrict]:ok"); 
   } else { 
     puts("x[restrict]&y[restrict]:ng"); 
   } 
 } 

 void func04(long x[restrict] , long  y[restrict]) { 
   x[0] = 1; 
   y[0] = 3; 
   x[0] = y[0] + 1; 

   if (x[0] == 4) { 
     puts("x[restrict]&y[restrict]:ok"); 
   } else { 
     puts("x[restrict]&y[restrict]:ng"); 
   } 
 } 

 void func05(unsigned int x[restrict] , unsigned int  y[restrict]) { 
   x[0] = 1; 
   y[0] = 3; 
   x[0] = y[0] + 1; 

   if (x[0] == 4) { 
     puts("x[restrict]&y[restrict]:ok"); 
   } else { 
     puts("x[restrict]&y[restrict]:ng"); 
   } 
 } 

 void func06(short x[restrict] , short  y[restrict]) { 
   x[0] = 1; 
   y[0] = 3; 
   x[0] = y[0] + 1; 

   if (x[0] == 4) { 
     puts("x[restrict]&y[restrict]:ok"); 
   } else { 
     puts("x[restrict]&y[restrict]:ng"); 
   } 
 } 

 void func07(unsigned short x[restrict] , unsigned short  y[restrict]) { 
   x[0] = 1; 
   y[0] = 3; 
   x[0] = y[0] + 1; 

   if (x[0] == 4) { 
     puts("x[restrict]&y[restrict]:ok"); 
   } else { 
     puts("x[restrict]&y[restrict]:ng"); 
   } 
 } 

 void func08(unsigned long x[restrict] , unsigned long  y[restrict]) { 
   x[0] = 1; 
   y[0] = 3; 
   x[0] = y[0] + 1; 

   if (x[0] == 4) { 
     puts("x[restrict]&y[restrict]:ok"); 
   } else { 
     puts("x[restrict]&y[restrict]:ng"); 
   } 
 } 

 void func09(float x[restrict] , float  y[restrict]) { 
   x[0] = 1.0; 
   y[0] = 3.0; 
   x[0] = y[0] + 1.0; 

   if (x[0] == 4.0) { 
     puts("x[restrict]&y[restrict]:ok"); 
   } else { 
     puts("x[restrict]&y[restrict]:ng"); 
   } 
 } 

 void func10(double x[restrict] , double  y[restrict]) { 
   x[0] = 1.0; 
   y[0] = 3.0; 
   x[0] = y[0] + 1.0; 

   if (x[0] == 4.0) { 
     puts("x[restrict]&y[restrict]:ok"); 
   } else { 
     puts("x[restrict]&y[restrict]:ng"); 
   } 
 } 

 void func11(long double x[restrict] , long double  y[restrict]) { 
   x[0] = 1; 
   y[0] = 3; 
   x[0] = y[0] + 1; 

   if (x[0] == 4) { 
     puts("x[restrict]&y[restrict]:ok"); 
   } else { 
     puts("x[restrict]&y[restrict]:ng"); 
   } 
 } 

 void func12(long long x[restrict] , long long y[restrict]) { 
   x[0] = 1; 
   y[0] = 3; 
   x[0] = y[0] + 1; 

   if (x[0] == 4) { 
     puts("x[restrict]&y[restrict]:ok"); 
   } else { 
     puts("x[restrict]&y[restrict]:ng"); 
   } 
 } 


int main() {
  char p01[3];
  char  *q01;
  q01 = p01;
  func01(p01, q01);

  int p02[3];
  int  *q02;
  q02 = p02;
  func02(p02, q02);

  unsigned char p03[2];
  unsigned char  *q03;
  q03 = p03;
  func03(p03, q03);

  long p04[3];
  long  *q04;
  q04 = p04;
  func04(p04, q04);

  unsigned int p05[3];
  unsigned int  *q05;
  q05 = p05;
  func05(p05, q05);

  short p06[3];
  short  *q06;
  q06 = p06;
  func06(p06, q06);

  unsigned short p07[3];
  unsigned short  *q07;
  q07 = p07;
  func07(p07, q07);

  unsigned long p08[3];
  unsigned long  *q08;
  q08 = p08;
  func08(p08, q08);

  float p09[3];
  float  *q09;
  q09 = p09;
  func09(p09, q09);

  double p10[3];
  double  *q10;
  q10 = p10;
  func10(p10, q10);

  long double p11[3];
  long double  *q11;
  q11 = p11;
  func11(p11, q11);

  long long p12[2];
  long long  *q12;
  q12 = p12;
  func12(p12, q12);

  return 0;
}
