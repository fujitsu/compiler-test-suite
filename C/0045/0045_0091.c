

#include <stdio.h>

int n[1 + 1];
int array[10];
int j;

void sub(int *p)
{
  int i;
  for(i=0;i<n[0];i++) {
    *p = 0; p++;
    j++;
  }
}
int main()
{
  int *p = n;
  n[0] = 10;
  n[1] = 0;

  sub(p);

  if (j==1) {
    printf("OK\n");
  }
  else {
    printf("NG\n");
  }
  
}

