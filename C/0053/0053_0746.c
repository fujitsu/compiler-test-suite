#include<stdio.h>
int main()
{
  {
    struct {
      int a;
      int b;
    } st;
    int a=20;
    st.a=10;
    if( a==20 && st.a==10 )
        printf(" TEST OK \n");
      else
        printf(" TEST NG = %d \n",a);
  }
}
