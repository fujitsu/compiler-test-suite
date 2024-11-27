#include <stdio.h>
int main( ) {
float r4;
double r8;
long double r16;
unsigned long long int u8
                ,subu8a( )
                ,subu8b( )
                ,subu8c( )
                ,subu8d( )
                ,subu8e( )
                ,subu8f( );

u8 = subu8a( );
r4 = u8;
         if (r4== 5.24288e+5F)
                                  printf("**(1) ok\n");
  else                            printf("**(1) ng %x\n",r4);
u8 = subu8c( );
r8 = u8;
         if (r8== 5.62949953421312e+14)
                                  printf("**(2) ok\n");
  else                            printf("**(2) ng %x %x\n",
                                          *(int *)&r8,*(((int *)&r8)+1));
u8 = subu8e( );
r16 = u8;
         if (r16==9.223372036854775808e+18L )
                                  printf("**(3) ok\n");
  else                            printf("**(3) ng %x %x %x %x\n",
                                          *(int *)&r16,
                                          *(((int *)&r16)+1),
                                          *(((int *)&r16)+2),
                                          *(((int *)&r16)+3));
u8 = subu8f( );
r16 = u8;
         if (r16==1.8446744073709551615e+19L )
                                  printf("**(4) ok\n");
  else                            printf("**(4) ng %x %x %x %x\n",
                                          *(int *)&r16,
                                          *(((int *)&r16)+1),
                                          *(((int *)&r16)+2),
                                          *(((int *)&r16)+3));
}
unsigned long long int subu8a( ) { return  524288UL; }
unsigned long long int subu8c( ) { return  562949953421312UL; }
unsigned long long int subu8e( ) { return  9223372036854775808UL; }
unsigned long long int subu8f( ) { return  18446744073709551615UL; }
