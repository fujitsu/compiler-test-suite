#include <stdlib.h>
#include <math.h>
#include  <stdio.h>

struct tag {
   int a,b,c;
   }st;
int main()
{
    int a,ng=0;
    struct tag f(int),*f2(int),*p;
    a = 10;
    p = f2(a);
    if(p->a == 10)
      printf("***** SCOSC20 - 01 *** O    K *****\n");
    else
      ng++;
    a = 20;
    st = f(a);
    if(st.a == 20)
      printf("***** SCOSC20 - 01 *** O    K *****\n");
    else
      ng++;
    switch(ng)
    {
      case 1:
        printf("****** SCOSC20 - 01 ** N      G ******\n");
        break;
      case 2:
        printf("****** SCOSC20 - 02 ** N      G ******\n");
    }
exit (0);
}
struct tag f(int a)
{
   struct tag *p;
   st.a = a;
   return st;
}
struct tag *f2(int a)
{
   struct tag *p;
   p=&st;
   p->a = a;
   return p;
}
