#include <stdio.h>


#include <setjmp.h>
jmp_buf env;
int get_int(x)
int x;
{
  return x;
}
int main(void)
{
  int a,b,c;
  long double get_long_double(),d;
  int t[10];
  int i;

  printf ("###  START ###\n");
  a=get_int(1,0);
  b=get_int(2,0);
  d=get_long_double((long double)3.3,0);

  for (i = 0; i < 10; i++){
    t[i] = get_int(i,0);
    switch (t[i]){
    case 0:
      if (i == 0)
        printf ("###     OK- 0      ###\n");
      else
        printf ("###     NG- 0      ###\n");
      break;
    case 1:
      if (i == 1)
        printf ("###     OK- 1      ###\n");
      else
        printf ("###     NG- 1      ###\n");
      break;
    case 2:
      if (i == 2)
        printf ("###     OK- 2      ###\n");
      else
        printf ("###     NG- 2      ###\n");
      break;
    case 3:
      if (i == 3)
        printf ("###     OK- 3      ###\n");
      else
        printf ("###     NG- 3      ###\n");
      break;
    case 4:
      if (i == 4)
        printf ("###     OK- 4      ###\n");
      else
        printf ("###     NG- 4      ###\n");
      break;
    case 5:
      if (i == 5)
        printf ("###     OK- 5      ###\n");
      else
        printf ("###     NG- 5      ###\n");
      break;
    case 6:
      if (i == 6)
        printf ("###     OK- 6      ###\n");
      else
        printf ("###     NG- 6      ###\n");
      break;
    case 7:
      if (i == 7)
        printf ("###     OK- 7      ###\n");
      else
        printf ("###     NG- 7      ###\n");
      break;
    case 8:
      if (i == 8)
        printf ("###     OK- 8      ###\n");
      else
        printf ("###     NG- 8      ###\n");
      break;
    case 9:
      if (i == 9)
        printf ("###     OK- 9      ###\n");
      else
        printf ("###     NG- 9      ###\n");
      break;
    default:
      break;
    }
  }
  if (a==1 && b==2)
    printf ("###     OK-10      ###\n");
  else
    printf ("###     NG-10      ###\n");

  c=setjmp(env);
  if(c==0)
    printf ("###     OK-11      ###\n");
  else
    printf ("###     NG-11      ###\n");

  if (d==3.3)
    printf ("###     OK-12      ###\n");
  else
    printf ("###     NG-12      ###\n");
  printf ("###  END   ###\n");
  return 0;
}
long double get_long_double(x)
long double x;
{
  return x;
}
