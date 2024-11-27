#include <stdio.h>
#include <limits.h>
#if INT64
 unsigned long int m,m2;
 unsigned long int x,z;
 unsigned __int32 mask,mask_2,i;
#elif LONG64 || __x86_64__ || __aarch64__
 unsigned long int m,m2;
 unsigned long int x,z;
 unsigned int mask,mask_2,i;
#else
 unsigned long int mask,mask_2,i;
 unsigned long int x,z;
#endif
int main( ) {

 z=x=x-x;
 z=z+1U;
#if INT64 || LONG64 || __x86_64__ || __aarch64__
 if ((m=~(~x >>1)) == (m2=(z << (sizeof(long) * CHAR_BIT -1))))
#else
 if ((mask=~(~x >>1)) == (mask_2=(z << (sizeof(long) * CHAR_BIT -1))))
#endif
   printf(" start \n");
 else
   printf("%.8x\n",mask_2);

#if INT64 || LONG64 || __x86_64__ || __aarch64__
  mask = m>>32;
  mask_2 = m2>>32;
#endif

 i=1U;
 do {
    while ( mask!=0 ) {
      if ((i & mask) != 0)
        printf("1");
      else
        printf("0");
      mask >>= 1;
    }
    printf("\n");
    mask=mask_2;
    i<<=1;
    if (!i) break;
 }
 while( i );
 printf(" end \n");
}
