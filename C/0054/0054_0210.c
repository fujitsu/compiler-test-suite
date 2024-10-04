#include<stdio.h>
 

#if !defined(i386) && !defined(__x86_64__) && !defined(__aarch64__)
typedef long wchar_t;
#else
#include<wchar.h>
#endif

 union  tag01 { unsigned  char  c01[2];
                 union  {
                                char  c02;
                    unsigned    char  c03[4];
                    signed      char  c04;
                 } st1[2] ;
                 signed    char  c05;
 } st01;

 union  tag02 { unsigned  char  c01;
                 union  {
                                short c02;
                    unsigned    int   c03[3];
                     wchar_t          c04[2];
                 } st1 ;
                 signed    char  c05;
 } st02;

 union  tag03 { unsigned  int   c01;
                 union  {
                                short c02[2];
                    unsigned    char  c03;
                     wchar_t          c04;
                 } st1[2] ;
                 signed    int   c05;
 } st03;

 union  tag04 { unsigned  char  c01;
                 union  {
                                int   c02;
                     float            c03;
#ifdef nollint
                     double           c04[2];
#else
                     long long  int   c04[2];
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
                     double           c05[2];
#else
                     long long  int   c05[2];
#endif
 } st05;

 union  tag06 { unsigned  char  c01;
                 union  {
                    char  c02[3];
                    union  {
                         char  c03;
                         union  {
                                          char  c04;
                              unsigned    char  c05[3];
                              signed      char  c06;
                           } st1 ;
                         unsigned    char  c07;
                         signed      char  c08[3];
                      } st2 ;
                    unsigned    char  c09;
                    signed      char  c10;
                 } st3[2] ;
                 signed    char  c11;
 } st06;

 union  tag07 { unsigned  char  c01;
                 union  {
                    char  c02;
                    union  {
                         char  c03;
                         union  {
                                          short c04;
                              unsigned    char  c05[2];
                              signed      int   c06;
                           } st1[2] ;
                         unsigned    char  c07;
                         signed      int   c08;
                      } st2 ;
                    unsigned    char  c09;
                    wchar_t           c10[3];
                 } st3 ;
                 signed    char  c11;
 } st07;

 union  tag08 { unsigned  char  c01;
                 union  {
                    char  c02;
                    union  {
                         char  c03;
                         union  {
                                          char  c04[3];
                              unsigned    char  c05;
                              signed      char  c06[3];
                           } st1 ;
                         unsigned    char  c07;
                         signed      short c08[2];
                      } st2[2] ;
                    unsigned    char  c09;
                    wchar_t           c10;
                 } st3 ;
                 signed    int   c11[2];
 } st08;

 union  tag09 { unsigned  char  c01;
                 union  {
                    char  c02;
                    union  {
                         char  c03;
                         union  {
                                          short c04[2];
                              unsigned    char  c05;
#ifdef nollint
                              double            c06;
#else
                              long long   int   c06;
#endif
                           } st1[2] ;
                         unsigned    char  c07;
                         signed      int   c08;
                      } st2 ;
                    unsigned    char  c09;
                    wchar_t           c10[3];
                 } st3 ;
                 signed    char  c11;
 } st09;

 union  tag10 { unsigned  char  c01[6];
                 union  {
                    char  c02;
                    union  {
                         char  c03;
                         union  {
                                          char  c04[4];
                              unsigned    char  c05;
                              signed      char  c06[3];
                           } st1 ;
                         unsigned    char  c07;
                         signed      short c08;
                      } st2[2] ;
                    unsigned    char  c09;
                    wchar_t           c10;
                 } st3[2];
#ifdef nollint
                 double            c11;
#else
                 long long   int   c11;
#endif
 } st10;

 union  tag11 { unsigned  char  c01[3];
                           char  c02[4];
                 signed    char  c03[2];
 } st11;

 union  tag12 { unsigned  int   c01[2];
                           int   c02[3];
                 signed    int   c03[4];
 } st12;

 union  tag13 { unsigned  char  c01;
#ifdef nollint
                     double           c04[3];
#else
                     long long  int   c04[3];
#endif
                 signed    char  c05;
 } st13;
int main()
{
   int size;

   printf("*** 04 ** MK3 TEST ** STARTED ***\n");

   size = sizeof(st01);

   if(size==8)
   printf("*** 04 - 01 ** OK ***\n");
   else
   printf("*** 04 - 01 ** NG *** SIZE=> %d \n",size);

   size = sizeof(st02);

#if INT64
   if(size==24)
#elif LONG64 
   if(size==16)
#else
   if(size==12)
#endif
   printf("*** 04 - 02 ** OK ***\n");
   else
   printf("*** 04 - 02 ** NG *** SIZE=> %d \n",size);

   size = sizeof(st03);

#if INT64 || LONG64 
   if(size==16)
#else
   if(size==8)
#endif
   printf("*** 04 - 03 ** OK ***\n");
   else
   printf("*** 04 - 03 ** NG *** SIZE=> %d \n",size);

   size = sizeof(st04);

#ifdef gmicro
   if(size==16)
#else
   if(size==16)
#endif
   printf("*** 04 - 04 ** OK ***\n");
   else
   printf("*** 04 - 04 ** NG *** SIZE=> %d \n",size);

   size = sizeof(st05);

#ifdef gmicro
   if(size==16)
#else
   if(size==16)
#endif
   printf("*** 04 - 05 ** OK ***\n");
   else
   printf("*** 04 - 05 ** NG *** SIZE=> %d \n",size);

   size = sizeof(st06);

   if(size==6)
   printf("*** 04 - 06 ** OK ***\n");
   else
   printf("*** 04 - 06 ** NG *** SIZE=> %d \n",size);

   size = sizeof(st07);

#if INT64 || LONG64 
   if(size==24)
#else
   if(size==12)
#endif
   printf("*** 04 - 07 ** OK ***\n");
   else
   printf("*** 04 - 07 ** NG *** SIZE=> %d \n",size);

   size = sizeof(st08);

#if INT64
   if(size==16)
#else
   if(size==8)
#endif
   printf("*** 04 - 08 ** OK ***\n");
   else
   printf("*** 04 - 08 ** NG *** SIZE=> %d \n",size);

   size = sizeof(st09);

#if INT64 || LONG64 
   if(size==24)
#else
   if(size==16)
#endif
   printf("*** 04 - 09 ** OK ***\n");
   else
   printf("*** 04 - 09 ** NG *** SIZE=> %d \n",size);

   size = sizeof(st10);

#ifdef gmicro
   if(size==16)
#else
   if(size==16)
#endif
   printf("*** 04 - 10 ** OK ***\n");
   else
   printf("*** 04 - 10 ** NG *** SIZE=> %d \n",size);

   size = sizeof(st11);

   if(size==4)
   printf("*** 04 - 11 ** OK ***\n");
   else
   printf("*** 04 - 11 ** NG *** SIZE=> %d \n",size);

   size = sizeof(st12);

#if INT64
   if(size==32)
#else
   if(size==16)
#endif
   printf("*** 04 - 12 ** OK ***\n");
   else
   printf("*** 04 - 12 ** NG *** SIZE=> %d \n",size);

   size = sizeof(st13);

#ifdef gmicro
   if(size==24)
#else
   if(size==24)
#endif
   printf("*** 04 - 13 ** OK ***\n");
   else
   printf("*** 04 - 13 ** NG *** SIZE=> %d \n",size);

   printf("*** 04 TEST ENDED ***\n");
}
