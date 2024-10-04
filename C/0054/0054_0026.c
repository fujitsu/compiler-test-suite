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
     short b;
     char  c;
     short d;
     short e;
     char  f;
     char  g;
     short h;
     } st1;

 struct tag2 {          
     char  a;
     int   b;
     short c;
     int   d;
     short e;
     int   f;
     char  g;
     short h;
     } st2;

 struct tag3 {          
     char             a;
     int              b;
     int              d;
     long_long        c;
     int              e;
     long_long        f;
     char             g;
     short            h;
     } st3;

 struct tag4 {          
     char          a;
     long_long     b;
     long double   c;
     int           d;
     short         e;
     long_long     f;
     char          g;
     long double   h;
     } st4;

 int a;

   printf("*** 06 ** MK3 TEST ** STARTED ***\n");

   a=sizeof(st1);

   if(a== 14)
   printf("*** 06 - 01 ** OK ***\n");
   else
   printf("*** 06 - 01 ** NG ****\n");

   a=sizeof(st2);

#if INT64
   if(a== 56)
#else
   if(a== 28)
#endif
   printf("*** 06 - 02 ** OK ***\n");
   else
   printf("*** 06 - 02 ** NG %d ****\n",a);

   a=sizeof(st3);

#ifdef nollint
   if(a== 28)
#elif INT64
   if(a== 56)
#elif i386
   if(a== 36)
#else
   if(a== 48)
#endif
   printf("*** 06 - 03 ** OK ***\n");
   else
   printf("*** 06 - 03 ** NG %d ****\n",a);

   a=sizeof(st4);

#if INT64 || LONG64  || __x86_64__ || __aarch64__
   if(a== 80)
#elif solaris1
   if(a== 56)
#elif __NO_LONGDOUBLE
   if(a== 56)
#elif i386
   if(a== 56)
#else
   if(a== 72)
#endif
   printf("*** 06 - 04 ** OK ***\n");
   else
   printf("*** 06 - 04 ** NG **** a=%d\n",a);

   printf("******* 06 TEST ENDED *******\n");
}
