#include  <stdio.h>
int main(void){
      int a,b,i ;
      a=1 ;
      b=2 ;
      goto l010 ;
l010: goto l050 ;
l020: goto l030 ;
l030: goto l060 ;
l040: goto l020 ;
l050: goto l040 ;
l060: for (i=1;i<10;i++) {
       a=a+1 ;
       b=b-1 ;
       }
      if ( a==10 && b==-7 ) goto l110 ;
      else
       printf("***  no.1 ng *** %d %d\n",a,b,i) ;
      goto l160 ;
l110: if (a == 10) goto l150 ;
l120: goto l130 ;
l130: goto l160 ;
l140: if (b == -7) goto l120 ;
      printf("***  ng ***\n") ;
      return 1;
l150: goto l140 ;
l160: for (i=1;i<10;i++) {
       a=a+1 ;
       b=b-1 ;
       }
      if (a!=19||b!=-16) {
       printf("***  no.2 ng *** %d %d\n",a,b,i) ;
      } else {
       printf("***  ok ***\n") ;
       }
}
