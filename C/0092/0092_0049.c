#include <stdio.h>

int  suba( ){return 2;}
int main()
{
int a,b,c,d,e,f,g,h;
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
}
void subb(i)int i;{}
void subc(i)int i;{}
void subd(i)int i;{}
void sube(i)int i;{}
void subf(i)int i;{}
void subg(i)int i;{}
void subh(i)int i;{printf ("**** OK\n");}
