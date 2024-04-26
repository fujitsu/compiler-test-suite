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
 printf("* ENTERED *\n");
 if(a==0)                         printf(" ** 01 OK **\n");
                             else printf(" ** 01 NG **\n");
 if(b==0)                         printf(" ** 02 OK **\n");
                             else printf(" ** 02 NG **\n");
 if((long)(c)==0)                  printf(" ** 03 OK **\n");
                             else printf(" ** 03 NG **\n");
 if(d[0]+d[1]-d[2]==0)      printf(" ** 04 OK **\n");
                             else printf(" ** 04 NG **\n");
 if(d[3]+d[4]-d[5]==0)      printf(" ** 05 OK **\n");
                             else printf(" ** 05 NG **\n");
 if(d[6]+d[7]==0)             printf(" ** 06 OK **\n");
                             else printf(" ** 06 NG **\n");
 if(d[8]-d[9]==0)             printf(" ** 07 OK **\n");
                             else printf(" ** 07 NG **\n");
 if(e==f)                         printf(" ** 08 OK **\n");
                             else printf(" ** 08 NG **\n");
 if((long)(g)==0)                  printf(" ** 09 OK **\n");
                             else printf(" ** 09 NG **\n");
 if((long)(h[0])==0)             printf(" ** 10 OK **\n");
                             else printf(" ** 10 NG **\n");
 if((long)(h[1])==0)             printf(" ** 11 OK **\n");
                             else printf(" ** 11 NG **\n");
 if((long)(h[2])==0)             printf(" ** 12 OK **\n");
                             else printf(" ** 12 NG **\n");

 if(a1==b1)                       printf(" ** 13 OK **\n");
                             else printf(" ** 13 NG **\n");
 if((long)(p)==0)                 printf(" ** 14 OK **\n");
                             else printf(" ** 14 NG **\n");
 if(str.sa==0)                    printf(" ** 15 OK **\n");
                             else printf(" ** 15 NG **\n");
 if(str.sb==0)                    printf(" ** 16 OK **\n");
                             else printf(" ** 16 NG **\n");
 if(str.sc==0)                    printf(" ** 17 OK **\n");
                             else printf(" ** 17 NG **\n");
 printf("  * ENDED *\n\n");
}
