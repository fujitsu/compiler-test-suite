/*********************************
 * Structure member with restrict qualifier 
 *****************************************/

#include <stdio.h>

typedef struct s_type{
  char * restrict s01;
  int * restrict s02;
  unsigned char * restrict s03;
  long * restrict s04;
  unsigned int * restrict s05;
  short * restrict s06;
  unsigned short * restrict s07;
  unsigned long * restrict s08;
  float * restrict s09;
  double * restrict s10;
  long double * restrict s11;
  long long * restrict s12;
}st;

void func01(char * restrict s01, char * restrict a01){
  s01[0]=1;
  a01[0]=3;
  s01[0]=s01[0]+1;

  if(s01[0] == 2 && a01[0] == 3){
    puts("s01&a01 : ok");
  }else {
    puts("s01&a01 : ng");
  }
}

void func02(int * restrict s02, int * restrict a02){
  s02[0]=1;
  a02[0]=3;
  s02[0]=s02[0]+1;

  if(s02[0] == 2 && a02[0] == 3){
    puts("s02&a02 : ok");
  }else {
    puts("s02&a02 : ng");
  }
}

void func03(unsigned char * restrict s03, unsigned char * restrict a03){
  s03[0]=1;
  a03[0]=3;
  s03[0]=s03[0]+1;

  if(s03[0] == 2 && a03[0] == 3){
    puts("s03&a03 : ok");
  }else {
    puts("s03&a03 : ng");
  }
}

void func04(long * restrict s04, long * restrict a04){
  s04[0]=1;
  a04[0]=3;
  s04[0]=s04[0]+1;

  if(s04[0] == 2 && a04[0] == 3){
    puts("s04&a04 : ok");
  }else {
    puts("s04&a04 : ng");
  }
}

void func05(unsigned int * restrict s05, unsigned int * restrict a05){
  s05[0]=1;
  a05[0]=3;
  s05[0]=s05[0]+1;

  if(s05[0] == 2 && a05[0] == 3){
    puts("s05&a05 : ok");
  }else {
    puts("s05&a05 : ng");
  }
}

void func06(short * restrict s06, short * restrict a06){
  s06[0]=1;
  a06[0]=3;
  s06[0]=s06[0]+1;

  if(s06[0] == 2 && a06[0] == 3){
    puts("s06&a06 : ok");
  }else {
    puts("s06&a06 : ng");
  }
}

void func07(unsigned short * restrict s07, unsigned short * restrict a07){
  s07[0]=1;
  a07[0]=3;
  s07[0]=s07[0]+1;

  if(s07[0] == 2 && a07[0] == 3){
    puts("s07&a07 : ok");
  }else {
    puts("s07&a07 : ng");
  }
}

void func08(unsigned long * restrict s08, unsigned long * restrict a08){
  s08[0]=1;
  a08[0]=3;
  s08[0]=s08[0]+1;

  if(s08[0] == 2 && a08[0] == 3){
    puts("s08&a08 : ok");
  }else {
    puts("s08&a08 : ng");
  }
}

void func09(float * restrict s09, float * restrict a09){
  s09[0]=1.0;
  a09[0]=3.0;
  s09[0]=s09[0]+1.0;

  if(s09[0] == 2.0 && a09[0] == 3.0){
    puts("s09&a09 : ok");
  }else {
    puts("s09&a09 : ng");
  }
}

void func10(double * restrict s10, double * restrict a10){
  s10[0]=1.0;
  a10[0]=3.0;
  s10[0]=s10[0]+1.0;

  if(s10[0] == 2.0 && a10[0] == 3.0){
    puts("s10&a10 : ok");
  }else {
    puts("s10&a10 : ng");
  }
}

void func11(long double * restrict s11, long double * restrict a11){
  s11[0]=1;
  a11[0]=3;
  s11[0]=s11[0]+1;

  if(s11[0] == 2 && a11[0] == 3){
    puts("s11&a11 : ok");
  }else {
    puts("s11&a11 : ng");
  }
}

void func12(long long * restrict s12, long long * restrict a12){
  s12[0]=1;
  a12[0]=3;
  s12[0]=s12[0]+1;

  if(s12[0] == 2 && a12[0] == 3){
    puts("s12&a12 : ok");
  }else {
    puts("s12&a12 : ng");
  }
}

int main(){
  char a01;
  int a02;
  unsigned char a03;
  long a04;
  unsigned int a05;
  short a06;
  unsigned short a07;
  unsigned long a08;
  float a09;
  double a10;
  long double a11;
  long long a12;

  st s;
  
  s.s01 = &a01;
  s.s02 = &a02;
  s.s03 = &a03;
  s.s04 = &a04;
  s.s05 = &a05;
  s.s06 = &a06;
  s.s07 = &a07;
  s.s08 = &a08;
  s.s09 = &a09;
  s.s10 = &a10;
  s.s11 = &a11;
  s.s12 = &a12; 

  func01(s.s01, &a01);
  func02(s.s02, &a02);
  func03(s.s03, &a03);
  func04(s.s04, &a04);
  func05(s.s05, &a05);
  func06(s.s06, &a06);
  func07(s.s07, &a07);
  func08(s.s08, &a08);
  func09(s.s09, &a09);
  func10(s.s10, &a10);
  func11(s.s11, &a11);
  func12(s.s12, &a12);

  return 0;
}


