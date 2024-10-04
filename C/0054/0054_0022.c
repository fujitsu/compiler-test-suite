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
     } st1;

 struct tag2 {          
     char  a;
     int   b;
     short c;
     } st2;

 struct tag3 {          
     char  a;
     long_long b;
     int   c;
     } st3;

 struct tag4 {          
     char  a;
     long double  b;
     int   c;
     } st4;

 int a;

   printf("*** 02 ** MK3 TEST ** STARTED ***\n");

   a=sizeof(st1);

   if(a== 6 )
   printf("*** 02 - 01 ** OK ***\n");
   else
   printf("*** 02 - 01 ** NG ****\n");

   a=sizeof(st2);

#if INT64
   if(a== 24)
#else
   if(a== 12)
#endif
   printf("*** 02 - 02 ** OK ***\n");
   else
   printf("*** 02 - 02 ** NG ****\n");

   a=sizeof(st3);

#ifdef nollint
   if(a== 12)
#elif defined(i386)
   if(a== 16)
#else
   if(a== 24)
#endif
   printf("*** 02 - 03 ** OK ***\n");
   else
   printf("*** 02 - 03 ** NG **** a=%d\n",a);
   
   a=sizeof(st4);

#if INT64 || LONG64  || __x86_64__ || __aarch64__
   if(a== 48)
#elif defined(i386)
   if(a== 20)
#elif __NO_LONGDOUBLE
   if(a== 24)
#else
   if(a== 32)
#endif
   printf("*** 02 - 04 ** OK ***\n");
   else
   printf("*** 02 - 04 ** NG **** a=%d\n",a);

   printf("******* 02 TEST ENDED *******\n");
}
