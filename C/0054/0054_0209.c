#include<stdio.h>
 

#if !defined(i386) && !defined(__x86_64__) && !defined(__aarch64__)
typedef long wchar_t;
#else
#include<wchar.h>
#endif

 union  tag01 { unsigned  char  c01;
                 union  {
                                char  c02;
                    unsigned    char  c03;
                    signed      char  c04;
                 } st1 ;
                 signed    char  c05;
 } st01;

 union  tag02 { unsigned  char  c01;
                 union  {
                                short c02;
                    unsigned    int   c03;
                     wchar_t          c04;
                 } st1 ;
                 signed    char  c05;
 } st02;

 union  tag03 { unsigned  int   c01;
                 union  {
                                short c02;
                    unsigned    char  c03;
                     wchar_t          c04;
                 } st1 ;
                 signed    int   c05;
 } st03;

 union  tag04 { unsigned  char  c01;
                 union  {
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

 union  tag05 { unsigned  int   c01;
                 union  {
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

 union  tag06 { unsigned  char  c01;
                 union  {
                    char  c02;
                    union  {
                         char  c03;
                         union  {
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

 union  tag07 { unsigned  char  c01;
                 union  {
                    char  c02;
                    union  {
                         char  c03;
                         union  {
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

 union  tag08 { unsigned  char  c01;
                 union  {
                    char  c02;
                    union  {
                         char  c03;
                         union  {
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

 union  tag09 { unsigned  char  c01;
                 union  {
                    char  c02;
                    union  {
                         char  c03;
                         union  {
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

 union  tag10 { unsigned  char  c01;
                 union  {
                    char  c02;
                    union  {
                         char  c03;
                         union  {
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

 union  tag11 { unsigned  char  c01;
                           char  c02;
                 signed    char  c03;
 } st11;

 union  tag12 { unsigned  int   c01;
                           int   c02;
                 signed    int   c03;
 } st12;

 union  tag13 { unsigned  char  c01;
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

   printf("*** 03 ** MK3 TEST ** STARTED ***\n");

   size = sizeof(st01);

   if(size==1)
   printf("*** 03 - 01 ** OK ***\n");
   else
   printf("*** 03 - 01 ** NG *** SIZE=> %d \n",size);

   size = sizeof(st02);

#if INT64 || LONG64 
   if(size==8)
#else
   if(size==4)
#endif
   printf("*** 03 - 02 ** OK ***\n");
   else
   printf("*** 03 - 02 ** NG *** SIZE=> %d \n",size);

   size = sizeof(st03);

#if INT64 || LONG64
   if(size==8)
#else
   if(size==4)
#endif 
   printf("*** 03 - 03 ** OK ***\n");
   else
   printf("*** 03 - 03 ** NG *** SIZE=> %d \n",size);

   size = sizeof(st04);

#ifdef gmicro
   if(size==8)
#else
   if(size==8)
#endif
   printf("*** 03 - 04 ** OK ***\n");
   else
   printf("*** 03 - 04 ** NG *** SIZE=> %d \n",size);

   size = sizeof(st05);

#ifdef gmicro
   if(size==8)
#else
   if(size==8)
#endif
   printf("*** 03 - 05 ** OK ***\n");
   else
   printf("*** 03 - 05 ** NG *** SIZE=> %d \n",size);

   size = sizeof(st06);

   if(size==1)
   printf("*** 03 - 06 ** OK ***\n");
   else
   printf("*** 03 - 06 ** NG *** SIZE=> %d \n",size);

   size = sizeof(st07);

#if INT64 || LONG64 
   if(size==8)
#else
   if(size==4)
#endif
   printf("*** 03 - 07 ** OK ***\n");
   else
   printf("*** 03 - 07 ** NG *** SIZE=> %d \n",size);

   size = sizeof(st08);

#if INT64 || LONG64 
   if(size==8)
#else
   if(size==4)
#endif
   printf("*** 03 - 08 ** OK ***\n");
   else
   printf("*** 03 - 08 ** NG *** SIZE=> %d \n",size);

   size = sizeof(st09);

#ifdef gmicro
   if(size==8)
#else
   if(size==8)
#endif
   printf("*** 03 - 09 ** OK ***\n");
   else
   printf("*** 03 - 09 ** NG *** SIZE=> %d \n",size);

   size = sizeof(st10);

#ifdef gmicro
   if(size==8)
#else
   if(size==8)
#endif
   printf("*** 03 - 10 ** OK ***\n");
   else
   printf("*** 03 - 10 ** NG *** SIZE=> %d \n",size);

   size = sizeof(st11);

   if(size==1)
   printf("*** 03 - 11 ** OK ***\n");
   else
   printf("*** 03 - 11 ** NG *** SIZE=> %d \n",size);

   size = sizeof(st12);

#if INT64
   if(size==8)
#else
   if(size==4)
#endif
   printf("*** 03 - 12 ** OK ***\n");
   else
   printf("*** 03 - 12 ** NG *** SIZE=> %d \n",size);

   size = sizeof(st13);

#ifdef gmicro
   if(size==8)
#else
   if(size==8)
#endif
   printf("*** 03 - 13 ** OK ***\n");
   else
   printf("*** 03 - 13 ** NG *** SIZE=> %d \n",size);

   printf("*** 03 TEST ENDED ***\n");
}
