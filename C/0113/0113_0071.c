#include <stdio.h>

static int sub(int);
static int ini(int);

static int sub(int i) 
{
  int k = ini(0);
  
  switch (i) {
  case 2:
 ss10:
    k += i;
    break;
  case 4:
    k += i;
    break;
  default:
    k += i;
  }
  if (k == 2) {
    i = 4;
    goto ss10;
  }
  return k;
}

static int ini(int i) {
  return i*i;
}
int main() 
{
  if (6==sub(2))
    printf("ok\n");
  else
    printf("ng\n");
}
