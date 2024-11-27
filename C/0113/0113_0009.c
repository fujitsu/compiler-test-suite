#include <stdio.h>


#define ANS 1
static void sub();
int main()
{
  int a[2],b[1];
  int i=1;

  a[0] = -1;
  a[1] = 0;
  b[0] = 1;
  
  a[i] = a[i];

  sub(a,b);

  if (a[0] == ANS) {
    printf("OK\n");
  } else {
    printf("NG");
  }
}

static void sub(a,b)
     int *a,*b;
{
  *a = *b;
}
