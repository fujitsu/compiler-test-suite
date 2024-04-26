#include  <stdio.h>

signed char             a=-128;
short int               b=0x1234;
int                     c=0xabcd;
long long int           d=1023;
unsigned char           a1='u';
unsigned short          b1=10;
unsigned int            c1=30;
unsigned long long int  d1=60;
float                   f1=123.875;
double                  f2=-12345.75;
#ifdef NO_LONG_DOUBLE
double             f3=255.125;
#else
long double             f3=255.125;
#endif
int main()
 {
 printf("* ENTERED *\n");
 if(a==-128)                   printf(" ** 01 OK **\n");
                          else printf(" ** 01 NG **\n");
 if(b==0x1234)                 printf(" ** 02 OK **\n");
                          else printf(" ** 02 NG **\n");
 if(c==0xabcd)                 printf(" ** 03 OK **\n");
                          else printf(" ** 03 NG **\n");
 if(d==1023)                   printf(" ** 04 OK **\n");
                          else printf(" ** 04 NG **\n");
 if(a1=='u')                   printf(" ** 05 OK **\n");
                          else printf(" ** 05 NG **\n");
 if(b1==10)                    printf(" ** 06 OK **\n");
                          else printf(" ** 06 NG **\n");
 if(c1==30)                    printf(" ** 07 OK **\n");
                          else printf(" ** 07 NG **\n");
 if(d1==60)                    printf(" ** 08 OK **\n");
                          else printf(" ** 08 NG **\n");
 if(f1==123.875)               printf(" ** 09 OK **\n");
                          else printf(" ** 09 NG **\n");
 if(f2==-12345.75)             printf(" ** 10 OK **\n");
                          else printf(" ** 10 NG **\n");
 if(f3==255.125)               printf(" ** 11 OK **\n");
                          else printf(" ** 11 NG **\n");
 printf("  * ENDED *\n\n");
 }
