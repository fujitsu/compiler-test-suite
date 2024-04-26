#include <stdio.h>

int cmp(int a, int b)
{
  if (a>b)
    return(2);
  else if (a<b)
    return(1);
  else if (a==b)
    return(0);
  else
    return(-1);
}

int max(int a, int b)
{
  if (a>b)
    return(a);
  else if (a<b)
    return(b);
  else if (a==b)
    return(0);
  else
    return(-1);
}

int min(int a, int b)
{
  if (a<b)
    return(a);
  else if (a>b)
    return(b);
  else if (a==b)
    return(0);
  else
    return(-1);
}

int sum(int a, int b)
{
  return(a+b);
}

int mul(int a, int b)
{
  return(a*b);
}

int init_sub(int d)
{
  return sum(d,1);
}

int init(int d)
{
  return init_sub(d);
}
int main()
{
  int a,b,flag;
  int res;

  a = init(2);
  b = init(4);

  if (cmp(a,b))
    flag = 0;
  else
    flag = 1;
  if (flag)
    res = max(a,b);
  else
    res = min(a,b);

  printf("%d\n",res);
}
