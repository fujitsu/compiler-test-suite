#include <stdio.h>

static int sub(int);
static int ini(int);

static int sub(int i) 
{
  int k = ini(0);
  
  switch (i) {
  case 0:
    k += i;
  case 1:
    k += i;
  case 2:
    k += i;
  case 3:
    k += i;
  case 4:
    k += i;
  default:
    k += i;
  }
  return k;
}

static int ini(int i) {
  return i*i;
}
int main() 
{
  if (8==sub(2))
    printf("ok\n");
  else
    printf("ng\n");
}
