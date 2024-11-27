#include <stdio.h>
#include <limits.h>
 unsigned long long int mask,mask_2,i;
 unsigned long long int x,z;
int main( ) {

 z=x=x-x;
 z=z+1ULL;
 if ((mask=~(~x >>1)) == (mask_2=(z << (sizeof(long long) * CHAR_BIT -1))))
   printf(" start \n");
 else
   printf("%.8x %.8x\n",*(long *)&mask_2, *(((long *)&mask_2)+1));

 i=1LL;
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
