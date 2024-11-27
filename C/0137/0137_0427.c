#include <stdlib.h>
#include <math.h>
#include  <stdio.h>
#define okmsg(x,y) printf("*** OK *** <%d> %s\n",x,y)
#define ngmsg(x,y) printf("*** NG *** <%d> %s,err:%d\n",x,y,++nfl)
static char *smin="in main";
static char *sfun="in func";
int          nfl=0;
int func(a)
  int a;
{
  int r=1,x=0;
  switch(a){
    case 2 : goto l1;
    case 6 : r=9;
             break;
    case 4 : r=4;
             goto l2;
    case 0 : goto l0;
    default: r=0;
  }
  goto l10;
l0:
  a==0 ? okmsg(0,sfun) : ngmsg(0,sfun) ;
  return(0);
l1:
  return((a==2) ? 2 : -2 ) ;
l2:
  goto l22;
l10:
  for(;r>0;r--) x++;
  switch(x){
    case 0: break;
    case 9: return(6);
  }
  return(-1);
l22:
  r==4 ? okmsg(2,sfun) : ngmsg(2,sfun) ;
  return(4);
}
int main()
{
  int i,r;
  for(i=0;i<7;i+=2){
    if(func(i)==i)  okmsg(i,smin) ;
    else            ngmsg(i,smin) ;
  }
  if(nfl==0) printf("***** MPTEST54 OK ***\n");
  else       printf("***** MPTEST54 NG ***\n");
exit (0);
}
