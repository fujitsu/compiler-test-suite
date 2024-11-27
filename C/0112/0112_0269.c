#include<stdio.h>
#include<stdlib.h>
#define MAX 1000
int main()
{
  int i;
  float baz[MAX], bar[MAX], foo[MAX];

  for (i=0;i<MAX;i++){
    bar[i] = (float)i;
    foo[i] = (float)i;
  }
  for(i=0;i<MAX;i++) {
    baz[i] = foo[i] + bar[i];
  }

  printf("%lf\n",baz[4]);

  for(i=0;i<MAX;i++) {
    baz[i] = foo[i] - bar[i];
  }

  printf("%lf\n",baz[4]);

  for(i=0;i<MAX;i++) {
    baz[i] = foo[i] * bar[i];
  }

  printf("%lf\n",baz[4]);
}
