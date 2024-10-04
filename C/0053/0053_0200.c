#include<stdio.h>
enum { a, b, c } s1;
enum { d, e, f = 10 } s2;
int main()
{
  s1 = b;
  s2 = f;

  if (s1 == 1)
      printf("***** \n");
    else
      printf("***** \n");

  if (s2 == 10)
      printf("***** \n");
    else
      printf("***** \n");
}
