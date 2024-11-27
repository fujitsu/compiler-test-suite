#include <stdlib.h>
#include <math.h>
#include  <stdio.h>
int main()
{
    struct tag {
      unsigned int a:4;
      unsigned int b:4;
    } st;
    st.a=0;
    for(st.b=0;st.b<3;st.b++)
      st.a+=st.b;
    if( st.a != 3 ) puts(" NG ");
    else            puts(" OK ");
exit (0);
}
