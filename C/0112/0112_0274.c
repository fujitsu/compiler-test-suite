#include <stdio.h>
#include <math.h>
#define MAX 100
int main()
{
  float baz[MAX];
  int i,j;

  for(i=0;i<MAX;i++)
    {
      baz[i] = i;
    }

  for(i=0;i<MAX;i++)
    {
      printf("%lf  ",baz[i]);
    }
  printf("\n");
}
