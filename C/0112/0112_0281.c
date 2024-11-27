#include <stdio.h>
#include <math.h>
#define MIN 100
int main()
{
  float baz[MIN],bar[MIN];
  float foo[MIN],sub[MIN];

  int i,j;

  for(i=0;i<MIN;i++) {
    sub[i] = i;
    bar[i] = i;
  }

  for(i=0;i<MIN;i++)
    {
      foo[i] = sub[i];
      for(j=0;j<MIN;j++)
        {
          baz[j] = bar[j];
        }
    }

  printf("baz= ");
  for(i=0;i<MIN;i++) printf("%lf ",baz[i]);
  printf("\n");
  printf("foo= ");
  for(i=0;i<MIN;i++) printf("%lf ",foo[i]);
  printf("\n");
}
