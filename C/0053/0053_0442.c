#include <stdio.h>
struct tag {
          struct stag {
                         int a;
          }s;
};
struct stag *q;

int f()
{
   if( sizeof(struct stag)==4 &&
       sizeof(struct stag)==sizeof(*q) )
      printf("TEST3 OK \n");
   else
      printf("TEST3 NG \n");
   return 0;
}
int main()
{
   struct  tag;
   struct stag st;
   struct stag;
   struct stag *p;
   struct stag {
                  char a ;
   };
   if( sizeof(st)==4 )
      printf("TEST1 OK \n");
   else
      printf("TEST1 NG \n");

   if( sizeof(struct stag)==1 &&
#ifdef uts
       4==sizeof(*p) )
#else
       sizeof(struct stag)==sizeof(*p) )
#endif
      printf("TEST2 OK \n");
   else
      printf("TEST2 NG \n");

   f();
}

