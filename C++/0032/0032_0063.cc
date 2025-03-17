#include <stdio.h>
int main()
{
    struct tag {
      unsigned int a:4;
      unsigned int b:4;
    } st;
    int i=0;
    st.a=st.b=0;
    for (st.b=0; st.b < 3; st.b++) {
      st.a += st.b;
    }

    if( st.a != 3 && st.b != 3) printf(" NG %d %d\n",st.a, st.b);
    else            printf("ok\n");
  }
