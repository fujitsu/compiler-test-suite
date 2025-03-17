#include <stdio.h>
#include <math.h>
int main()
{
#if defined(solaris1) || defined(_WIN32) || defined(__mips) || defined(__uxps__) || defined(INT64) || defined(LONG64) || defined(__i386__) || defined(__i386) || defined(__SunOS_5_9) || defined(__x86_64__) || defined(__aarch64__) || defined(_LP64)

printf("f1=MIN VALUE OF FLOAT M style 4FAFFFFF E0000000 \n");
printf("f1=MAX VALUE OF FLOAT M style CFAFFFFF E0000000 \n");
printf("f1=MAX VALUE OF IEEE FLOAT 47B99429 6C70B2F0 \n");
printf("f1=MAX VALUE OF IEEE FLOAT 2.139095e+09  \n");

#else
 double f1,f2,f3;
 float f4 = 0x7f7fffff;
 f1 = (1-pow(16.0,-6.0))*(pow(16.0,63.0));
 printf("f1=MIN VALUE OF FLOAT M style %X %X \n",f1);
 f2 = -((1-pow(16.0,-6.0))*(pow(16.0,63.0)));
 printf("f1=MAX VALUE OF FLOAT M style %X %X \n",f2);
 f3 = 3.4 * (pow(10.0,37.0));
 printf("f1=MAX VALUE OF IEEE FLOAT %X %X \n",f3);
 printf("f1=MAX VALUE OF IEEE FLOAT %e  \n",f4);
#endif
}
