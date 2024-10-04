#include<stdio.h>
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
    printf("\n");
}
int a;
