#include <stdlib.h>
#include <math.h>
#include <stdio.h>
int  suba(){return 2;}
void subb(int i){}
void subc(int i){}
void subd(int i){}
void sube(int i){}
void subf(int i){}
void subg(int i){}
void subh(int i){printf ("**dpmk2019** OK\n");}
int main()
{
int a,b,c,d,e,f,g,h=0;
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
exit (0);
}
