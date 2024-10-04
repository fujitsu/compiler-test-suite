#include <stdio.h>
int main()
{
   struct tag { int a ; };
   struct tag *p;
    {
      struct tag;
      struct tag *p1;
      struct tag { char a ; };
       {
         struct tag;
         struct tag *p2;
         struct tag { short a ; };
#ifdef uts
         if( sizeof(*p2)==1 && sizeof( struct tag )==2 )
#else
         if( sizeof(*p2)==2 && sizeof( struct tag )==2 )
#endif
          printf("TEST1 OK \n");
         else
          printf("TEST1 NG \n");
       }
#ifdef __STDC__
      if( sizeof(*p1)==1 && sizeof( struct tag )==1 )
#else
      if( sizeof(*p1)==4 && sizeof( struct tag )==1 )
#endif
       printf("TEST2 OK \n");
      else
       printf("TEST2 NG \n");
    }
   if( sizeof(*p)==4 && sizeof( struct tag )==4 )
    printf("TEST3 OK \n");
   else
    printf("TEST3 NG \n");
}
