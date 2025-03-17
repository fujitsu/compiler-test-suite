#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int main()
{
  int func( int a );
  struct {
    int a;
    int b;
  } st;
  st.a=20;
  if( st.a==20 && func(10) )
      printf("CATEGORY TEST OK \n");
    else
      printf("CATEGORY TEST NG = %d \n",st.a);
exit (0);
}
 
int func( int a )
{
  if ( a == 10 )
      return 1;
    else
      return 0;
}
