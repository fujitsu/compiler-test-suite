#include<stdio.h>
 

int main()
{

 unsigned long int size;

 enum { en1=1 , en2 , en3 , en4 , en5 , en6 , en7 , en8  } enumcns;

short int *        c01 [ 2+3 ] ;

short int volatile c02 [ 2+3 ] ;

short int const    c03 [ 2+3 ] ;

short int          c04 [ 2+3 ] ;

short int *        c05 [3][en2][sizeof(short int)][en4][en5]
                       [sizeof(long)][en7][en8]  ;

short int volatile c06 [3][en2][sizeof(short int)][en4][en5]
                       [sizeof(long)][en7][en8]  ;

short int const    c07 [3][en2][sizeof(short int)][en4][en5]
                       [sizeof(long)][en7][en8]  ;

short int          c08 [3][en2][sizeof(short int)][en4][en5]
                       [sizeof(long)][en7][en8]  ;

   printf("*** 04 ** MK3 TEST ** STARTED ***\n");

 size = sizeof(c01) ;

#if INT64 || LONG64  || __x86_64__ || __aarch64__
   if( size == 40 )
#else
   if( size == 20 )
#endif
   printf("*** 04 - 01 ** OK ***\n");
   else
   printf("*** 04 - 01 ** NG **** SIZE=%d \n",size);

 size = sizeof(c02) ;

   if( size == 10)
   printf("*** 04 - 02 ** OK ***\n");
   else
   printf("*** 04 - 02 ** NG **** SIZE=%d \n",size);

 size = sizeof(c03) ;

   if( size == 10)
   printf("*** 04 - 03 ** OK ***\n");
   else
   printf("*** 04 - 03 ** NG **** SIZE=%d \n",size);

 size = sizeof(c04) ;

   if( size == 10)
   printf("*** 04 - 04 ** OK ***\n");
   else
   printf("*** 04 - 04 ** NG **** SIZE=%d \n",size);

 size = sizeof(c05) ;

#if INT64 || LONG64  || __x86_64__ || __aarch64__
   if( size == 860160 )
#else
   if( size == 215040 )
#endif
   printf("*** 04 - 05 ** OK ***\n");
   else
   printf("*** 04 - 05 ** NG **** SIZE=%d \n",size);

 size = sizeof(c06) ;

#if INT64 || LONG64  || __x86_64__ || __aarch64__
   if( size == 215040 )
#else
   if( size == 107520 )
#endif
   printf("*** 04 - 06 ** OK ***\n");
   else
   printf("*** 04 - 06 ** NG **** SIZE=%d \n",size);

 size = sizeof(c07) ;

#if INT64 || LONG64  || __x86_64__ || __aarch64__
   if( size == 215040 )
#else
   if( size == 107520 )
#endif
   printf("*** 04 - 07 ** OK ***\n");
   else
   printf("*** 04 - 07 ** NG **** SIZE=%d \n",size);

 size = sizeof(c08) ;

#if INT64 || LONG64  || __x86_64__ || __aarch64__
   if( size == 215040 )
#else
   if( size == 107520 )
#endif
   printf("*** 04 - 08 ** OK ***\n");
   else
   printf("*** 04 - 08 ** NG **** SIZE=%d \n",size);

   printf("******* 04 TEST ENDED *******\n");
}
