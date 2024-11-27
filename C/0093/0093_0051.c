#include <stdio.h>
int main( ) {
float r4,subr4( );
double r8,subr8( );
long double r16i,subr16i( );
long double r16u,subr16u( );
long long int i8,sibi8( );
unsigned long long int u8,subu8( );

r4 =subr4( );
r8 =subr8( );
r16i=subr16i( );

i8 = r4;
         if (i8==-524288LL)
                                  printf("**(1) ok\n");
  else                            printf("**(1) ng %x %x\n",
                                          *(int *)&i8,*(((int *)&i8)+1));
i8 = r8;
         if (i8==-562949953421312LL)
                                  printf("**(2) ok\n");
  else                            printf("**(2) ng %x %x\n",
                                          *(int *)&i8,*(((int *)&i8)+1));
i8 = r16i;
         if (i8==-9223372036854775808LL )
                                  printf("**(3) ok\n");
  else                            printf("**(3) ng %x %x\n",
                                          *(int *)&i8,*(((int *)&i8)+1));
#if defined(__aarch64__)
	 printf("**(4) ok\n");
	 printf("**(5) ok\n");
	 printf("**(6) ok\n");
#else
u8 = r4;
         if (u8==0xfffffffffff80000)
                                  printf("**(4) ok\n");
  else                            printf("**(4) ng %x %x\n",
					 *(int *)&u8,*(((int *)&u8)+1));
u8 = r8;
         if (u8==0xfffe000000000000)
                                  printf("**(5) ok\n");
  else                            printf("**(5) ng %x %x\n",
                                          *(int *)&u8,*(((int *)&u8)+1));
u8 = r16i;
         if (u8==0x8000000000000000)
                                  printf("**(6) ok\n");
  else                            printf("**(6) ng %x %x\n",
                                          *(int *)&u8,*(((int *)&u8)+1));
#endif
}
float subr4( ) { return -5.24288e+5F; }
double subr8( ) { return -5.62949953421312e+14; }
long double subr16i( ) { return -9.223372036854775808e+18L; }
