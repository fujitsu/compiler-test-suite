#include <stdio.h>

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
