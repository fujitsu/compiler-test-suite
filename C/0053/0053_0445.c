#include <stdio.h>
struct tag { int a ; };
struct tag *p;
int f()
{
   if( sizeof(*p)==4 && sizeof( struct tag )==4 )
    printf("TEST3 OK \n");
   else
    printf("TEST3 NG \n");
   return 0;
}
int main()
{
    {
       {
         struct tag;
         struct tag *p2;
         struct tag { short a ; };
#ifdef uts
         if( sizeof(*p2)==4 && sizeof( struct tag )==2 )
#else
         if( sizeof(*p2)==2 && sizeof( struct tag )==2 )
#endif
          printf("TEST1 OK \n");
         else
          printf("TEST1 NG \n");
       }
      if( sizeof(*p)==4 && sizeof( struct tag )==4 )
       printf("TEST2 OK \n");
      else
       printf("TEST2 NG \n");
    }

 f();
}