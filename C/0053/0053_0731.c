#include<stdio.h>
int main()
{
  {
    extern int a;
    struct {
      int a;
      int b;
    } st;
    st.a=20;
    if( a==0 && st.a==20 )
        printf(" TEST OK \n");
      else
        printf(" TEST NG = %d \n",a);
  }
}
int a=0;
