#include<stdio.h>
 

#ifdef nollint
  typedef long      long_long;
#else
  typedef long long long_long;
#endif
int main()
{

 struct tag1 {          
     char  a;
     struct {
         short b;
         char  c;
         struct {
             char  d;
             short e;
             char  f;
        } st111;
        char  g;
     } st11 ;
     short h;
 } st1;

 struct tag2 {          
     char  a;
     struct {
        int   b;
        short c;
        struct {
           int   d;
           short e;
           int   f;
        } st222;
     } st22;
     char  g;
     short h;
     } st2;

 struct tag3 {          
     char             a;
     struct {
          int              b;
          long_long        c;
          struct {
              int              d;
              int              e;
              long_long        f;
              char             g;
              } st333;
     } st33;
     int              h;
     long_long        i ;
     } st3;

 struct tag4 {          
     char          a;
     struct {
          long_long     b;
          long double   c;
          struct {
              int           d;
              short         e;
              long double   f;
          }  st444;
     } st44;
     char          g;
     long double   h;
     } st4;

 int a;

   printf("*** 08 ** MK3 TEST ** STARTED ***\n");

   a=sizeof(st1);

   if(a== 16)
   printf("*** 08 - 01 ** OK ***\n");
   else
   printf("*** 08 - 01 ** NG ****\n");

   a=sizeof(st2);

#if INT64
   if(a== 56)
#else
   if(a== 28)
#endif
   printf("*** 08 - 02 ** OK ***\n");
   else
   printf("*** 08 - 02 ** NG %d ****\n",a);

   a=sizeof(st3);

#ifdef nollint
   if(a== 36)
#elif INT64
   if(a== 72)
#elif i386
   if(a== 48)
#else
   if(a== 64)
#endif
   printf("*** 08 - 03 ** OK ***\n");
   else
   printf("*** 08 - 03 ** NG %d ****\n",a);

   a=sizeof(st4);

#if INT64 || LONG64 || __x86_64__ || __aarch64__
   if(a== 112)
#elif __NO_LONGDOUBLE
   if(a== 56)
#elif i386
   if(a== 60)
#else
   if(a== 80)
#endif
   printf("*** 08 - 04 ** OK ***\n");
   else
   printf("*** 08 - 04 ** NG **** a=%d\n",a);

   printf("******* 08 TEST ENDED *******\n");
}
