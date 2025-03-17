#include <stdlib.h>
#include <stdio.h>
#include <math.h>
extern int a;
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
  a=10;
  st.a=20;
  un.a=30;
  if( a==10 && st.a==20 && un.a==30 )
    printf("CATEGORY TEST OK \n");
  else
    printf("CATEGORY TEST NG \n");
exit (0);
}
int a;
