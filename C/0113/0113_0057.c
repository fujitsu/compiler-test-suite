#include <stdio.h>

static int sub(int);
static int ini(int);

static int sub(int i) 
{
  int k = ini(0);
  
  switch(i) {
  case 1:
    k -= i;
    break;
  case 2:
    k += i;
    break;
  default:
    k *= i;
    break;
  }
  return k;
}

static int ini(int i) {
  return i*i;
}
int main() 
{
  if (2==sub(2))
    printf("ok\n");
  else
    printf("ng\n");
}
