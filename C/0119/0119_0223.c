#include <stdlib.h>
#include <math.h>
#include  <stdio.h>
int main()
{     char           is1, is2;
       short int      ih1, ih2;
       int            iw1, iw2;
       float          re1, re2;
       double         rd1, rd2;
       static char    isz = '0';
       static short   ihz = 0;
       static int     iwz = 0;
       re1 = 1.0;
       re2 = 2.0;
       rd1 = 1.0;
       rd2 = 2.0;
       ih1 = re1;
       iw1 = re1;
       ih2 = re1+1.2345;
       iw2 = re1+2.3456;
       if ((ih1 > ih2) &&  (iw1 >= iw2))
           printf(" test(no.1) ==> ng ");
       iw2 = 2;
       is1 = re1;
       is2 = re1+re1;
       if (is1*2 != is2)
           printf(" test(no.2) ==> ng ");
       re1 = ih1;
       re2 = iw1+iw2;
       if (re2 <= re1)
           printf(" test(no.3) ==> ng ");
       re2 = 2.0;
       re2 = is1+is2;
       if (re2 == re1-is1+2)
           printf(" test(no.4) ==> ng ");
       re2 = 2;
       rd1 = iw2-1;
       rd2 = ih1*3-1;
       if (rd1*2 <= rd2-ih2)
           printf(" test(no.5) ==> ng ");
       rd1 = is1;
       rd2 = is1%is2;
       if (rd1 != rd2)
           printf(" test(no.6) ==> ng ");

   printf(" test ===> ok\n");
exit (0);
}
