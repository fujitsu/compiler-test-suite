

#include <stdio.h>

int j = 0;

void sub()
{
  int i, n;
  int *p = &n;
  n = 10;
  for(i=0;i <n;i++) {
    j++;
    *p = 2;
  }
}
int main()
{

  sub();

  if (j==2) {
    printf("OK\n");
  }
  else {
    printf("NG\n");
  }
  
}

