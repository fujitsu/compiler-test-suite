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
                 char   a;
                 short  b;
                 char   c;
                 } st111;
         } st11;
     } st1;

 struct tag2 {          
     char  a;
     struct {
         char  a;
         struct {
                 char a;
                 int  b;
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
                 int  b;
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
                 int  b;
                 long double  c;
                 } st444;
         } st44;
     } st4;

 int a;

   printf("*** 04 ** MK3 TEST ** STARTED ***\n");

   a=sizeof(st1);

   if(a==10 )
   printf("*** 04 - 01 ** OK ***\n");
   else
   printf("*** 04 - 01 ** NG ****\n");

   a=sizeof(st2);

#if INT64
   if(a==40)
#else
   if(a==20)
#endif
   printf("*** 04 - 02 ** OK ***\n");
   else
   printf("*** 04 - 02 ** NG %d ****\n",a);

   a=sizeof(st3);

#ifdef nollint
   if(a== 20)
#elif INT64
   if(a== 40)
#elif i386
   if(a== 24)
#else
   if(a== 32)
#endif
   printf("*** 04 - 03 ** OK ***\n");
   else
   printf("*** 04 - 03 ** NG %d ****\n",a);

   a=sizeof(st4);

#if INT64 || LONG64  || __x86_64__ || __aarch64__
   if(a== 64)
#elif __NO_LONGDOUBLE
   if(a== 32)
#elif i386
   if(a== 28)
#else
   if(a== 40)
#endif
   printf("*** 04 - 04 ** OK ***\n");
   else
   printf("*** 04 - 04 ** NG **** a=%d\n",a);

   printf("******* 04 TEST ENDED *******\n");
}
