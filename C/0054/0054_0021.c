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
     } st1;

 struct tag2 {          
     char  a;
     int   :0;
     short c;
     } st2;

 struct tag3 {          
     char  a;
     int    :0;
     long_long c;
     } st3;

 struct tag4 {          
     char  a;
     int   :0;
     long double  c;
     } st4;

 int a;

   printf("*** 01 ** MK3 TEST ** STARTED ***\n");

   a=sizeof(st1);

   if(a == 4 )
   printf("*** 01 - 01 ** OK ***\n");
   else
   printf("*** 01 - 01 ** NG ****\n");

   a=sizeof(st2);

#if INT64
   if(a == 10)
#else
   if(a == 8)
#endif
   printf("*** 01 - 02 ** OK ***\n");
   else
   printf("*** 01 - 02 ** NG ****\n");

   a=sizeof(st3);

#ifdef nollint
   if(a== 8)
#elif defined(i386)
   if(a== 12)
#else
   if(a== 16)
#endif
   printf("*** 01 - 03 ** OK ***\n");
   else
   printf("*** 01 - 03 ** NG **** a=%d\n",a);

   a=sizeof(st4);

#if INT64 || LONG64  || __x86_64__ || __aarch64__
   if(a== 32)
#elif defined(__NO_LONGDOUBLE) || defined(i386)
   if(a== 16)
#else
   if(a== 24)
#endif
   printf("*** 01 - 04 ** OK ***\n");
   else
   printf("*** 01 - 04 ** NG **** a=%d\n",a);

   printf("******* 01 TEST ENDED *******\n");
}
