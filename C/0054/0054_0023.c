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
         char  a;
         struct {
                 char a;
                 short  :0;
                 char c;
                 } st111;
         } st11;
     } st1;

 struct tag2 {          
     char  a;
     struct {
         char  a;
         struct {
                 char a;
                 int    :0;
                 char c;
                 } st222;
         } st22;
     } st2;

 struct tag3 {          
     char  a;
     struct {
         char  a;
         struct {
                 char a;
                 int    :0;
                 long_long   c;
                 } st333;
         } st33;
     } st3;

 struct tag4 {          
     char  a;
     struct {
         char  a;
         struct {
                 char a;
                 int    :0;
                 long double  c;
                 } st444;
         } st44;
     } st4;

 int a;

   printf("*** 03 ** MK3 TEST ** STARTED ***\n");

   a=sizeof(st1);

   if(a== 8 )
   printf("*** 03 - 01 ** OK ***\n");
   else
   printf("*** 03 - 01 ** NG ****\n");

   a=sizeof(st2);

#if INT64
   if(a==11)
#else
   if(a==16)
#endif
   printf("*** 03 - 02 ** OK ***\n");
   else
   printf("*** 03 - 02 ** NG ****\n");

   a=sizeof(st3);

#ifdef nollint
   if(a== 16)
#elif defined(i386)
   if(a== 20)
#else
   if(a== 32)
#endif
   printf("*** 03 - 03 ** OK ***\n");
   else
   printf("*** 03 - 03 ** NG **** a=%d\n",a);

   a=sizeof(st4);

#if INT64 || LONG64  || __x86_64__ || __aarch64__
   if(a== 64)
#elif __NO_LONGDOUBLE
   if(a== 32)
#elif defined(i386)
   if(a== 24)
#else
   if(a== 40)
#endif
   printf("*** 03 - 04 ** OK ***\n");
   else
   printf("*** 03 - 04 ** NG **** a=%d\n",a);

   printf("******* 03 TEST ENDED *******\n");
}
