


#include <stdio.h>

int j;

void sub(int n)
{
  int i;
  for(i=0;i<n && j<100;i++) {
    j++;
  }
}
int main()
{
  j = 0;

  sub(10);

  if (j==10) {
    printf("OK\n");
  }
  else {
    printf("NG\n");
  }
  
}

