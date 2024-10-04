#include<stdio.h>
 

int main()
{

 unsigned long int size;

 enum { en1=1 , en2 , en3 , en4 , en5 , en6 , en7 , en8  } enumcns;

char  *            c01 [ 2+3 ] ;

char  volatile     c02 [ 2+3 ] ;

char  const        c03 [ 2+3 ] ;

char               c04 [ 2+3 ] ;

char  *            c05 [3][en2][sizeof(short)][en4][en5]
                       [sizeof(long)][en7][en8]  ;

char  volatile     c06 [3][en2][sizeof(short)][en4][en5]
                       [sizeof(long)][en7][en8]  ;

char  const        c07 [3][en2][sizeof(short)][en4][en5]
                       [sizeof(long)][en7][en8]  ;

char               c08 [3][en2][sizeof(short)][en4][en5]
                       [sizeof(long)][en7][en8]  ;

   printf("*** 01 ** MK3 TEST ** STARTED ***\n");

 size = sizeof(c01) ;

#if INT64 || LONG64  || __x86_64__ || __aarch64__
   if( size == 40 )
#else
   if( size == 20 )
#endif
   printf("*** 01 - 01 ** OK ***\n");
   else
   printf("*** 01 - 01 ** NG **** SIZE=%d \n",size);

 size = sizeof(c02) ;

   if( size == 5 )
   printf("*** 01 - 02 ** OK ***\n");
   else
   printf("*** 01 - 02 ** NG **** SIZE=%d \n",size);

 size = sizeof(c03) ;

   if( size == 5 )
   printf("*** 01 - 03 ** OK ***\n");
   else
   printf("*** 01 - 03 ** NG **** SIZE=%d \n",size);

 size = sizeof(c04) ;

   if( size == 5 )
   printf("*** 01 - 04 ** OK ***\n");
   else
   printf("*** 01 - 04 ** NG **** SIZE=%d \n",size);

 size = sizeof(c05) ;

#if INT64 || LONG64  || __x86_64__ || __aarch64__
   if( size == 860160 )
#else
   if( size == 215040 )
#endif
   printf("*** 01 - 05 ** OK ***\n");
   else
   printf("*** 01 - 05 ** NG **** SIZE=%d \n",size);

 size = sizeof(c06) ;

#if INT64 || LONG64  || __x86_64__ || __aarch64__
   if( size == 107520 )
#else
   if( size == 53760 )
#endif
   printf("*** 01 - 06 ** OK ***\n");
   else
   printf("*** 01 - 06 ** NG **** SIZE=%d \n",size);

 size = sizeof(c07) ;

#if INT64 || LONG64  || __x86_64__ || __aarch64__
   if( size == 107520 )
#else
   if( size == 53760 )
#endif
   printf("*** 01 - 07 ** OK ***\n");
   else
   printf("*** 01 - 07 ** NG **** SIZE=%d \n",size);

 size = sizeof(c08) ;

#if INT64 || LONG64  || __x86_64__ || __aarch64__
   if( size == 107520 )
#else
   if( size == 53760 )
#endif
   printf("*** 01 - 08 ** OK ***\n");
   else
   printf("*** 01 - 08 ** NG **** SIZE=%d \n",size);

   printf("******* 01 TEST ENDED *******\n");
}
