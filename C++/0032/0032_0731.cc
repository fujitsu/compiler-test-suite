#include <stdio.h>
int main()
{
  int i;

  {
    struct  XX { int a ;}xx={10};
    i = xx.a;
  }
  for (static int ss; i != 0; i--) {
		ss = i;
  }
  for (typedef int I; i < 10; i++) {
		I ii ; ii = i;
  }
  for (struct  S { int mem ;}sx; i != 10; i--) {
		S s ; sx.mem = s.mem = i;
  }
  
  for (enum E {xxx = 10}; i < 10; i++) {
    E e = xxx;
  }

  if (i == 10)
    printf("ok\n");
  else
    printf("ng\n");
}
