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
     short :0;
     char  c;
     char  d:1;
     short :0;
     char  f;
     char  g:1;
     short h;
     } st1;

 struct tag2 {          
     char  a;
     int    :0;
     short b;
     int   c:1;
     short  :0;
     int   d:1;
     char  e:1;
     short  :0;
     } st2;

 struct tag3 {          
     char             a;
     int               :0;
     long_long        b ;
     int              c:12;
     int              d:12;
     long_long        e ;
     char             f;
     int               :0;
     long_long        g ;
     } st3;

 struct tag4 {          
     char          a;
     long_long     b;
     long double   c;
     int            :1;
     short         d:2;
     long_long     e;
     char          f;
     long double   g;
     } st4;

 int a;

   printf("*** 05 ** MK3 TEST ** STARTED ***\n");

   a=sizeof(st1);

   if(a== 8 )
   printf("*** 05 - 01 ** OK ***\n");
   else
   printf("*** 05 - 01 ** NG ****\n");

   a=sizeof(st2);

#if INT64
   if(a== 16)
#else
   if(a== 12)
#endif
   printf("*** 05 - 02 ** OK ***\n");
   else
   printf("*** 05 - 02 ** NG %d ****\n",a);

   a=sizeof(st3);

#ifdef nollint
   if(a== 24)
#elif i386
   if(a== 36)
#else
   if(a== 48)
#endif
   printf("*** 05 - 03 ** OK ***\n");
   else
   printf("*** 05 - 03 ** NG ****%d\n",a);

   a=sizeof(st4);

#if solaris1
   if(a== 56)
#elif INT64 || LONG64  || __x86_64__ || __aarch64__
   if(a== 80)
#elif __NO_LONGDOUBLE
   if(a== 56)
#elif i386
   if(a== 52)
#else
   if(a== 72)
#endif
   printf("*** 05 - 04 ** OK ***\n");
   else
   printf("*** 05 - 04 ** NG ****%d\n",a);

   printf("******* 05 TEST ENDED *******\n");
}
