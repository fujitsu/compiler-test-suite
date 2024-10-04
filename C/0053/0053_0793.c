#include<stdio.h>
int f(a)
int a;
{
  struct {
    int a;
    int b;
  } st;
  st.a=20;
  if ( a==10 && st.a==20 )
      printf(" TEST OK \n");
    else
      printf(" TEST NG = %d \n",a);
}
int main()
{
  f(10);
}
