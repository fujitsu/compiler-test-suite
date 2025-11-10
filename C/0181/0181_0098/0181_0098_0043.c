
#include <stdio.h>
static
int cmp(a,b)
     int a,b;
{
  if (a>b)
    return(1);
  else if (a<b)
    return(-1);
  else
    return(0);
}

static
int max(a,b)
     int a,b;
{
  if (a>b)
    return(a);
  else if (a<b)
    return(b);
  else
    return(0);
}

static
int min(a,b)
     int a,b;
{
  if (a<b)
    return(a);
  else if (a>b)
    return(b);
  else
    return(0);
}

static
int sum(a,b)
     int a,b;
{
  return(a+b);
}

static
int mul(a,b)
     int a,b;
{
  return(a*b);
}

static
int init_sub(d)
     int d;
{
  return sum(d,1);
}

static
int init(d)
     int d;
{
  return init_sub(d);
}

int lto_sub_44()
{
  int a,b,flag;
  int res;

  a = init(2);
  b = init(4);

  if (cmp(a,b))
    flag = 1;
  else
    flag = 0;
  if (flag)
    res = max(a,b);
  else
    res = min(a,b);

  printf("%d\n",res);
}
