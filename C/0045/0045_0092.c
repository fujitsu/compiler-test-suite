#include <stdio.h>

int g = 10;

struct TAG {
  int x;
};

void bar()
{
  g = -10;
}

int foo(struct TAG *p)
{
  int n,i;
  n = 0;
  for(i=0;i<p->x;i++) {
    bar();
    n++;
  }
  return n;
}
int main()
{
  int n = foo((struct TAG *)&g);

  if (n==1) {
    printf("OK\n");
  }
  else {
    printf("NG\n");
  }
}
  
