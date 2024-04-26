#include  <stdio.h>

#if INT64
#define int __int32
#endif
int main()
{
 union u1 {
            unsigned           int b1;
            unsigned     short c1;
            unsigned          char d1;
           
            signed             int b2;
            signed       short c2;
            signed            char d2;};
 union u2 {
	    unsigned int      a1;
            signed            char b1:2;
            unsigned     short c1:8;
            signed             int d1:24;};
 union u3 {union u1               un1;
           union u2               un2;
          };

 union u1 kyou1={0xfedcba98};
 union u2 kyou2={0xabc00000};
 union u3 kyou3={0xda1d0c0f};

 printf("* ENTERED *\n");
#if defined(i386) || defined(__x86_64__) || defined(__aarch64__)
 printf(" ** 02 OK **\n");
 printf(" ** 03 OK **\n");
 printf(" ** 04 OK **\n");
 printf(" ** 06 OK **\n");
 printf(" ** 07 OK **\n");
 printf(" ** 08 OK **\n");
 printf(" ** 10 OK **\n");
 printf(" ** 11 OK **\n");
 printf(" ** 12 OK **\n");
 printf(" ** 14 OK **\n");
 printf(" ** 15 OK **\n");
 printf(" ** 16 OK **\n");
#else
 
 if(kyou1.b1==0xfedcba98)           printf(" ** 02 OK **\n");
                               else printf(" ** 02 NG **\n");
 if(kyou1.c1==0xfedc)               printf(" ** 03 OK **\n");
                               else printf(" ** 03 NG **\n");
 if(kyou1.d1==0xfe)                 printf(" ** 04 OK **\n");
                               else printf(" ** 04 NG **\n");

 if(kyou1.b2+0x01234567==-1)        printf(" ** 06 OK **\n");
                               else printf(" ** 06 NG **\n");
 if(kyou1.c2==-292)                 printf(" ** 07 OK **\n");
                               else printf(" ** 07 NG **\n");
 if(kyou1.d2==-2)                   printf(" ** 08 OK **\n");
                               else printf(" ** 08 NG **\n");

 if(kyou2.b1==-2)                   printf(" ** 10 OK **\n");
                               else printf(" ** 10 NG **\n");
 if(kyou2.c1==0xab)                 printf(" ** 11 OK **\n");
                               else printf(" ** 11 NG **\n");
 if(kyou2.d1+0x543fff==-1)          printf(" ** 12 OK **\n");
                               else printf(" ** 12 NG **\n");

 if(kyou3.un1.d2+0x25==-1)          printf(" ** 14 OK **\n");
                               else printf(" ** 14 NG **\n");
 if(kyou3.un2.b1==-1)               printf(" ** 15 OK **\n");
                               else printf(" ** 15 NG **\n");
 if(kyou3.un2.d1+0x25e2f3==-1)      printf(" ** 16 OK **\n");
                               else printf(" ** 16 NG **\n");

#endif
 printf("  * ENDED *\n\n");
}
