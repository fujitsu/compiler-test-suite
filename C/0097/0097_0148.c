#include<stdio.h>
static int sub(int a, int b, int *c) 
{
  int i, z;
  z = 0;
  for (i=0; i < 10; ++i) {
    z = z + b * i;
    if (i > 5) {
      *c = *c + a * b;
    }
    z = z + *c * a;
  }
  return z;
}

int main()
{
  int a,b,c,z;
  a = 1;
  b = 2;
  c = 0;
  z = sub(a,b,&c);
  if (c == 8 && z == 110) {
    printf("OK\n");
    return 0;
  } else {
    printf("NG\n");
    return z;
  }
}
