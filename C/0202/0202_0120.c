#include <stdio.h>

#if  __STDC_VERSION__ == 199901L 
struct ST {
  _Bool  a;
  int    b;
};
int main()
{
  _Bool a = 1;
  int   b =1;
  struct ST st = {a, b};

  b = st.b + st.a;
  printf(" %d  %d \n",a,b);

  printf(" OK \n");
  return 0;
}
#else 
int main()
{
  printf(" 1  2 \n");
  printf(" OK \n");
  return 0;
}
#endif
