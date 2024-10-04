#include<stdio.h>
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
  static int a=20;
  if( a==20 && f() )
      printf(" TEST OK \n");
    else
      printf(" TEST NG = %d \n",a);
}
