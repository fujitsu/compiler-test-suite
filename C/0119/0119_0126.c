#include <stdlib.h>
#include <math.h>
#include  <stdio.h>
int a;
char b;
float *c;
short int d[10];
static float e;
static double f;
static int *g;
static char *h[3];
int main()
 {
 static unsigned int a1;
 static short int b1;
 static char *p;
 static struct {char s1;
                 unsigned int sa:2;
                 unsigned int sb:9;
                 unsigned int sc:3;}str;
 printf("* TP=SCPIN01 ENTERED *\n");
 if(a==0)                         printf(" ** SCPIN01.01 OK **\n");
                             else printf(" ** SCPIN01.01 NG **\n");
 if(b==0)                         printf(" ** SCPIN01.02 OK **\n");
                             else printf(" ** SCPIN01.02 NG **\n");
 if((int)(c)==0)                  printf(" ** SCPIN01.03 OK **\n");
                             else printf(" ** SCPIN01.03 NG **\n");
 if(d[0]+d[1]-d[2]==0)      printf(" ** SCPIN01.04 OK **\n");
                             else printf(" ** SCPIN01.04 NG **\n");
 if(d[3]+d[4]-d[5]==0)      printf(" ** SCPIN01.05 OK **\n");
                             else printf(" ** SCPIN01.05 NG **\n");
 if(d[6]+d[7]==0)             printf(" ** SCPIN01.06 OK **\n");
                             else printf(" ** SCPIN01.06 NG **\n");
 if(d[8]-d[9]==0)             printf(" ** SCPIN01.07 OK **\n");
                             else printf(" ** SCPIN01.07 NG **\n");
 if(e==f)                         printf(" ** SCPIN01.08 OK **\n");
                             else printf(" ** SCPIN01.08 NG **\n");
 if((int)(g)==0)                  printf(" ** SCPIN01.09 OK **\n");
                             else printf(" ** SCPIN01.09 NG **\n");
 if((int)(h[0])==0)             printf(" ** SCPIN01.10 OK **\n");
                             else printf(" ** SCPIN01.10 NG **\n");
 if((int)(h[1])==0)             printf(" ** SCPIN01.11 OK **\n");
                             else printf(" ** SCPIN01.11 NG **\n");
 if((int)(h[2])==0)             printf(" ** SCPIN01.12 OK **\n");
                             else printf(" ** SCPIN01.12 NG **\n");

 if(a1==b1)                       printf(" ** SCPIN01.13 OK **\n");
                             else printf(" ** SCPIN01.13 NG **\n");
 if((char)(p)==0)                 printf(" ** SCPIN01.14 OK **\n");
                             else printf(" ** SCPIN01.14 NG **\n");
 if(str.sa==0)                    printf(" ** SCPIN01.15 OK **\n");
                             else printf(" ** SCPIN01.15 NG **\n");
 if(str.sb==0)                    printf(" ** SCPIN01.16 OK **\n");
                             else printf(" ** SCPIN01.16 NG **\n");
 if(str.sc==0)                    printf(" ** SCPIN01.17 OK **\n");
                             else printf(" ** SCPIN01.17 NG **\n");
 printf("  * SCPIN01 ENDED *\n\n");
exit (0);
}
