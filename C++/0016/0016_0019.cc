
#include <stdio.h>
 int i=0;
int main(){
  const int x1=0;
  const int *x2=0;
  const volatile int * volatile * x3=0;
  int * x4=0;
  volatile int  &x5=i;
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
  }
  }
  catch (...){
  }
  puts("ok");
}
