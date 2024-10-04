#include<stdio.h>
int main()
{
  struct {
    int a;
    int b;
  } st;
  int f( register int a );
  st.a = 10;
  if( f(st.a) )
      printf(" TEST OK \n");
    else
      printf(" TEST NG = %d \n",st.a);
}

int f( register int a )
{
  if( a==10 )
      return 1;
    else
      return 0;
}
