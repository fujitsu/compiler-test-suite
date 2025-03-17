#include <stdio.h>
struct B { 
  int i;
  B(){ i = 10; }
}bobj; 

int B::*gpmf1 = &B::i;
  
typedef  int B::*pmf1;

pmf1 func(){ return gpmf1;}

int main(){
  if (bobj.*func() == 10)
    bobj.*func() += 5;

  if (bobj.i == 15)
    printf("ok\n");
}
