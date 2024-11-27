#include <stdlib.h>
#include <math.h>
#include  <stdio.h>
 struct str {
   int s1;
   int s2;
   struct sstr *s3;
 } stra;
 struct sstr {
   int s1;
   int s2;
   int s3;
 } sstra;
 struct str  *strp;
 struct sstr *sstrp;
int main()
 {
 int         i1,i2,i3;
 sstrp=&sstra;
 strp=&stra;
 strp->s1=1;
 printf("- start -\n");
 i1=strp->s1;
 strp->s3=sstrp;
 i2=strp->s1;
 i3=i1+i2;
 if (i3==2)
 printf("- ok -\n");
 else
 printf("- ng -\n");
exit (0);
 }
