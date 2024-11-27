#include <stdlib.h>
#include <math.h>
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
    {"FMJITSD LIUITEU.",&ext1,{10,20,30},{&ext3,&ext4},
      "AFMOC 807.",&ext2,{-1,-2,-3},{&ext4,&ext3}};
int main()
{
 static int pt=-900;
 static struct tag3 stc3={-8645,{'0',&pt},0x1b};
 static struct tag3 *stc4=&stc3;
 static struct tag3 **stc5=&stc4;
 printf("* TP=SCPIN05 ENTERED *\n");
 if(stc3.tgi3==-8645)               printf(" ** SCPIN05.01 OK **\n");
                               else printf(" ** SCPIN05.01 NG **\n");
 if(stc3.tag4.tgsc3=='0')           printf(" ** SCPIN05.02 OK **\n");
                               else printf(" ** SCPIN05.02 NG **\n");
 if(stc3.tag4.tgci3==&pt)           printf(" ** SCPIN05.03 OK **\n");
                               else printf(" ** SCPIN05.03 NG **\n");
 if(stc3.tgc3==0x1b)                printf(" ** SCPIN05.04 OK **\n");
                               else printf(" ** SCPIN05.04 NG **\n");
 if(stc4->tgi3==-8645)              printf(" ** SCPIN05.05 OK **\n");
                               else printf(" ** SCPIN05.05 NG **\n");
 if(stc4->tag4.tgsc3=='0')          printf(" ** SCPIN05.06 OK **\n");
                               else printf(" ** SCPIN05.06 NG **\n");
 if((*stc5)->tag4.tgci3==&pt)       printf(" ** SCPIN05.07 OK **\n");
                               else printf(" ** SCPIN05.07 NG **\n");
 if((*stc5)->tgc3==0x1b)            printf(" ** SCPIN05.08 OK **\n");
                               else printf(" ** SCPIN05.08 NG **\n");
 if(stc1.tgi1==172)                 printf(" ** SCPIN05.09 OK **\n");
                               else printf(" ** SCPIN05.09 NG **\n");
 if(stc1.tgd1==1971.0219)           printf(" ** SCPIN05.10 OK **\n");
                               else printf(" ** SCPIN05.10 NG **\n");
 if(stc1.tgu11==1023)               printf(" ** SCPIN05.11 OK **\n");
                               else printf(" ** SCPIN05.11 NG **\n");
 if(stc1.tgu12==0)                  printf(" ** SCPIN05.12 OK **\n");
                               else printf(" ** SCPIN05.12 NG **\n");
 if(stc1.tgu13==511)                printf(" ** SCPIN05.13 OK **\n");
                               else printf(" ** SCPIN05.13 NG **\n");
 if(stc1.tgc1=='A')              printf(" ** SCPIN05.14 OK **\n");
                               else printf(" ** SCPIN05.14 NG **\n");
 if(stc1.tgf1==(float)(1.41421356)) printf(" ** SCPIN05.15 OK **\n");
                               else printf(" ** SCPIN05.15 NG **\n");
 if(strcmp(stc2[0].tgc2,"FMJITSD LIUITEU.")==0)
                                    printf(" ** SCPIN05.16 OK **\n");
                               else printf(" ** SCPIN05.16 NG **\n");
 if(strcmp(stc2[1].tgc2,"AFMOC 807.")==0)
 if(*(stc2[0].tgip2)==12345)      printf(" ** SCPIN05.17 OK **\n");
                               else printf(" ** SCPIN05.17 NG **\n");
 if(*(stc2[1].tgip2)==54321)      printf(" ** SCPIN05.18 OK **\n");
                               else printf(" ** SCPIN05.18 NG **\n");
 if(stc2[0].tgs1[0]==10)        printf(" ** SCPIN05.19 OK **\n");
                               else printf(" ** SCPIN05.19 NG **\n");
 if(stc2[0].tgs1[1]==20)        printf(" ** SCPIN05.20 OK **\n");
                               else printf(" ** SCPIN05.20 NG **\n");
 if(stc2[0].tgs1[2]==30)        printf(" ** SCPIN05.21 OK **\n");
                               else printf(" ** SCPIN05.21 NG **\n");
 if(stc2[1].tgs1[0]==-1)        printf(" ** SCPIN05.22 OK **\n");
                               else printf(" ** SCPIN05.22 NG **\n");
 if(stc2[1].tgs1[1]==-2)        printf(" ** SCPIN05.23 OK **\n");
                               else printf(" ** SCPIN05.23 NG **\n");
 if(stc2[1].tgs1[2]==-3)        printf(" ** SCPIN05.24 OK **\n");
                               else printf(" ** SCPIN05.24 NG **\n");
 if(stc2[0].tgf2[0]==&ext3)     printf(" ** SCPIN05.25 OK **\n");
                               else printf(" ** SCPIN05.25 NG **\n");
 if(*(stc2[0].tgf2[1])==(float)(2.2360679))
                                    printf(" ** SCPIN05.26 OK **\n");
                               else printf(" ** SCPIN05.26 NG **\n");
 if(stc2[1].tgf2[0]==&ext4)     printf(" ** SCPIN05.27 OK **\n");
                               else printf(" ** SCPIN05.27 NG **\n");
 if(*(stc2[1].tgf2[1])==(float)(3.1415927))
                                    printf(" ** SCPIN05.28 OK **\n");
                               else printf(" ** SCPIN05.28 NG **\n");
 printf("  * SCPIN05 ENDED *\n\n");
exit (0);
}
