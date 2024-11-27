#include <stdio.h>

static int sub(int);
static int ini(int);

static int sub(int i) 
{
  int k = ini(0);
  
  if (i >= 5 || i != 4) {
    k += i;
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
