#include  <stdio.h>
#include <string.h>

struct tag1 {int tgi1;
              double tgd1;
              unsigned int tgu11:13;
              unsigned int tgu12:5;
              unsigned int tgu13:9;
              char tgc1;
              float tgf1;};
struct tag2 {char tgc2[20];
              int *tgip2;
              short tgs1[3];
              float *tgf2[2];};
struct tag3 {int tgi3;
              struct {char tgsc3;
                       int *tgci3;}tag4;
              char tgc3;};

int ext1=12345;
int ext2=54321;
float ext3=3.1415927;
float ext4=2.2360679;
struct tag1 stc1={172,1971.0219,1023,0,511,'A',1.41421356};
static struct tag2 stc2[2]=
    {"ABCDEFG HIJKLMN.",&ext1,{10,20,30},{&ext3,&ext4},
      "OPQRS 780.",&ext2,{-1,-2,-3},{&ext4,&ext3}};
int main()
{
 static int pt=-900;
 static struct tag3 stc3={-8645,{'0',&pt},0x1b};
 static struct tag3 *stc4=&stc3;
 static struct tag3 **stc5=&stc4;
 printf("* ENTERED *\n");
 if(stc3.tgi3==-8645)               printf(" ** 01 OK **\n");
                               else printf(" ** 01 NG **\n");
 if(stc3.tag4.tgsc3=='0')           printf(" ** 02 OK **\n");
                               else printf(" ** 02 NG **\n");
 if(stc3.tag4.tgci3==&pt)           printf(" ** 03 OK **\n");
                               else printf(" ** 03 NG **\n");
 if(stc3.tgc3==0x1b)                printf(" ** 04 OK **\n");
                               else printf(" ** 04 NG **\n");
 if(stc4->tgi3==-8645)              printf(" ** 05 OK **\n");
                               else printf(" ** 05 NG **\n");
 if(stc4->tag4.tgsc3=='0')          printf(" ** 06 OK **\n");
                               else printf(" ** 06 NG **\n");
 if((*stc5)->tag4.tgci3==&pt)       printf(" ** 07 OK **\n");
                               else printf(" ** 07 NG **\n");
 if((*stc5)->tgc3==0x1b)            printf(" ** 08 OK **\n");
                               else printf(" ** 08 NG **\n");
 if(stc1.tgi1==172)                 printf(" ** 09 OK **\n");
                               else printf(" ** 09 NG **\n");
 if(stc1.tgd1==1971.0219)           printf(" ** 10 OK **\n");
                               else printf(" ** 10 NG **\n");
 if(stc1.tgu11==1023)               printf(" ** 11 OK **\n");
                               else printf(" ** 11 NG **\n");
 if(stc1.tgu12==0)                  printf(" ** 12 OK **\n");
                               else printf(" ** 12 NG **\n");
 if(stc1.tgu13==511)                printf(" ** 13 OK **\n");
                               else printf(" ** 13 NG **\n");
 if(stc1.tgc1=='A')              printf(" ** 14 OK **\n");
                               else printf(" ** 14 NG **\n");
 if(stc1.tgf1==(float)(1.41421356)) printf(" ** 15 OK **\n");
                               else printf(" ** 15 NG **\n");
 if(strcmp(stc2[0].tgc2,"ABCDEFG HIJKLMN.")==0)
                                    printf(" ** 16 OK **\n");
                               else printf(" ** 16 NG **\n");
 if(strcmp(stc2[1].tgc2,"OPQRS 780.")==0){
 if(*(stc2[0].tgip2)==12345)      printf(" ** 17 OK **\n");
                               else printf(" ** 17 NG **\n");
 if(*(stc2[1].tgip2)==54321)      printf(" ** 18 OK **\n");
                               else printf(" ** 18 NG **\n");
 if(stc2[0].tgs1[0]==10)        printf(" ** 19 OK **\n");
                               else printf(" ** 19 NG **\n");
 if(stc2[0].tgs1[1]==20)        printf(" ** 20 OK **\n");
                               else printf(" ** 20 NG **\n");
 if(stc2[0].tgs1[2]==30)        printf(" ** 21 OK **\n");
                               else printf(" ** 21 NG **\n");
 if(stc2[1].tgs1[0]==-1)        printf(" ** 22 OK **\n");
                               else printf(" ** 22 NG **\n");
 if(stc2[1].tgs1[1]==-2)        printf(" ** 23 OK **\n");
                               else printf(" ** 23 NG **\n");
 if(stc2[1].tgs1[2]==-3)        printf(" ** 24 OK **\n");
                               else printf(" ** 24 NG **\n");
 if(stc2[0].tgf2[0]==&ext3)     printf(" ** 25 OK **\n");
                               else printf(" ** 25 NG **\n");
 if(*(stc2[0].tgf2[1])==(float)(2.2360679))
                                    printf(" ** 26 OK **\n");
                               else printf(" ** 26 NG **\n");
 if(stc2[1].tgf2[0]==&ext4)     printf(" ** 27 OK **\n");
                               else printf(" ** 27 NG **\n");
 if(*(stc2[1].tgf2[1])==(float)(3.1415927))
                                    printf(" ** 28 OK **\n");
                               else printf(" ** 28 NG **\n");
 }
 printf("  * ENDED *\n\n");
}
