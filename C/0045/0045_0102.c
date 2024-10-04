

#include <stdio.h>

int j;

void bar(void);

void foo(int n)
{
  int i;
  for(i=0;i<n;i++) {
    bar();
  }
}
int main()
{
  foo(10);

  if (j==10) {
    printf("OK\n");
  }
  else {
    printf("NG\n");
  }
  
}

void bar(void)
{
  j++;
}


