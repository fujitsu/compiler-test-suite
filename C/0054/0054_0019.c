#include<stdio.h>
 

struct tag01 {
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

struct tag02 {
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

struct tag03 {
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
       struct {
              float    a;
              long     :0;
              float    b;
       } st33;
 }st3 ;

struct tag04 {
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
       struct {
              float    a;
              long     :0;
              float    b;
       } st44;
 }st4;

struct tag05 {
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

struct tag06 {
       unsigned char    :1;
       signed char    :1;
       char  :1;
       unsigned char    :1;
       char  :1;
       signed char    :1;
       char  :1;
       unsigned char    :1;
       char  :1;
 }st6 ;

struct tag07 {
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
 }st7;

struct tag08 {
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

   printf("*** 03 ** MK3 TEST ** STARTED ***\n");

 size = sizeof(st1) ;

#if INT64
   if( size == 24 )
#elif LONG64  || __x86_64__ || __aarch64__
   if( size == 16 )
#else
   if( size == 12 )
#endif
   printf("*** 03 - 01 ** OK ***\n");
   else
   printf("*** 03 - 01 ** NG **** SIZE=%lu \n",size);

 size = sizeof(st2) ;

#if INT64 || LONG64  || __x86_64__ || __aarch64__
#if __clang__ || __GNUC__
   if( size == 32 )
#else
   if( size == 24 )
#endif
#else
   if( size == 20 )
#endif
   printf("*** 03 - 02 ** OK ***\n");
   else
   printf("*** 03 - 02 ** NG **** SIZE=%lu \n",size);

 size = sizeof(st3) ;

#if INT64 || LONG64  || __x86_64__ || __aarch64__
#if __clang__ || __GNUC__
   if( size == 16 )
#else
   if( size == 12 )
#endif
#else
   if( size == 8 )
#endif
   printf("*** 03 - 03 ** OK ***\n");
   else
   printf("*** 03 - 03 ** NG **** SIZE=%lu \n",size);

 size = sizeof(st4) ;

#if INT64 || LONG64  || __x86_64__ || __aarch64__
#if __clang__ || __GNUC__
   if( size == 24 )
#else
   if( size == 16 )
#endif
#else
   if( size == 12 )
#endif
   printf("*** 03 - 04 ** OK ***\n");
   else
   printf("*** 03 - 04 ** NG **** SIZE=%lu \n",size);

 size = sizeof(st5) ;

   if( size == 2 )
   printf("*** 03 - 05 ** OK ***\n");
   else
   printf("*** 03 - 05 ** NG **** SIZE=%lu \n",size);

 size = sizeof(st6) ;

   if( size == 2 )
   printf("*** 03 - 06 ** OK ***\n");
   else
   printf("*** 03 - 06 ** NG **** SIZE=%lu \n",size);

 size = sizeof(st7) ;

   if( size == 2 )
   printf("*** 03 - 07 ** OK ***\n");
   else
   printf("*** 03 - 07 ** NG **** SIZE=%lu \n",size);

 size = sizeof(st8) ;

#if __clang__ || __GNUC__
   if( size == 8 )
#else
   if( size == 5 )
#endif
   printf("*** 03 - 08 ** OK ***\n");
   else
   printf("*** 03 - 08 ** NG **** SIZE=%lu \n",size);

   printf("******* 03 TEST ENDED *******\n");
}
