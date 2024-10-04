#include<stdio.h>
 

#if !defined(i386) && !defined(__x86_64__) && !defined(__aarch64__)
typedef long wchar_t;
#else
#include<wchar.h>
#endif

 struct tag01 { unsigned  char  c01;
                 struct {
                                char  c02;
                    unsigned    char  c03;
                    signed      char  c04;
                 } st1 ;
                 signed    char  c05;
 } st01;

 struct tag02 { unsigned  char  c01;
                 struct {
                                short c02;
                    unsigned    int   c03;
                     wchar_t          c04;
                 } st1 ;
                 signed    char  c05;
 } st02;

 struct tag03 { unsigned  int   c01;
                 struct {
                                short c02;
                    unsigned    char  c03;
                    wchar_t           c04;
                 } st1 ;
                 signed    int   c05;
 } st03;

 struct tag04 { unsigned  char  c01;
                 struct {
                                int   c02;
                     float            c03;
#ifdef nollint
                     double           c04;
#else
                     long long  int   c04;
#endif
                 } st1 ;
                 signed    char  c05;
 } st04;

 struct tag05 { unsigned  int   c01;
                 struct {
                                short c02;
                    unsigned    char  c03;
                     wchar_t          c04;
                 } st1 ;
#ifdef nollint
                     double           c05;
#else
                     long long  int   c05;
#endif
 } st05;

 struct tag06 { unsigned  char  c01;
                 struct {
                    char  c02;
                    struct {
                         char  c03;
                         struct {
                                          char  c04;
                              unsigned    char  c05;
                              signed      char  c06;
                           } st1 ;
                         unsigned    char  c07;
                         signed      char  c08;
                      } st2 ;
                    unsigned    char  c09;
                    signed      char  c10;
                 } st3 ;
                 signed    char  c11;
 } st06;

 struct tag07 { unsigned  char  c01;
                 struct {
                    char  c02;
                    struct {
                         char  c03;
                         struct {
                                          short c04;
                              unsigned    char  c05;
                              signed      int   c06;
                           } st1 ;
                         unsigned    char  c07;
                         signed      int   c08;
                      } st2 ;
                    unsigned    char  c09;
                    wchar_t           c10;
                 } st3 ;
                 signed    char  c11;
 } st07;

 struct tag08 { unsigned  char  c01;
                 struct {
                    char  c02;
                    struct {
                         char  c03;
                         struct {
                                          char  c04;
                              unsigned    char  c05;
                              signed      char  c06;
                           } st1 ;
                         unsigned    char  c07;
                         signed      short c08;
                      } st2 ;
                    unsigned    char  c09;
                    wchar_t           c10;
                 } st3 ;
                 signed    int   c11;
 } st08;

 struct tag09 { unsigned  char  c01;
                 struct {
                    char  c02;
                    struct {
                         char  c03;
                         struct {
                                          short c04;
                              unsigned    char  c05;
#ifdef nollint
                              double            c06;
#else
                              long long   int   c06;
#endif
                           } st1 ;
                         unsigned    char  c07;
                         signed      int   c08;
                      } st2 ;
                    unsigned    char  c09;
                    wchar_t           c10;
                 } st3 ;
                 signed    char  c11;
 } st09;

 struct tag10 { unsigned  char  c01;
                 struct {
                    char  c02;
                    struct {
                         char  c03;
                         struct {
                                          char  c04;
                              unsigned    char  c05;
                              signed      char  c06;
                           } st1 ;
                         unsigned    char  c07;
                         signed      short c08;
                      } st2 ;
                    unsigned    char  c09;
                    wchar_t           c10;
                 } st3 ;
#ifdef nollint
                 double            c11;
#else
                 long long   int   c11;
#endif
 } st10;

 struct tag11 { unsigned  char  c01;
                           char  c02;
                 signed    char  c03;
 } st11;

 struct tag12 { unsigned  int   c01;
                           int   c02;
                 signed    int   c03;
 } st12;

 struct tag13 { unsigned  char  c01;
#ifdef nollint
                     double           c04;
#else
                     long long  int   c04;
#endif
                 signed    char  c05;
 } st13;
