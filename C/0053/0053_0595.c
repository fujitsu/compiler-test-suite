#include<stdio.h>
int main()
{
  int a=10;
  struct {
           int a;
           int b;
         }st;
  st.a=20;
  if( a==10 && st.a==20 )
    printf("\n");
}
