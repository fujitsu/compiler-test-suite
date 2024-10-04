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
         short :0;
         char  c;
         struct {
             char  d:1;
             short :0;
             char  f;
        } st111;
        char  g:1;
     } st11 ;
     short h;
 } st1;

 struct tag2 {          
     char  a;
     struct {
        int    :0;
        short b;
        struct {
           int   c:1;
           short  :0;
           int   d:1;
        } st222;
     } st22;
     char  e:1;
     short  :0;
     } st2;

 struct tag3 {          
     char             a;
     struct {
          int               :0;
          long_long        b ;
          struct {
              int              c:12;
              int              d:12;
              long_long        e ;
              char             f;
              } st333;
     } st33;
     int               :0;
     long_long        g ;
     } st3;

 struct tag4 {          
     char          a;
     struct {
          long_long     b;
          long double   c;
          struct {
              int            :1;
              short         d:2;
              long_long     e;
          }  st444;
     } st44;
     char          f;
     long double   g;
     } st4;

 int a;

   printf("*** 07 ** MK3 TEST ** STARTED ***\n");

   a=sizeof(st1);

   if(a== 12)
   printf("*** 07 - 01 ** OK ***\n");
   else
   printf("*** 07 - 01 ** NG ****,%d\n",a);

   a=sizeof(st2);

#if INT64
   if(a== 32)
#else
   if(a== 16)
#endif
   printf("*** 07 - 02 ** OK ***\n");
   else
   printf("*** 07 - 02 ** NG ****,%d\n",a);

   a=sizeof(st3);

#ifdef nollint
   if(a== 24)
#elif i386
   if(a== 36)
#else
   if(a== 48)
#endif
   printf("*** 07 - 03 ** OK ***\n");
   else
   printf("*** 07 - 03 ** NG ****,%d\n",a);

   a=sizeof(st4);

#if INT64 || LONG64  || __x86_64__ || __aarch64__
   if(a== 96)
#elif solaris1
   if(a== 64)
#elif __NO_LONGDOUBLE
   if(a== 56)
#elif i386
   if(a== 52)
#else
   if(a== 72)
#endif
   printf("*** 07 - 04 ** OK ***\n");
   else
   printf("*** 07 - 04 ** NG **** %d\n",a);

   printf("******* 07 TEST ENDED *******\n");
}
