#include<stdio.h>
int main()
{
  {
    struct {
      int a;
      int b;
    } st;
    extern int a;
    a=20;
    st.a=10;
    if( a==20 && st.a==10 )
        printf(" TEST OK \n");
      else
        printf(" TEST NG = %d \n",a);
  }
}
int a;
