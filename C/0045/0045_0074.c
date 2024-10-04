#include <stdio.h>



int n[10];
int array[10];
int j;

void sub()
{
  int i;
  for(i=0;i<n[j];i++) {
    j++;
  }
}
int main()
{
  n[0] = 10;
  n[1] = 0;

  sub();

  if (j==1) {
    printf("OK\n");
  }
  else {
    printf("NG\n");
  }
}

