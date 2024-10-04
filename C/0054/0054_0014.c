#include<stdio.h>
 

int main()
{

 unsigned long int size;

 enum { en1=1 , en2 , en3 , en4 , en5 , en6 , en7 , en8  } enumcns;

long double *      c01 [ 2+3 ] ;

long double volatile c02 [ 2+3 ] ;

long double const  c03 [ 2+3 ] ;

long double        c04 [ 2+3 ] ;

#ifndef _P2SIM_
#define ANS1  430080
#if __NO_LONGDOUBLE
#define ANS2 860160
#else
#define ANS2 1720320
#endif

long double *      c05 [3][en2][sizeof(float )][en4][en5]
                       [sizeof(long)][en7][en8]  ;

long double volatile c06 [3][en2][sizeof(float )][en4][en5]
                       [sizeof(long)][en7][en8]  ;

long double const  c07 [3][en2][sizeof(float )][en4][en5]
                       [sizeof(long)][en7][en8]  ;

long double        c08 [3][en2][sizeof(float )][en4][en5]
                       [sizeof(long)][en7][en8]  ;
#else
#define ANS1  6144
#define ANS2 24576
long double *      c05 [3][en2][sizeof(float )][en2][en2]
                       [sizeof(long)][en2][en2]  ;
long double volatile c06 [3][en2][sizeof(float )][en2][en2]
                       [sizeof(long)][en2][en2]  ;
long double const  c07 [3][en2][sizeof(float )][en2][en2]
                       [sizeof(long)][en2][en2]  ;
long double        c08 [3][en2][sizeof(float )][en2][en2]
                       [sizeof(long)][en2][en2]  ;
#endif

   printf("*** 08 ** MK3 TEST ** STARTED ***\n");

 size = sizeof(c01) ;

#if INT64 || LONG64  || __x86_64__ || __aarch64__
   if( size == 40 )
#else
   if( size == 20 )
#endif
   printf("*** 08 - 01 ** OK ***\n");
   else
   printf("*** 08 - 01 ** NG **** SIZE=%d \n",size);

 size = sizeof(c02) ;

#if defined(gmicro) || defined(i386)
   if( size == 60 )
#elif __NO_LONGDOUBLE
   if( size == 40 )
#else
   if( size == 80 )
#endif
   printf("*** 08 - 02 ** OK ***\n");
   else
   printf("*** 08 - 02 ** NG **** SIZE=%d \n",size);

 size = sizeof(c03) ;

#if defined(gmicro) || defined(i386)
   if( size == 60 )
#elif __NO_LONGDOUBLE
   if( size == 40 )
#else
   if( size == 80 )
#endif
   printf("*** 08 - 03 ** OK ***\n");
   else
   printf("*** 08 - 03 ** NG **** SIZE=%d \n",size);

 size = sizeof(c04) ;

#if defined(gmicro) || defined(i386)
   if( size == 60 )
#elif __NO_LONGDOUBLE
   if( size == 40 )
#else
   if( size == 80 )
#endif
   printf("*** 08 - 04 ** OK ***\n");
   else
   printf("*** 08 - 04 ** NG **** SIZE=%d \n",size);

 size = sizeof(c05) ;

#if INT64 || LONG64  || __x86_64__ || __aarch64__
   if( size == 1720320 )
#else
   if( size == ANS1 )
#endif
   printf("*** 08 - 05 ** OK ***\n");
   else
   printf("*** 08 - 05 ** NG **** SIZE=%d \n",size);

 size = sizeof(c06) ;

#if INT64 || LONG64  || __x86_64__ || __aarch64__
   if( size == 3440640 )
#elif defined(i386)
   if( size == 1290240 )
#else
   if( size == ANS2 )
#endif
   printf("*** 08 - 06 ** OK ***\n");
   else
   printf("*** 08 - 06 ** NG **** SIZE=%d \n",size);

 size = sizeof(c07) ;

#if INT64 || LONG64  || __x86_64__ || __aarch64__
   if( size == 3440640 )
#elif defined(i386)
   if( size == 1290240 )
#else
   if( size == ANS2 )
#endif
   printf("*** 08 - 07 ** OK ***\n");
   else
   printf("*** 08 - 07 ** NG **** SIZE=%d \n",size);

 size = sizeof(c08) ;

#if INT64 || LONG64  || __x86_64__ || __aarch64__
   if( size == 3440640 )
#elif defined(i386)
   if( size == 1290240 )
#else
   if( size == ANS2 )
#endif
   printf("*** 08 - 08 ** OK ***\n");
   else
   printf("*** 08 - 08 ** NG **** SIZE=%d \n",size);

   printf("******* 08 TEST ENDED *******\n");
}
