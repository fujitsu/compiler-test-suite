#include <stdlib.h>
#include <math.h>
#include  <stdio.h>
int sub(int j, int k, int l);
int main()
{
sub(1,10,1);
exit (0);
}
int sub(j,k,l)
  int j,k,l;
{
  int a[11],i;
  printf("* all variable =>  x *\n");
  for(i=j;i<=k;i=i+l)
  {
    a[i]=1;
  }
  if (a[i-1]==1)
  printf("-ok1-\n");
  else
  printf("-ng1-\n");
  printf("* exp3 constant(2) =>  x *\n");
  for(i=j;i<=k;i=i+2)
  {
    a[i]=1;
  }
  if (a[i-1]==1)
  printf("-ok2-\n");
  else
  printf("-ng2-\n");
  printf("* exp3 constant(1) =>  o *\n");
  for(i=j;i<=k;i++)
  {
    a[i]=1;
  }
  if (a[i-1]==1)
  printf("-ok3-\n");
  else
  printf("-ng3-\n");
  printf("* exp2 constant =>  x *\n");
  for(i=j;i<=10;i=i+l)
  {
    a[i]=1;
  }
  if (a[i-1]==1)
  printf("-ok4-\n");
  else
  printf("-ng4-\n");
  printf("* exp1 constant =>  x *\n");
  for(i=1;i<=j;i=i+l)
  {
    a[i]=1;
  }
  if (a[i-1]==1)
  printf("-ok5-\n");
  else
  printf("-ng5-\n");
  printf("* all  constant =>  o *\n");
  for(i=1;i<=10;i++)
  {
    a[i]=1;
  }
  if (a[i-1]==1)
  printf("-ok6-\n");
  else
  printf("-ng6-\n");
}
