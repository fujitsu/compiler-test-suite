#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int main()
{
  struct {
    int a;
    int b;
  } st;
  int f( register int a );
  st.a = 10;
  if( f(st.a) )
      printf("CATEGORY TEST OK \n");
    else
      printf("CATEGORY TEST NG = %d \n",st.a);
exit (0);
}
 
int f( register int a )
{
  if( a==10 )
      return 1;
    else
      return 0;
}
