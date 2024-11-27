#include <stdio.h>

static int sub(int);
static int ini(int);

static int sub(int i) 
{
  int k = ini(0);
  
  if (i != 2) {
    k += i;
  }
  return k;
}

static int ini(int i) {
  return i*i;
}
int main() 
{
  if (3==sub(3))
    printf("ok\n");
  else
    printf("ng\n");
}
