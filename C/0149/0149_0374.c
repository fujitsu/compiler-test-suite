#include <stdlib.h>
#include <stdio.h>
#include <math.h>
static int a;
int main()
{
  struct {
           int a;
           char b;
         }st;
  union  {
           int a;
           char b;
         }un;
  st.a=20;
  un.a=30;
  if( a==0 && st.a==20 && un.a==30 )
    printf("CATEGORY TEST OK \n");
  else
    printf("CATEGORY TEST NG \n");
exit (0);
}
