#include<stdio.h>
 

union  tag01 {
       int   a;
       char  :0;
       short b;
       int   c:1;
       long int d:2;
       long int  :2;
       long int  :0;
       long int  :0;
       struct {
              float    a;
              long     :0;
       } st11;
       long int  :0;
       long int  :0;
 }st1 ;

union  tag02 {
       int   :0;
       char  :0;
       short :4;
       int   c:1;
       long int d:2;
       long int  :2;
       long int  :22;
       long int  :23;
       struct {
              float    a;
              long     :0;
              float    b;
       } st22;
       unsigned  long int  :2;
       long int  :0;
 }st2 ;

union  tag03 {
       unsigned char    :0;
       signed char    :0;
       char  :0;
       short :0;
       short int :0;
       unsigned short :0;
       signed short :0;
       int          :0;
       unsigned     :0;
       unsigned  int :0;
       unsigned  long int :0;
       signed     :0;
       signed  int :0;
       signed  long int :0;
       long int :0;
       long  :0;
       union  {
              float    a;
              long     :0;
              float    b;
       } st33;
 }st3 ;

union  tag04 {
       unsigned char    :1;
       signed char    :1;
       char  :1;
       short :1;
       short int :1;
       unsigned short :1;
       signed short :1;
       int          :1;
       unsigned     :1;
       unsigned  int :1;
       unsigned  long int :1;
       signed     :1;
       signed  int :1;
       signed  long int :1;
       long int :1;
       long  :1;
       union  {
              float    a;
              long     :0;
              float    b;
       } st44;
 }st4;

union  tag05 {
       unsigned char    :1;
       signed char    :1;
       char  :1;
       unsigned char    :1;
       char  :1;
       signed char    :1;
       char  :1;
       unsigned char    :1;
       char  :1;
 }st5;

union  tag06 {
       unsigned char    :1;
       signed char    :1;
       char  :1;
       unsigned char    :1;
       char  :1;
       signed char    :1;
       char  :1;
       unsigned char    :1;
       char  :1;
       union { int  :1; } st66;
 }st6 ;

union  tag07 {
       unsigned char    :0;
       unsigned char    :1;
       unsigned char   a:1;
       unsigned char    :1;
       unsigned char    :1;
       unsigned char    :1;
       unsigned char    :1;
       unsigned char    :1;
       signed char      :1;
       char             :1;
       unsigned char    :1;
       short            :0;
       signed short     :0;
       union { int  :1; } st77;
 }st7;

union  tag08 {
       int                    :1;
       long                   :1;
       long int               :1;
       unsigned               :1;
       unsigned long          :1;
       unsigned long int      :1;
       signed                 :1;
       signed long            :1;
       signed long int        :1;
       int                    :1;
       long                   :1;
       long int               :1;
       unsigned               :1;
       int                    :1;
       unsigned long          :1;
       unsigned long int      :1;
       int                    :1;
       signed                 :1;
       signed long            :1;
       signed long int        :1;
       int                    :1;
       long                   :1;
       int                    :1;
       long int               :1;
       unsigned               :1;
       long                   :1;
       unsigned long          :1;
       unsigned long int      :1;
       signed                 :1;
       long                   :1;
       signed long            :1;
       long                   :1;
       signed long int        :1;
 }st8;
int main()
{

 unsigned long int size;

   printf("*** 04 ** MK3 TEST ** STARTED ***\n");

 size = sizeof(st1) ;

#if INT64 || LONG64 || __x86_64__ || __aarch64__ || defined(_LP64)
   if( size == 8 )
#else
   if( size == 4 )
#endif
   printf("*** 04 - 01 ** OK ***\n");
   else
   printf("*** 04 - 01 ** NG **** SIZE=%lu \n",size);

 size = sizeof(st2) ;

#if INT64 || LONG64 || __x86_64__ || __aarch64__  || defined(_LP64)
   if( size == 16 )
#else
   if( size == 8 )
#endif
   printf("*** 04 - 02 ** OK ***\n");
   else
   printf("*** 04 - 02 ** NG **** SIZE=%lu \n",size);

 size = sizeof(st3) ;

#if __clang__ || __gcc__
   if( size == 8 )
#else
   if( size == 4 )
#endif
   printf("*** 04 - 03 ** OK ***\n");
   else
   printf("*** 04 - 03 ** NG **** SIZE=%lu \n",size);

 size = sizeof(st4) ;

#if INT64 || LONG64 || __x86_64__ || __aarch64__
   if( size == 8 )
#else
   if( size == 4 )
#endif
   printf("*** 04 - 04 ** OK ***\n");
   else
   printf("*** 04 - 04 ** NG **** SIZE=%lu \n",size);

 size = sizeof(st5) ;

   if( size == 1 )
   printf("*** 04 - 05 ** OK ***\n");
   else
   printf("*** 04 - 05 ** NG **** SIZE=%lu \n",size);

 size = sizeof(st6) ;

#if INT64
   if( size == 8 )
#elif __clang__ || __gcc__
   if( size == 4 )
#else
   if( size == 1 )
#endif
   printf("*** 04 - 06 ** OK ***\n");
   else
   printf("*** 04 - 06 ** NG **** SIZE=%lu \n",size);

 size = sizeof(st7) ;

#if INT64
   if( size == 8 )
#elif __clang__ || __gcc__
   if( size == 4 )
#else
   if( size == 1 )
#endif
   printf("*** 04 - 07 ** OK ***\n");
   else
   printf("*** 04 - 07 ** NG **** SIZE=%lu \n",size);

 size = sizeof(st8) ;

#if INT64 || LONG64 || __x86_64__ || __aarch64__
   if( size == 8 )
#else
   if( size == 4 )
#endif
   printf("*** 04 - 08 ** OK ***\n");
   else
   printf("*** 04 - 08 ** NG **** SIZE=%lu \n",size);

   printf("******* 04 TEST ENDED *******\n");
}
