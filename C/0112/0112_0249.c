#include<stdio.h>

#define MIN 10
int main()
{
  double baz[MIN];
  double bar[MIN],foo[MIN];

  int i,j;

  for(i=0;i<MIN;i++){
    baz[i] = i;
    bar[i] = 0;
    foo[i] = i;
  }

  for(i=0;i<MIN-1;i++)
    {
      bar[i] = foo[i];
      baz[i] = baz[i+1];
    }

  printf("baz= ");
  for(i=0;i<MIN;i++) printf("%d ",(int)baz[i]);
  printf("\n");
  printf("bar= ");
  for(i=0;i<MIN;i++) printf("%d ",(int)bar[i]);
  printf("\n");
}
