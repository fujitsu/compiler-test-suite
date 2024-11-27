#include<stdio.h>
static void sub(float a, float b, float *c) 
{
  int i;
  for (i=0; i < 10; ++i) {
    if (i > 5) {
      *c = *c + a * b;
    }
  }
  return;
}

int main()
{
  float a,b,c;
  a = 1;
  b = 2;
  c = 0;
  sub(a,b,&c);
  if (c == (float)8) {
    printf("OK\n");
    return 0;
  } else {
    printf("NG\n");
    return 1;
  }
}
