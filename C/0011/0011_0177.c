#include  <stdio.h>

struct tg1 {signed char sc11:4;
             signed short ss11:5;
             signed int si11:7;
           
             unsigned char uc11:6;
             unsigned short us11:3;
             unsigned int ui11:4;
           };
struct tg2 {signed char ss21:3;
             signed int si21:15;
           
             signed char sc22:5;};
struct tg3 {signed char sc31:7;
           };
struct tg4 {unsigned char uc41:7;
             unsigned int ui41:13;
           };
struct tg5 {unsigned char uc51:6;
           };
/*            */
struct tg1 str1={0,-1,0,0,7,15};
/*                */
static struct tg2 str2={3,16383,15};
static struct tg3 str3={63};
int main()
 {
   /*            */
   static struct tg4 str4={63,4095};
   static struct tg5 str5={31};
   printf("* ENTERED *\n");
   printf("                                                    LONG LONG INT                                                     \n");
 if(str4.uc41==63)               printf(" ** 01 OK **\n");
                            else printf(" ** 01 NG **\n");
 if(str4.ui41==4095)             printf(" ** 02 OK **\n");
                            else printf(" ** 02 NG **\n");
 if(str5.uc51==31)               printf(" ** 04 OK **\n");
                            else printf(" ** 04 NG **\n");
 if(str1.sc11==0)                printf(" ** 06 OK **\n");
                            else printf(" ** 06 NG **\n");
 if(str1.ss11==-1)               printf(" ** 07 OK **\n");
                            else printf(" ** 07 NG **\n");
 if(str1.si11==0)                printf(" ** 08 OK **\n");
                            else printf(" ** 08 NG **\n");
 if(str1.uc11==0)                printf(" ** 10 OK **\n");
                            else printf(" ** 10 NG **\n");
 if(str1.us11==7)                printf(" ** 11 OK **\n");
                            else printf(" ** 11 NG **\n");
 if(str1.ui11==15)               printf(" ** 12 OK **\n");
                            else printf(" ** 12 NG **\n");
 if(str2.ss21==3)                printf(" ** 14 OK **\n");
                            else printf(" ** 14 NG **\n");
 if(str2.si21==16383)            printf(" ** 15 OK **\n");
                            else printf(" ** 15 NG **\n");
 if(str2.sc22==15)               printf(" ** 17 OK **\n");
                            else printf(" ** 17 NG **\n");
 if(str3.sc31==63)               printf(" ** 18 OK **\n");
                            else printf(" ** 18 NG **\n");
 printf("  * ENDED *\n\n");
}
