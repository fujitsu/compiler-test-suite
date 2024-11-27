#include <stdlib.h>
#include <math.h>
#include  <stdio.h>
#include <string.h>

static char *s_ok=" ** SCPIN22.%02d OK **\n\n";
static char *s_ng=" xx SCPIN22.%02d NG xx\n\n";

char *s_str01    = "ABCDEFGHIJKLMN";
char s_str02[] = "0123456789";
static char *s_str03    = "long ago,there was a long slope.";
static char s_str04[] = "3.14159265358979";

int sub(char *p, int c, int s);
int main()
{
 printf("* TP=SCPIN22 ENTERED *\n");
 if(sub("abc",'b',10)==2)                             printf(s_ok,1);
                                                 else printf(s_ng,1);
 if(sub("abc",'b',1 )==0)                             printf(s_ok,2);
                                                 else printf(s_ng,2);
 if(sub(s_str01,'M',13)==13)                       printf(s_ok,3);
                                                 else printf(s_ng,3);
 if(sub(s_str01,'M',12)==0)                        printf(s_ok,4);
                                                 else printf(s_ng,4);
 if(sub(s_str02,'5',4)==0)                            printf(s_ok,5);
                                                 else printf(s_ng,5);
 if(sub(s_str03,'.',32)==32)                          printf(s_ok,6);
                                                 else printf(s_ng,6);
 if(sub(s_str04,'5',16)==6)                           printf(s_ok,7);
                                                 else printf(s_ng,7);
 printf("  * SCPIN22 ENDED *\n\n");
exit (0);
}

int sub(char *p, int c, int s)
{
 char *p1;
 unsigned long int r;

 p1=memchr(p,c,s);

 if(p1==0)
 {
  printf(
   "       '%s'            '%c'      %d                         \n"
   ,p,c,s);
  return 0;
 }
 else
 {
  r=p1-p+1;
  printf(
   "       '%s'            '%c'            %lu                   \n"
   ,p,c,r);
  return r;
 }
}
