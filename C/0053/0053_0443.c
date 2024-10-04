#include <stdio.h>
struct stag {
               int a;
}s={10};
struct stag;
struct stag st={20};
struct stag;
struct stag *p=&s;
struct stag;
struct stag *q=&st;

int f()
{
   if( s.a==10 &&
       s.a==p->a &&
       st.a==20 &&
       q->a==20 )
      printf("TEST3 OK \n");
   else
      printf("TEST3 NG \n");
   return 0;
}
int main()
{
   if( sizeof(st)==4 )
      printf("TEST1 OK \n");
   else
      printf("TEST1 NG \n");

   if( sizeof(struct stag)==4 &&
       sizeof(struct stag)==sizeof(*p) )
      printf("TEST2 OK \n");
   else
      printf("TEST2 NG \n");

   f();
}

