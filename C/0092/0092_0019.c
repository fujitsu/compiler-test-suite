#include <stdio.h>


int retj(int i) {return i;}
int retk(int i) {return i;}

int
bar()
{ 
  int i;
  int k = 0;

  for (i = retj(9); i > 0; i--) {
    
    if (i + k == 0 || k < 0)
      k += retk(i);
    else
      k -= retk(i);
  }
  return k;
}

int
foo() 
{ 
  int i;
  int k = 0;

  for (i = retj(9); i > 0; i--) {
    
    if (k <= 0)
      k += retk(i);
    else
      k -= retk(i);
    if (k <= 1)
      k += retk(i);
    else
      k -= retk(i);
  }
  return k;
}
int main()
{
  printf("###  START ###\n");
  if (foo() + bar() * 2 == 0)
    printf("###      OK      ###\n");
  else
    printf("###      NG      ###\n");
  printf("###   END  ###\n");
}
