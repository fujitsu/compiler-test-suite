#include<stdio.h>
#include<math.h>
#define MAX 1000
int main()
{
  int i;
  float baz[MAX], bar[MAX], foo[MAX];
  for (i = 0; i < MAX; i++){
    bar[i] = i;
    foo[i] = i;
  }
  for(i=0;i<MAX;i++) {
    baz[i] = (float)sqrt((double)foo[i]) + sqrt((double)bar[i]);
  }
  printf("%lf\n",baz[4]);
}
