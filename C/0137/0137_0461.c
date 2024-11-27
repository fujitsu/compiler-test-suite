#include <stdlib.h>
#include <math.h>
#include <stdio.h>
int set(int a);
int test();
int main() {
int a ;
printf(" ***** mreg0400 ***** \n") ;
a = test() ;
if( a == 1641 )  
  printf(" ** OK ** a = %d \n",a) ;
else
  printf(" ** NG ** a = %d \n",a) ;
exit (0);
}
int test()
{
int g1,g2 ;
int m1,m2,m3,m4,m5,m6,m7,m8,m9,m10 ;
int m11,m12,m13,m14,m15,m16,m17,m18,m19,m20 ;
int m21,m22,m23,m24,m25,m26,m27,m28,m29,m30 ;
int m31,m32,m33,m34,m35,m36,m37,m38,m39,m40 ;
m1=set(1);m2=set(2);m3=set(3);m4=set(4);m5=set(5);
m6=set(6);m7=set(7);m8=set(8);m9=set(9);m10=set(10);
m11=set(11);m12=set(12);m13=set(13);m14=set(14);m15=set(15);
m16=set(16);m17=set(17);m18=set(18);m19=set(19);m20=set(20);
m21=set(21);m22=set(22);m23=set(23);m24=set(24);m25=set(25);
m26=set(26);m27=set(27);m28=set(28);m29=set(29);m30=set(30);
m31=set(31);m32=set(32);m33=set(33);m34=set(34);m35=set(35);
m36=set(36);m37=set(37);m38=set(38);m39=set(39);m40=set(40);

g1=m1+m2+m3+m4+m5+m6+m7+m8+m9+m10+m11+m12+m13+m14+m15+m16+m17+m18+m19+m20+m21+m22+m23+m24+m25+m26+m27+m28+m29+m30+m31+m32+m33+m34+m35+m36+m37+m38+m39+m40 ;
g2=g1+1;
  return(g2) ;
}
int set(a) 
int a ;
{
	return(a+a) ;
}
