#include<stdio.h>
 

int main()
{

 unsigned long int size;

 enum { en1=1 , en2 , en3 , en4 , en5 , en6 , en7 , en8  } enumcns;

float  *           c01 [ 2+3 ] ;

float  volatile c02 [ 2+3 ] ;

float  const       c03 [ 2+3 ] ;

float              c04 [ 2+3 ] ;

#ifndef _P2SIM_
#define ANS 430080
float  *           c05 [3][en2][sizeof(float )][en4][en5]
                       [sizeof(long)][en7][en8]  ;
float  volatile    c06 [3][en2][sizeof(float )][en4][en5]
                       [sizeof(long)][en7][en8]  ;
float  const       c07 [3][en2][sizeof(float )][en4][en5]
                       [sizeof(long)][en7][en8]  ;
float              c08 [3][en2][sizeof(float )][en4][en5]
                       [sizeof(long)][en7][en8]  ;
#else
#define ANS 6144
float  *           c05 [3][en2][sizeof(float )][en2][en2]
                       [sizeof(long)][en2][en2]  ;
float  volatile    c06 [3][en2][sizeof(float )][en2][en2]
                       [sizeof(long)][en2][en2]  ;
float  const       c07 [3][en2][sizeof(float )][en2][en2]
                       [sizeof(long)][en2][en2]  ;
float              c08 [3][en2][sizeof(float )][en2][en2]
                       [sizeof(long)][en2][en2]  ;
#endif

   printf("*** 06 ** MK3 TEST ** STARTED ***\n");

 size = sizeof(c01) ;

#if INT64 || LONG64  || __x86_64__ || __aarch64__
   if( size == 40 )
#else
   if( size == 20 )
#endif
   printf("*** 06 - 01 ** OK ***\n");
   else
   printf("*** 06 - 01 ** NG **** SIZE=%d \n",size);

 size = sizeof(c02) ;

   if( size == 20)
   printf("*** 06 - 02 ** OK ***\n");
   else
   printf("*** 06 - 02 ** NG **** SIZE=%d \n",size);

 size = sizeof(c03) ;

   if( size == 20)
   printf("*** 06 - 03 ** OK ***\n");
   else
   printf("*** 06 - 03 ** NG **** SIZE=%d \n",size);

 size = sizeof(c04) ;

   if( size == 20)
   printf("*** 06 - 04 ** OK ***\n");
   else
   printf("*** 06 - 04 ** NG **** SIZE=%d \n",size);

 size = sizeof(c05) ;

#if INT64 || LONG64  || __x86_64__ || __aarch64__
   if( size == 1720320 )
#else
   if( size == ANS )
#endif
   printf("*** 06 - 05 ** OK ***\n");
   else
   printf("*** 06 - 05 ** NG **** SIZE=%d \n",size);

 size = sizeof(c06) ;

#if INT64 || LONG64  || __x86_64__ || __aarch64__
   if( size == 860160 )
#else
   if( size == ANS )
#endif
   printf("*** 06 - 06 ** OK ***\n");
   else
   printf("*** 06 - 06 ** NG **** SIZE=%d \n",size);

 size = sizeof(c07) ;

#if INT64 || LONG64  || __x86_64__ || __aarch64__
   if( size == 860160 )
#else
   if( size == ANS )
#endif
   printf("*** 06 - 07 ** OK ***\n");
   else
   printf("*** 06 - 07 ** NG **** SIZE=%d \n",size);

 size = sizeof(c08) ;

#if INT64 || LONG64  || __x86_64__ || __aarch64__
   if( size == 860160 )
#else
   if( size == ANS )
#endif
   printf("*** 06 - 08 ** OK ***\n");
   else
   printf("*** 06 - 08 ** NG **** SIZE=%d \n",size);

   printf("******* 06 TEST ENDED *******\n");
}
