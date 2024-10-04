#include<stdio.h>
 

int main()
{

 unsigned long int size;

 enum { en1=1 , en2 , en3 , en4 , en5 , en6 , en7 , en8  } enumcns;

double *           c01 [ 2+3 ] ;

double volatile c02 [ 2+3 ] ;

double const c03 [ 2+3 ] ;

double             c04 [ 2+3 ] ;

double *           c05 [3][en2][sizeof(short)][en4][en5]
                       [sizeof(long)][en7][en8]  ;

#ifndef _P2SIM_
#define ANS 430080
double volatile c06 [3][en2][sizeof(short)]
         [en4][en5][sizeof(long)][en7][en8]  ;

double const c07 [3][en2][sizeof(short)]
         [en4][en5][sizeof(long)][en7][en8]  ;

double             c08 [3][en2][sizeof(short)][en4][en5]
                       [sizeof(long)][en7][en8]  ;
#else
#define ANS 6144
double volatile c06 [3][en2][sizeof(short)]
         [en2][en2][sizeof(long)][en2][en2]  ;
double const    c07 [3][en2][sizeof(short)]
         [en2][en2][sizeof(long)][en2][en2]  ;
double          c08 [3][en2][sizeof(short)]
         [en2][en2][sizeof(long)][en2][en2]  ;
#endif

   printf("*** 07 ** MK3 TEST ** STARTED ***\n");

 size = sizeof(c01) ;

#if INT64 || LONG64  || __x86_64__ || __aarch64__
   if( size == 40 )
#else
   if( size == 20 )
#endif
   printf("*** 07 - 01 ** OK ***\n");
   else
   printf("*** 07 - 01 ** NG **** SIZE=%d \n",size);

 size = sizeof(c02) ;

   if( size == 40)
   printf("*** 07 - 02 ** OK ***\n");
   else
   printf("*** 07 - 02 ** NG **** SIZE=%d \n",size);

 size = sizeof(c03) ;

   if( size == 40)
   printf("*** 07 - 03 ** OK ***\n");
   else
   printf("*** 07 - 03 ** NG **** SIZE=%d \n",size);

 size = sizeof(c04) ;

   if( size == 40)
   printf("*** 07 - 04 ** OK ***\n");
   else
   printf("*** 07 - 04 ** NG **** SIZE=%d \n",size);

 size = sizeof(c05) ;

#if INT64 || LONG64  || __x86_64__ || __aarch64__
   if( size == 860160 )
#else
   if( size == 215040 )
#endif
   printf("*** 07 - 05 ** OK ***\n");
   else
   printf("*** 07 - 05 ** NG **** SIZE=%d \n",size);

 size = sizeof(c06) ;

#if INT64 || LONG64  || __x86_64__ || __aarch64__
   if( size == 860160 )
#else
   if( size == ANS )
#endif
   printf("*** 07 - 06 ** OK ***\n");
   else
   printf("*** 07 - 06 ** NG **** SIZE=%d \n",size);

 size = sizeof(c07) ;

#if INT64 || LONG64  || __x86_64__ || __aarch64__
   if( size == 860160 )
#else
   if( size == ANS )
#endif
   printf("*** 07 - 07 ** OK ***\n");
   else
   printf("*** 07 - 07 ** NG **** SIZE=%d \n",size);

 size = sizeof(c08) ;

#if INT64 || LONG64  || __x86_64__ || __aarch64__
   if( size == 860160 )
#else
   if( size == ANS )
#endif
   printf("*** 07 - 08 ** OK ***\n");
   else
   printf("*** 07 - 08 ** NG **** SIZE=%d \n",size);

   printf("******* 07 TEST ENDED *******\n");
}
