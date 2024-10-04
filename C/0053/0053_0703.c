#include<stdio.h>
int main()
{
  {
    int a;
    struct {
      int a;
      int b;
    } st;
    a=10;
    st.a=20;
    if( a==10 && st.a==20 )
        printf(" TEST OK \n");
      else
        printf(" TEST NG = %d \n",a);
  }
}
