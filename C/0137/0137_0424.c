#include <stdlib.h>
#include <math.h>
#include  <stdio.h>
int main()
    {
    int a,b,c,ai,bi,ci ;
    ai=0,bi=0,ci=0 ;
    a=0 ;
    b=1 ;
    c=2 ;
    goto label2 ;
label1:
    switch(a)
      {
      case 0:
        break ;
      case 1:
        while (c>0)
          {
          c-=1 ;
          ci+=1 ;
          if (c<0) break ;
          }
        break ;
      case 2:
        for (;b<10;b++,bi++)
          if (b<0) break ;
        goto label6 ;
      }
    goto label3 ;
label2:
    while (c<10) c++ ;
    goto label1 ;
label3:
    a+=1 ;
    ai+=1 ;
    b=1 ;
    c=2 ;
    goto label4 ;
label4:
    for(;;) break ;
    goto label5 ;
label5:
    goto label1 ;
label6:
    printf("a=%d,b=%d,c=%d",a,b,c);
    printf("ai=%d,bi=%d,ci=%d",ai,bi,ci);
    if (a!=2  || b!=10 || c!=2
      ||ai!=2 || bi!=9 || ci!=2)
      goto label8 ;
    else
      goto label7 ;
label7:
    printf("*** mptest47 ok ***\n");
    goto label9 ;
label8:
    printf("*** mptest47 ng ***\n");
label9:;
exit (0);
}
