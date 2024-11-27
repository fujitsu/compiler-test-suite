#include <stdio.h>
static int sub(int);
static int ini(int);

static int sub(int i) 
{
  int k = ini(0);
  
  switch(i) {
  case 1:
    k -= i;
    goto L20;
  L40:
    break;
  case 2:
    k += i;
    goto L20;
    break;
  default:
    k *= i;
    break;
  }
  goto L30;
 L20:
  k = k + i + 1;
  goto L40;
 L30:
  return k;
}

static int ini(int i) {
  return i*i;
}
int main() 
{
  if (5==sub(2))
    printf("ok\n");
  else
    printf("ng\n");
}