int main()
{
   int size;

   printf("*** 01 ** MK3 TEST ** STARTED ***\n");

   size = sizeof(st01);

   if(size==5)
   printf("*** 01 - 01 ** OK ***\n");
   else
   printf("*** 01 - 01 ** NG *** SIZE=> %d \n",size);

   size = sizeof(st02);

#if INT64
   if(size==40)
#elif LONG64 
   if(size==32)
#else
   if(size==20)
#endif
   printf("*** 01 - 02 ** OK ***\n");
   else
   printf("*** 01 - 02 ** NG *** SIZE=> %d \n",size);

   size = sizeof(st03);

#if INT64 || LONG64 
   if(size==32)
#else
   if(size==16)
#endif
   printf("*** 01 - 03 ** OK ***\n");
   else
   printf("*** 01 - 03 ** NG *** SIZE=> %d \n",size);

   size = sizeof(st04);

#if INT64
   if(size==40)
#elif i386
   if(size==24)
#else
   if(size==32)
#endif
   printf("*** 01 - 04 ** OK ***\n");
   else
   printf("*** 01 - 04 ** NG *** SIZE=> %d \n",size);

   size = sizeof(st05);

#if INT64 || LONG64 
   if(size==32)
#elif i386
   if(size==20)
#else
   if(size==24)
#endif
   printf("*** 01 - 05 ** OK ***\n");
   else
   printf("*** 01 - 05 ** NG *** SIZE=> %d \n",size);

   size = sizeof(st06);

   if(size==11)
   printf("*** 01 - 06 ** OK ***\n");
   else
   printf("*** 01 - 06 ** NG *** SIZE=> %d \n",size);

   size = sizeof(st07);

#if INT64
   if(size==80)
#elif LONG64 
   if(size==56)
#else
   if(size==40)
#endif
   printf("*** 01 - 07 ** OK ***\n");
   else
   printf("*** 01 - 07 ** NG *** SIZE=> %d \n",size);

   size = sizeof(st08);

#if INT64 || LONG64 
   if(size==40)
#else
   if(size==24)
#endif
   printf("*** 01 - 08 ** OK ***\n");
   else
   printf("*** 01 - 08 ** NG *** SIZE=> %d \n",size);

   size = sizeof(st09);

#if INT64
   if(size==80)
#elif LONG64 
   if(size==72)
#elif i386
   if(size==44)
#else
   if(size==64)
#endif
   printf("*** 01 - 09 ** OK ***\n");
   else
   printf("*** 01 - 09 ** NG *** SIZE=> %d \n",size);

   size = sizeof(st10);

#if INT64 || LONG64 
   if(size==40)
#elif i386
   if(size==28)
#else
   if(size==32)
#endif
   printf("*** 01 - 10 ** OK ***\n");
   else
   printf("*** 01 - 10 ** NG *** SIZE=> %d \n",size);

   size = sizeof(st11);

   if(size==3)
   printf("*** 01 - 11 ** OK ***\n");
   else
   printf("*** 01 - 11 ** NG *** SIZE=> %d \n",size);

   size = sizeof(st12);

#if INT64
   if(size==24)
#else
   if(size==12)
#endif
   printf("*** 01 - 12 ** OK ***\n");
   else
   printf("*** 01 - 12 ** NG *** SIZE=> %d \n",size);

   size = sizeof(st13);

#if defined(gmicro) || defined(i386)
   if(size==16)
#else
   if(size==24)
#endif
   printf("*** 01 - 13 ** OK ***\n");
   else
   printf("*** 01 - 13 ** NG *** SIZE=> %d \n",size);

   printf("*** 01 TEST ENDED ***\n");
}
