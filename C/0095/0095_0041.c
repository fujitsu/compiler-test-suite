#include <stdio.h>
int main( ) {
volatile register int i;
long int a=0x70000000;
long long int c=0x70000000LL;
long long int b,d,z[5],x[5];

for (i=0; i<5; i++) {
  a=a+i;
  c=c+(long long)i;
  b=~ ((long long )a << 32);
  d=~((*(volatile    long long *) &c) << 32);

  if ((~b) ==(~d) && b == d) {
    z[i]=b;
    x[i]=d;
  }
  else {
    z[i]=0;
    x[i]=0;
    printf("%.8x %.8x\n",*(long*)&b,*(((long*)&b)+1));
    printf("%.8x %.8x\n",*(long*)&d,*(((long*)&d)+1));
    printf("%.8x %.8x\n",~(*(long*)&b),~(*(((long*)&b)+1)));
    printf("%.8x %.8x\n",~(*(long*)&d),~(*(((long*)&d)+1)));
    goto L2;
  }
L1:;
   a=0x70000000;
   c=0x70000000LL;
L2:;
}
  if (z[i-1]==x[i-1]
   && z[i-2]==z[i-2]
   && z[i-3]==z[i-3]
   && z[i-4]==z[i-4]
   && z[i-5]==z[i-5])
    printf(" ok\n");
}
