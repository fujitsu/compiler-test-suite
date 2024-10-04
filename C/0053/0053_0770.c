#include<stdio.h>
int main()
{
  int func( int a );
  struct {
    int a;
    int b;
  } st;
  st.a=20;
  if( st.a==20 && func(10) )
      printf(" TEST OK \n");
    else
      printf(" TEST NG = %d \n",st.a);
}

int func( int a )
{
  if ( a == 10 )
      return 1;
    else
      return 0;
}
