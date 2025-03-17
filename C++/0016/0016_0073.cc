
enum {e1=-1,e2=10} x;
enum E {Ee1=-2,Ee2=20} Ex;
int i;
#include <stdio.h>
int main(){
  enum {le1=-3,le2=30} lx;
  enum lE {lEe1=-4,lEe2=40} lEx;
  x=e1;
  Ex=Ee1;
  lx=le1;
  lEx=lEe1;
  {
    enum {lle1=-5,lle2=50} llx;
    enum llE {llEe1=-6,llEe2=60} llEx;
    llx=lle1;
    llEx=llEe1;
    i=x+Ex+lx+lEx+llx+llEx;
  }

  puts("ok");
}
