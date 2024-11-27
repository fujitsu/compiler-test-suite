#include  <stdio.h>

int main()
 {
    int a,b,c,d,e=0,f=0;
    a=c=d=10;
    b=a+5;
    goto l11;
l00:
    c=0;
    d=1;
    e=c+d;
    goto l02;
l01:
    c++;
    e=++d+c;
    goto l01;
l02:
    a++;
    if(a==0) goto l02;
l03:
    b++;
l04:
    goto l00;
l11:
    if(a!=10){printf("*** a  NG ** a=%d ***\n",a);f++;}
    if(b!=15){printf("*** b  NG ** b=%d ***\n",b);f++;}
    if(c!=10){printf("*** c  NG ** c=%d ***\n",c);f++;}
    if(d!=10){printf("*** d  NG ** d=%d ***\n",d);f++;}
    if(e!=0) {printf("*** e  NG ** e=%d ***\n",e);f++;}
    if(f==0) printf("***   OK ***\n");
    else     printf("***   NG ***\n");
}
