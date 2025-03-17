#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int main()
{
  {
    int a=10;
    struct {
      int a;
      int b;
    } st;
    st.a=20;
    if( a==10 && st.a==20 )
        printf("CATEGORY TEST OK \n");
      else
        printf("CATEGORY TEST NG = %d \n",a);
  }
exit (0);
}
