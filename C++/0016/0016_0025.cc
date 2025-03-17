


#include <stdio.h>
int i=0;
int main(){
  long int  x1=0;
  long * x2=0;
  signed long x3=0;
  long  long x4=0;
  long long int * x5=0;
  short int **x6=0;
  unsigned short  x7=0;
  const long * x8=0;
 
  try {
   switch (i){
  case 0:
    throw  x1;
  case 1:
    throw  x2;
  case 2:
    throw  x3;
  case 3:
    throw  x4;
  case 4:
    throw  x5;
  case 5:
    throw  x6;
  case 6:
    throw  x7;
  case 7:
    throw  x8;
  ;
  }
  }
  catch (int ){}
  catch (...){
  }
  puts("ok");
}
