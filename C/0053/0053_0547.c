#include<stdio.h>
int a;
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
    printf("\n");
}
