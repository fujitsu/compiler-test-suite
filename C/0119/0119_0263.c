#include <stdlib.h>
#include <math.h>
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
long double             f3=255.125;
int main()
 {
 printf("* TP=SCPIN04 ENTERED *\n");
 if(a==-128)                   printf(" ** SCPIN04.01 OK **\n");
                          else printf(" ** SCPIN04.01 NG **\n");
 if(b==0x1234)                 printf(" ** SCPIN04.02 OK **\n");
                          else printf(" ** SCPIN04.02 NG **\n");
 if(c==0xabcd)                 printf(" ** SCPIN04.03 OK **\n");
                          else printf(" ** SCPIN04.03 NG **\n");
 if(d==1023)                   printf(" ** SCPIN04.04 OK **\n");
                          else printf(" ** SCPIN04.04 NG **\n");
 if(a1=='u')                   printf(" ** SCPIN04.05 OK **\n");
                          else printf(" ** SCPIN04.05 NG **\n");
 if(b1==10)                    printf(" ** SCPIN04.06 OK **\n");
                          else printf(" ** SCPIN04.06 NG **\n");
 if(c1==30)                    printf(" ** SCPIN04.07 OK **\n");
                          else printf(" ** SCPIN04.07 NG **\n");
 if(d1==60)                    printf(" ** SCPIN04.08 OK **\n");
                          else printf(" ** SCPIN04.08 NG **\n");
 if(f1==123.875)               printf(" ** SCPIN04.09 OK **\n");
                          else printf(" ** SCPIN04.09 NG **\n");
 if(f2==-12345.75)             printf(" ** SCPIN04.10 OK **\n");
                          else printf(" ** SCPIN04.10 NG **\n");
 if(f3==255.125)               printf(" ** SCPIN04.11 OK **\n");
                          else printf(" ** SCPIN04.11 NG **\n");
 printf("  * SCPIN04 ENDED *\n\n");
exit (0);
 }
