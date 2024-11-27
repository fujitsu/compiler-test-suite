#include <stdio.h>

struct tl{
   long long int a;
   long long int b;
 } qqq;
union ul{
   long long int a;
   unsigned long long int b;
 } rrr;
struct t {
   int a;
   int b;
 } q;
union u {
   int a;
   unsigned int b;
 } r;
int main() { 
  int p,   sub0(),sub00();
  struct t sub1(),xxx,sub2( );
  union u  sub3(),yyy,sub4( );
  long long int ppp,   sublong0(),sublong00();
  struct tl sublong1(),xxxl,sublong2( );
  union ul sublong3(),yyyl,sublong4( );
  p  =sub0( );
  if (p== -1) printf("**(1)** OK\n");
  else        printf("**(1)** NG p=%d\n",p);
  p  =sub00( );
  if (p== -1) printf("**(2)** OK\n");
  else        printf("**(2)** NG p=%d\n",p);
  xxx=sub1(p);
  if (xxx.a== -1) 
              printf("**(3)** OK\n");
  else        printf("**(3)** NG xxx.a=%d\n",xxx.a);
  q=sub2(p);
  if (q.b== -1) 
              printf("**(4)** OK\n");
  else        printf("**(4)** NG q.b=%d\n",q.b);
  yyy=sub3(p);
  if (yyy.a== 10) 
              printf("**(5)** OK\n");
  else        printf("**(5)** NG yyy.a=%d\n",yyy.a);
  r=sub4(p);
  if (r.b==-1) 
              printf("**(6)** OK\n");
  else        printf("**(6)** NG r.b=%d\n",r.b);

  ppp =sublong0( );
  if (ppp== -1) printf("**(1)** OK\n");
  else        printf("**(1)** NG p=%d\n",ppp);
  ppp =sublong00( );
  if (ppp== -1) printf("**(2)** OK\n");
  else        printf("**(2)** NG p=%d\n",ppp);
  xxxl=sublong1(ppp);
  if (xxxl.a== -1) 
              printf("**(3)** OK\n");
  else        printf("**(3)** NG xxxl.a=%d\n",xxxl.a);
  qqq=sublong2(ppp);
  if (qqq.b== -1) 
              printf("**(4)** OK\n");
  else        printf("**(4)** NG q.b=%d\n",qqq.b);
  yyyl=sublong3(ppp);
  if (yyyl.a== 10) 
              printf("**(5)** OK\n");
  else        printf("**(5)** NG yyyl.a=%d\n",yyyl.a);
  rrr=sublong4(ppp);
  if (rrr.b==-1) 
              printf("**(6)** OK\n");
  else        printf("**(6)** NG r.b=%d\n",rrr.b);
}
long long int sublong0( ) { return -1;}
long long int sublong00( ) { long long int a; a=-1;return a;}
struct tl sublong1(ppp) long long int ppp; {
  struct tl z;
  z.a=ppp ;
  z.b=10;
  return(z);
}
struct tl sublong2(ppp) long long int ppp; {
  qqq.b=ppp;
  return(qqq);
}
union ul sublong3(ppp) long long int ppp; {
  union ul z;
  z.a=ppp ;
  z.b=10;
  return(z);
}
union ul sublong4(ppp) long long int ppp; {
  rrr.b=ppp;
  return(rrr);
}
int sub0( ) { return -1;}
int sub00( ) { int a; a=-1;return a;}
struct t sub1(p ) int p; {
  struct t z;
  z.a=p  ;
  z.b=10;
  return(z);
}
struct t sub2(p ) int p; {
  q.b=p;
  return(q);
}
union u sub3(p ) int p; {
  union u z;
  z.a=p  ;
  z.b=10;
  return(z);
}
union u sub4(p ) int p; {
  r.b=p;
  return(r);
}
