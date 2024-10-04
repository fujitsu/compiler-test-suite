#include<stdio.h>
 

#if !defined(i386) && !defined(__x86_64__) && !defined(__aarch64__)
typedef long wchar_t;
#else
#include<wchar.h>
#endif

 struct tag01 { unsigned  char  c01[2];
                 struct {
                                char  c02;
                    unsigned    char  c03[4];
                    signed      char  c04;
                 } st1[2] ;
                 signed    char  c05;
 } st01;

 struct tag02 { unsigned  char  c01;
                 struct {
                                short c02;
                    unsigned    int   c03[3];
                     wchar_t          c04[2];
                 } st1 ;
                 signed    char  c05;
 } st02;

 struct tag03 { unsigned  int   c01;
                 struct {
                                short c02[2];
                    unsigned    char  c03;
                     wchar_t          c04;
                 } st1[2] ;
                 signed    int   c05;
 } st03;

 struct tag04 { unsigned  char  c01;
                 struct {
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

 struct tag05 { unsigned  int   c01;
                 struct {
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

 struct tag06 { unsigned  char  c01;
                 struct {
                    char  c02[3];
                    struct {
                         char  c03;
                         struct {
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

 struct tag07 { unsigned  char  c01;
                 struct {
                    char  c02;
                    struct {
                         char  c03;
                         struct {
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

 struct tag08 { unsigned  char  c01;
                 struct {
                    char  c02;
                    struct {
                         char  c03;
                         struct {
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

 struct tag09 { unsigned  char  c01;
                 struct {
                    char  c02;
                    struct {
                         char  c03;
                         struct {
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

 struct tag10 { unsigned  char  c01[6];
                 struct {
                    char  c02;
                    struct {
                         char  c03;
                         struct {
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

 struct tag11 { unsigned  char  c01[3];
                           char  c02[4];
                 signed    char  c03[2];
 } st11;

 struct tag12 { unsigned  int   c01[2];
                           int   c02[3];
                 signed    int   c03[4];
 } st12;

 struct tag13 { unsigned  char  c01;
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

   printf("*** 02 ** MK3 TEST ** STARTED ***\n");

   size = sizeof(st01);

   if(size==15)
   printf("*** 02 - 01 ** OK ***\n");
   else
   printf("*** 02 - 01 ** NG *** SIZE=> %d \n",size);

   size = sizeof(st02);

#if INT64
   if(size==64)
#elif LONG64 
   if(size==48)
#else
   if(size==32)
#endif
   printf("*** 02 - 02 ** OK ***\n");
   else
   printf("*** 02 - 02 ** NG *** SIZE=> %d \n",size);

   size = sizeof(st03);

#if INT64 || LONG64 
   if(size==48)
#else
   if(size==32)
#endif
   printf("*** 02 - 03 ** OK ***\n");
   else
   printf("*** 02 - 03 ** NG *** SIZE=> %d \n",size);

   size = sizeof(st04);

#if INT64
   if(size==48)
#elif i386
   if(size==32)
#else
   if(size==40)
#endif
   printf("*** 02 - 04 ** OK ***\n");
   else
   printf("*** 02 - 04 ** NG *** SIZE=> %d \n",size);

   size = sizeof(st05);

#if INT64 || LONG64 
   if(size==40)
#elif i386
   if(size==28)
#else
   if(size==32)
#endif
   printf("*** 02 - 05 ** OK ***\n");
   else
   printf("*** 02 - 05 ** NG *** SIZE=> %d \n",size);

   size = sizeof(st06);

   if(size==32)
   printf("*** 02 - 06 ** OK ***\n");
   else
   printf("*** 02 - 06 ** NG *** SIZE=> %d \n",size);

   size = sizeof(st07);

#if INT64
   if(size==112)
#elif LONG64 
   if(size==80)
#else
   if(size==56)
#endif
   printf("*** 02 - 07 ** OK ***\n");
   else
   printf("*** 02 - 07 ** NG *** SIZE=> %d \n",size);

   size = sizeof(st08);

#if INT64
   if(size==64)
#elif LONG64 
   if(size==56)
#else
   if(size==48)
#endif
   printf("*** 02 - 08 ** OK ***\n");
   else
   printf("*** 02 - 08 ** NG *** SIZE=> %d \n",size);

   size = sizeof(st09);

#if INT64
   if(size==112)
#elif LONG64 
   if(size==104)
#elif i386
   if(size==72)
#else
   if(size==88)
#endif
   printf("*** 02 - 09 ** OK ***\n");
   else
   printf("*** 02 - 09 ** NG *** SIZE=> %d \n",size);

   size = sizeof(st10);

#if INT64 || LONG64 
   if(size==96)
#else
   if(size==80)
#endif
   printf("*** 02 - 10 ** OK ***\n");
   else
   printf("*** 02 - 10 ** NG *** SIZE=> %d \n",size);

   size = sizeof(st11);

   if(size==9)
   printf("*** 02 - 11 ** OK ***\n");
   else
   printf("*** 02 - 11 ** NG *** SIZE=> %d \n",size);

   size = sizeof(st12);

#if INT64
   if(size==72)
#else
   if(size==36)
#endif
   printf("*** 02 - 12 ** OK ***\n");
   else
   printf("*** 02 - 12 ** NG *** SIZE=> %d \n",size);

   size = sizeof(st13);

#if gmicro || i386
   if(size==32)
#else
   if(size==40)
#endif
   printf("*** 02 - 13 ** OK ***\n");
   else
   printf("*** 02 - 13 ** NG *** SIZE=> %d \n",size);

   printf("*** 02 TEST ENDED ***\n");
}
