#include <stdlib.h>
#include <stdio.h>
#include <math.h>
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
r16u=subr16u( );

i8 = r4;
         if (i8==524288LL)
                                  printf("**kaimk2035-(1) ok\n");
  else                            printf("**kaimk2035-(1) ng %x %x\n",
                                          *(int *)&i8,*(((int *)&i8)+1));
i8 = r8;
         if (i8==562949953421312LL)
                                  printf("**kaimk2035-(2) ok\n");
  else                            printf("**kaimk2035-(2) ng %x %x\n",
                                          *(int *)&i8,*(((int *)&i8)+1));
i8 = r16i;
         if (i8==9223372036854775807LL )
                                  printf("**kaimk2035-(3) ok\n");
  else                            printf("**kaimk2035-(3) ng %x %x\n",
                                          *(int *)&i8,*(((int *)&i8)+1));
u8 = r4;
         if (u8==524288LL)
                                  printf("**kaimk2035-(4) ok\n");
  else                            printf("**kaimk2035-(4) ng %x %x\n",
                                          *(int *)&u8,*(((int *)&u8)+1));
u8 = r8;
         if (u8==562949953421312LL)
                                  printf("**kaimk2035-(5) ok\n");
  else                            printf("**kaimk2035-(5) ng %x %x\n",
                                          *(int *)&u8,*(((int *)&u8)+1));
u8 = r16u;
         if (u8= 18446744073709551615LL)
                                  printf("**kaimk2035-(6) ok\n");
  else                            printf("**kaimk2035-(6) ng %x %x\n",
                                          *(int *)&u8,*(((int *)&u8)+1));
exit (0);
}
float subr4( ) { return 5.24288e+5F; }
double subr8( ) { return 5.62949953421312e+14; }
long double subr16i( ) { return 9.223372036854775807e+18L; }
long double subr16u( ) { return 1.8446744073709551615e+19L; }
