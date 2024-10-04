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

extern int a;
int main()
{
  if( a==0 && f() )
      printf(" TEST OK \n");
    else
      printf(" TEST NG = %d \n",a);
}
int a=0;
