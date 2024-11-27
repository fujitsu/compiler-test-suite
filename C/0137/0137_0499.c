#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int suba(){return 2;}
int main()
{
int a,b,c,d,e,f,g,h=0;
long long int aaa,bbb,ccc,ddd,eee,fff,ggg,hhh=0;
void sublb( ),sublc( ),subld( ),suble( ),sublf( ),sublg( ),sublh( );
long long int subla( );
void subb( ),subc( ),subd( ),sube( ),subf( ),subg( ),subh( );
a=suba( );
labelk1:
switch (a) {
  case 1:
          b=20;
          subb(b);
          break;
  case 2:
          c=30;
          subc(c);
          goto labelk2;
  case 3:
          d=50;
          subd(d);
          break;
  case 4:
          e=60;
          sube(e);
          goto labelk3;
  case 5:
          f=70;
          subf(f);
          break;
  case 6:
          g=80;
          subg(g);
          break;
  case 7:
          h=90;
          subh(h);
          break;
}
        subb(b);
        goto labelk1;
labelk2:labelk3:
                subh(h);
aaa=subla( );
llabelk1:
switch (aaa) {
  case 1:
          bbb=20;
          sublb(bbb);
          break;
  case 2:
          ccc=30;
          sublc(ccc);
          goto llabelk2;
  case 3:
          ddd=50;
          subld(ddd);
          break;
  case 4:
          eee=60;
          suble(eee);
          goto llabelk3;
  case 5:
          fff=70;
          sublf(fff);
          break;
  case 6:
          ggg=80;
          sublg(ggg);
          break;
  case 7:
          hhh=90;
          sublh(hhh);
          break;
}
        sublb(bbb);
        goto llabelk1;
llabelk2:llabelk3:
                sublh(hhh);
exit (0);
}
long long int  subla( ){return 2;}
void sublb(i)long long int i;{}
void sublc(i)long long int i;{}
void subld(i)long long int i;{}
void suble(i)long long int i;{}
void sublf(i)long long int i;{}
void sublg(i)long long int i;{}
void subb(i)int i;{}
void subc(i)int i;{}
void subd(i)int i;{}
void sube(i)int i;{}
void subf(i)int i;{}
void subg(i)int i;{}
void subh(i)int i;{printf ("**dpmk2019** OK\n");}
void sublh(i)long long int i;{printf ("**kaimk2019** OK\n");}
