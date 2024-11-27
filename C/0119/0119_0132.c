#include <stdlib.h>
#include <math.h>
#include  <stdio.h>
struct tag
{
 int   i;
 char  c;
 float f;
 int   j;
} st={0x0123abcd,'A',7.875,0x01234567};
int main()
{
 static int   *a=&st.i;
 static char  *b=&st.c;
 static float *c=&st.f;
 static int   *d=&st.j;

 printf("*** SCPIN17             ***\n");
 if(*a==0x0123abcd) printf("*** TP=SCPIN17  OK.01 ***\n");
   else             printf("XXX TP=SCPIN17  NG.01 XXX %X\n",*a);
 if(*b=='A')     printf("*** TP=SCPIN17  OK.02 ***\n");
   else             printf("XXX TP=SCPIN17  NG.02 XXX %c\n",*b);
 if(*c==7.875)      printf("*** TP=SCPIN17  OK.03 ***\n");
   else             printf("XXX TP=SCPIN17  NG.03 XXX %f\n",*c);
 if(*d==0x01234567) printf("*** TP=SCPIN17  OK.04 ***\n");
   else             printf("XXX TP=SCPIN17  NG.04 XXX %X\n",*d);
 printf("*** SCPIN17             ***\n");
exit (0);
}
