#include <stdlib.h>
#include <math.h>
#include  <stdio.h>

#define PRINTANG printf("** NG ** m.a=%d,tt.a=%d\n",m.a,tt.a)
#define PRINTBNG printf("** NG ** m.b=%d,tt.b=%d\n",m.b,tt.b)
#define PRINTOK  printf("** OK ** \n")
 struct t {
            int a;
            int b;
          } tt;
int main()
{
#ifdef __STDC__
   struct t fun(long);
#else
   struct t fun();
#endif
   struct t m;
   long      p;

     printf("*** MPTEST23 START *** \n");
     tt.a=0;
     tt.b=1;
     p=(long)&tt;
     m=fun(p);     
     m.a!=tt.a ? PRINTANG : PRINTOK ;
     m.b!=tt.b ? PRINTBNG : PRINTOK ;
     printf("*** MPTEST23  END  *** \n");
exit (0);
}
struct t fun(s)
   long  s;
{
   struct t *p,st;
   p=(struct t *)s;
   s=0;
   st.a=p->a;
   st.b=p->b;
   return(st);
}
