#include <stdio.h>

static int sub(int);
static int ini(int);

static int sub(int i) 
{
  int k = ini(0);
  
  switch(i != 0) {
  case 1:
    k += i;
    break;
  case 0:
    k -= i;
    break;
  }
  return k;
}

static int ini(int i) {
  return i*i;
}
int main() 
{
  if (4==sub(4))
    printf("ok\n");
  else
    printf("ng\n");
}
