


#include <stdio.h>

int j = 10000;

void sub(int n)
{
  int i;
  for(i=0;i <n || j<100;i++) {
    j++;
  }
}
int main()
{

  sub(10);

  if (j==10010) {
    printf("OK\n");
  }
  else {
    printf("NG\n");
  }
  
}

