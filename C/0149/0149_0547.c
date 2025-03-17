#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int f()
{
  struct {
    int a;
    int b;
  } st;
  st.a = 10;
  if( st.a==10 )
      return 1;
    else
      return 0;
}
int main()
{
  int a=20;
  if( a==20 && f() )
      printf("CATEGORY TEST OK \n");
    else
      printf("CATEGORY TEST NG = %d \n",a);
exit (0);
}
