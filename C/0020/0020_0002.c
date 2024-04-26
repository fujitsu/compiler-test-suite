/************************************************************************************
 * This test declares global restricted pointers and references it in the function.
 * This test assigns an array to the pointer variable.
 ************************************************************************************/

#include <stdio.h>

char * restrict xp01;
int * restrict xp02;
unsigned char * restrict xp03;
long * restrict xp04;
unsigned int * restrict xp05;
short * restrict xp06;
unsigned short * restrict xp07;
unsigned long * restrict xp08;
float * restrict xp09;
double * restrict xp10;
long double * restrict xp11;
long long * restrict xp12;

void math01(char * restrict  x_ary01){
  xp01[0]=1;
  x_ary01[0]=3;
  xp01[0]=xp01[0]+1;

  if(xp01[0] == 2 && x_ary01[0] == 3)  {
    puts("xp01[2]&x_ary01 : ok");
  }else{
    puts("xp01[2]&x_ary01 : ng");
  }
}

void math02(int * restrict x_ary02){
  xp02[0]=1;
  x_ary02[0]=3;
  xp02[0]=xp02[0]+1;

  if(xp02[0] == 2 && x_ary02[0] == 3)  {
    puts("xp02[2]&x_ary02 : ok");
  }else{
    puts("xp02[2]&x_ary02 : ng");
  }
}

void math03(unsigned char * restrict x_ary03){
  xp03[0]=1;
  x_ary03[0]=3;
  xp03[0]=xp03[0]+1;

  if(xp03[0] == 2 && x_ary03[0] == 3)  {
    puts("xp03[2]&x_ary03 : ok");
  }else{
    puts("xp03[2]&x_ary03 : ng");
  }
}

void math04(long * restrict x_ary04){
  xp04[0]=1;
  x_ary04[0]=3;
  xp04[0]=xp04[0]+1;

  if(xp04[0] == 2 && x_ary04[0] == 3)  {
    puts("xp04[2]&x_ary04 : ok");
  }else{
    puts("xp04[2]&x_ary04 : ng");
  }
}

void math05(unsigned int * restrict x_ary05){
  xp05[0]=1;
  x_ary05[0]=3;
  xp05[0]=xp05[0]+1;

  if(xp05[0] == 2 && x_ary05[0] == 3)  {
    puts("xp05[2]&x_ary05 : ok");
  }else{
    puts("xp05[2]&x_ary05 : ng");
  }
}

void math06(short * restrict x_ary06){
  xp06[0]=1;
  x_ary06[0]=3;
  xp06[0]=xp06[0]+1;

  if(xp06[0] == 2 && x_ary06[0] == 3)  {
    puts("xp06[2]&x_ary06 : ok");
  }else{
    puts("xp06[2]&x_ary06 : ng");
  }
}

void math07(unsigned short * restrict x_ary07){
  xp07[0]=1;
  x_ary07[0]=3;
  xp07[0]=xp07[0]+1;

  if(xp07[0] == 2 && x_ary07[0] == 3)  {
    puts("xp07[2]&x_ary07 : ok");
  }else{
    puts("xp07[2]&x_ary07 : ng");
  }
}

void math08(unsigned long * restrict x_ary08){
  xp08[0]=1;
  x_ary08[0]=3;
  xp08[0]=xp08[0]+1;

  if(xp08[0] == 2 && x_ary08[0] == 3)  {
    puts("xp08[2]&x_ary08 : ok");
  }else{
    puts("xp08[2]&x_ary08 : ng");
  }
}

void math09(float * restrict x_ary09){
  xp09[0]=1.0;
  x_ary09[0]=3.0;
  xp09[0]=xp09[0]+1.0;

  if(xp09[0] == 2.0 && x_ary09[0] == 3.0){
    puts("xp09[2]&x_ary09 : ok");
  }else{
    puts("xp09[2]&x_ary09 : ng");
  }
}

void math10(double * restrict x_ary10){
  xp10[0]=1.0;
  x_ary10[0]=3.0;
  xp10[0]=xp10[0]+1.0;

  if(xp10[0] == 2.0 && x_ary10[0] == 3.0){
    puts("xp10[2]&x_ary10 : ok");
  }else{
    puts("xp10[2]&x_ary10 : ng");
  }
}

void math11(long double * restrict x_ary11){
  xp11[0]=1;
  x_ary11[0]=3;
  xp11[0]=xp11[0]+1;

  if(xp11[0] == 2 && x_ary11[0] == 3){
    puts("xp11[2]&x_ary11 : ok");
  }else{
    puts("xp11[2]&x_ary11 : ng");
  }
}

void math12(long long * restrict x_ary12){
  xp12[0]=1;
  x_ary12[0]=3;
  xp12[0]=xp12[0]+1;

  if(xp12[0] == 2 && x_ary12[0] == 3)  {
    puts("xp12[2]&x_ary12 : ok");
  }else{
    puts("xp12[2]&x_ary12 : ng");
  }
}

int main(){
  char x_ary01[2]; 
  int x_ary02[2]; 
  unsigned char x_ary03[2]; 
  long x_ary04[2]; 
  unsigned int x_ary05[2]; 
  short x_ary06[2]; 
  unsigned short x_ary07[2]; 
  unsigned long x_ary08[2]; 
  float x_ary09[2]; 
  double x_ary10[2]; 
  long double x_ary11[2]; 
  long long x_ary12[2]; 

  xp01=x_ary01;
  xp02=x_ary02;
  xp03=x_ary03;
  xp04=x_ary04;
  xp05=x_ary05;
  xp06=x_ary06;
  xp07=x_ary07;
  xp08=x_ary08;
  xp09=x_ary09;
  xp10=x_ary10;
  xp11=x_ary11;
  xp12=x_ary12;
  
  math01(x_ary01);
  math02(x_ary02);
  math03(x_ary03);
  math04(x_ary04);
  math05(x_ary05);
  math06(x_ary06);
  math07(x_ary07);
  math08(x_ary08);
  math09(x_ary09);
  math10(x_ary10);
  math11(x_ary11);
  math12(x_ary12);  

  return 0;
}
