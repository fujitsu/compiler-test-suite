#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int main()
{
  {
    struct {
      int a;
      int b;
    } st;
    int a;
    a=20;
    st.a=10;
    if( a==20 && st.a==10 )
        printf("CATEGORY TEST OK \n");
      else
        printf("CATEGORY TEST NG = %d \n",a);
  }
exit (0);
}
