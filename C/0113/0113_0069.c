#include <stdio.h>

static int sub(int);
static int ini(int);

static int sub(int i) 
{
  int k = ini(0);
  
  switch (i) {
  case 0:
  case 1:
  case 2:
  case 3:
  case 4:
  case 5:
  case 6:
  case 7:
  case 8:
  case 9:
    k -= i;
    break;
  case 10:
  case 11:
  case 12:
  case 13:
  case 14:
  case 15:
  case 16:
  case 17:
  case 18:
  case 19:
    k += i;
    break;
  default:
    k *= i;
  }
  return k;
}

static int ini(int i) {
  return i*i;
}
int main() 
{
  if (17==sub(17))
    printf("ok\n");
  else
    printf("ng\n");
}
