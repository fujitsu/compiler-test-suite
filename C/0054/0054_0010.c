#include<stdio.h>
 

int main()
{

 unsigned long int size;

 enum { en1=1 , en2 , en3 , en4 , en5 , en6 , en7 , en8  } enumcns;

long int *         c01 [ 2+3 ] ;

long int volatile c02 [ 2+3 ] ;

long int const     c03 [ 2+3 ] ;

long int           c04 [ 2+3 ] ;

#ifndef _P2SIM_
#define ANS 430080
long int *         c05 [3][en2][sizeof(long int)][en4][en5]
                       [sizeof(long)][en7][en8]  ;
long int volatile  c06 [3][en2][sizeof(long int)][en4][en5]
                       [sizeof(long)][en7][en8]  ;
long int const     c07 [3][en2][sizeof(long int)][en4][en5]
                       [sizeof(long)][en7][en8]  ;
long int           c08 [3][en2][sizeof(long int)][en4][en5]
                       [sizeof(long)][en7][en8]  ;
#else
#define ANS 6144
long int *         c05 [3][en2][sizeof(long int)][en2][en2]
                       [sizeof(long)][en2][en2]  ;
long int volatile  c06 [3][en2][sizeof(long int)][en2][en2]
                       [sizeof(long)][en2][en2]  ;
long int const     c07 [3][en2][sizeof(long int)][en2][en2]
                       [sizeof(long)][en2][en2]  ;
long int           c08 [3][en2][sizeof(long int)][en2][en2]
                       [sizeof(long)][en2][en2]  ;
#endif

   printf("*** 03 ** MK3 TEST ** STARTED ***\n");

 size = sizeof(c01) ;

#if INT64 || LONG64  || __x86_64__ || __aarch64__
   if( size == 40 )
#else
   if( size == 20 )
#endif
   printf("*** 03 - 01 ** OK ***\n");
   else
   printf("*** 03 - 01 ** NG **** SIZE=%d \n",size);

 size = sizeof(c02) ;

#if INT64 || LONG64  || __x86_64__ || __aarch64__
   if( size == 40)
#else
   if( size == 20)
#endif
   printf("*** 03 - 02 ** OK ***\n");
   else
   printf("*** 03 - 02 ** NG **** SIZE=%d \n",size);

 size = sizeof(c03) ;

#if INT64 || LONG64  || __x86_64__ || __aarch64__
   if( size == 40)
#else
   if( size == 20)
#endif
   printf("*** 03 - 03 ** OK ***\n");
   else
   printf("*** 03 - 03 ** NG **** SIZE=%d \n",size);

 size = sizeof(c04) ;

#if INT64 || LONG64  || __x86_64__ || __aarch64__
   if( size == 40)
#else
   if( size == 20)
#endif
   printf("*** 03 - 04 ** OK ***\n");
   else
   printf("*** 03 - 04 ** NG **** SIZE=%d \n",size);

 size = sizeof(c05) ;

#if INT64 || LONG64  || __x86_64__ || __aarch64__
   if( size == 3440640 )
#else
   if( size == ANS )
#endif
   printf("*** 03 - 05 ** OK ***\n");
   else
   printf("*** 03 - 05 ** NG **** SIZE=%d \n",size);

 size = sizeof(c06) ;

#if INT64 || LONG64  || __x86_64__ || __aarch64__
   if( size == 3440640 )
#else
   if( size == ANS )
#endif
   printf("*** 03 - 06 ** OK ***\n");
   else
   printf("*** 03 - 06 ** NG **** SIZE=%d \n",size);

 size = sizeof(c07) ;

#if INT64 || LONG64  || __x86_64__ || __aarch64__
   if( size == 3440640 )
#else
   if( size == ANS )
#endif
   printf("*** 03 - 07 ** OK ***\n");
   else
   printf("*** 03 - 07 ** NG **** SIZE=%d \n",size);

 size = sizeof(c08) ;

#if INT64 || LONG64  || __x86_64__ || __aarch64__
   if( size == 3440640 )
#else
   if( size == ANS )
#endif
   printf("*** 03 - 08 ** OK ***\n");
   else
   printf("*** 03 - 08 ** NG **** SIZE=%d \n",size);

   printf("******* 03 TEST ENDED *******\n");
}
