#include <stdio.h>
int i=1;
int f(int a, int b)
{
  int x = a++;
  int y;

  for (y=b--, x++; a++ != 10 ; y++) {
    b++;
  }
  if (a == 11 && b == 7 && x == 3 && y == 8)
    return i++;
  else
    printf("%d %d %d %d\n", a,b,x,y);
  return 0;
}
int main()
{
  int j=2;
  int ii=i;
  if (f(j--,ii--) == 1 && i == 2)
      printf("ok\n");
  else
    printf("ng\n");
}
