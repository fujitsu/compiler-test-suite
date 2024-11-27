#include <stdlib.h>
#include <math.h>
#include  <stdio.h>
 int *x;
 int ea;
 int *p;
 struct estr {
 int *p1;
 int  q1;
 };
 struct estr *pp;
 struct estr *qq;
 struct estr1 {
 int ea;
 int eb;
 int ec;
 };
 struct estr1 *ep;
int fun4 (struct estr1 *ep, struct estr1 ea);
int fun8 (struct estr1 *ep, struct estr1 ea);
int fun2 (struct estr1 *pp);
int fun1 (struct estr1 *pp);
int fun (struct estr ea);
int sub0 (void);
int sub10 (void);
int sub9 (void);
int sub8 (void);
int sub7 (void);
int sub6 (void);
int sub5 (void);
int sub4 (void);
int sub3 (void);
int sub2 (void);
int sub1 (void);
int sub (void);
int 
main (void)
 {
 sub1();
 sub2();
 sub3();
 sub4();
 sub5();
 sub6();
 sub7();
 sub8();
 sub9();
 sub10();
exit (0);
 }
 
 
 int 
sub1 (void)
 {
 int  a,b,c,d;
 a=1;
 x=&a;
 a=2;
 b=*x;
 sub();
 c=*x;
 if (c==10) printf("%4s\n","ok-1");
 else      printf("%4s\n","ng-1");
 *x=1;
 sub();
 d=*x;
 if (d==10) printf("%4s\n","ok-2");
 else      printf("%4s\n","ng-2");
 printf("%d",b);
 printf("%d",c);
 printf("%d\n",d);
 }
 int 
sub (void) {
 *x=10;
 }
 
 
 int 
sub2 (void)
 {
 int  a,b,c;
 a=1;
 x=&a;
 a=2;
 b=*x;
 ea=1 ;
 c=*x;
 if (c==2) printf("%s4\n","ok-3");
 else      printf("%s4\n","ng-3");
 printf("%d\n",b);
 printf("%d\n",c);
 }
 
 
 int 
sub3 (void)
 {
 int  *ip,*iq;
 int  a,b,c,d,e;
 b=3;
 c=4;
 iq=&b;
 ip=&d;
 p=&a;
 ip=p;
 a=1;
 b=*p;
 *ip=2;
 c=*p;
 if (c==2) printf("%s\n","ok-4");
 else      printf("%s%d\n","ng-4 c=",c);
 *p=b;
 e=*iq;
 *ip=2+e;
 d=*p;
 if (d==3) printf("%s\n","ok-5");
 else      printf("%s%d\n","ng-5 d=",d);
 printf("%d\n",b);
 printf("%d",c);
 printf("%d",d);
 }
 
 
 int 
sub4 (void)
 {
 int  *ip,*iq;
 int  a,b,c,d;
 p=&a;
 ip=p;
 a=1;
 b=*p;
 a=2;
 d=*ip;
 a=3;
 c=*p;
 if ((b+d+c)==6) printf("%s\n","ok-6");
 else            printf("%s\n","ng-6");
 printf("%d",b);
 printf("%d",c);
 printf("%d",d);
 }
 
 
 int 
sub5 (void)
 {
 int  *ip,*iq;
 int  a,b,c,d;
 d=2;
 p=&a;
 ip=p;
 a=1;
 b=*p;
 ip=&d;
 c=*p;
 if ((b+c)==2) printf("%s\n","ok-7");
 else          printf("%s\n","ng-7");
 printf("%d\n",b);
 printf("%d",c);
 }
 
 
 int 
sub6 (void)
 {
   struct estr eea;
   qq=&eea;
   qq->q1=1;
   fun(eea);
   if (qq->q1==2) printf("%s\n","ok-10");
   else          printf("%s\n","ng-10");
 }
 int 
fun (struct estr ea)
 {
 int  a,b,c;
 pp=&ea;
 a=1;
 b=pp->q1;
 sub0();
 c=pp->q1;
 if (b==1) printf("%s\n","ok-8");
 else {   printf("%s\n","ng-8");
 printf("%d",b); }
 if (c==2) printf("%s\n","ok-9");
 else  {  printf("%s\n","ng-9");
 printf("%d",c); }
 qq->p1=pp->p1;
 qq->q1=pp->q1;

 }
 int 
sub0 (void) {
 pp->p1=&(pp->q1);
 pp->q1=2;
 }
 
 
 int 
sub7 (void)
 {
 struct estr1 epa;
 struct estr1 *epp;
   epp=&epa;
   epp->ea=1;
   epp->eb=2;
   epp->ec=3;
   fun1(epp);
 }
 int 
fun1 (struct estr1 *pp)
 {
 int  a,b,c;
 ep=pp;
 a=1;
 b=pp->ea;
 ep->eb=1;
 c=pp->ea;
 if (b==1&&c==1) printf("%s\n","ok-11");
 else       {   printf("%s\n","ng-11");
                 printf("%d",b); }
 }
 
 
 int 
sub8 (void)
 {
 struct estr1  epa;
 struct estr1 *epp;
   epp=&epa;
   epp->ea=1;
   epp->eb=2;
   epp->ec=3;
   fun2(epp);
   if (epp->ec==2) printf("%s\n","ok-12");
   else            printf("%s\n","ok-12");
 }
 int 
fun2 (struct estr1 *pp)
 {
 struct estr1 *ip;
 int  *iq;
 int  a,b,c;
 iq=&a;
 ip=pp;
 a=1;
 b=pp->ea;
 ip->ec=2;
 a=pp->eb;
 c=pp->ea;
 if (c==1) printf("%s\n","ok-13");
 else {   printf("%s\n","ng-13");
           printf("%d",c); }
 }
 
 
 int 
sub9 (void)
 {
 struct estr1 *eep;
 struct estr1 eea;
 eep=&eea;
 eep->ea=1;
 eep->eb=2;
 eep->ec=3;
 fun8(eep,eea);
 }
 int 
fun8 (struct estr1 *ep, struct estr1 ea)
 {
 struct estr1 *ip;
 int  *iq;
 int  a,b,c,d;
 iq=&a;
 ip=ep;
 a=1;
 b=ep->eb;
 d=ip->ec;
 c=ep->eb;
 if (c==2) printf("%s\n","ok-14");
 else {   printf("%s\n","ng-14");
           printf("%d",c); }
 }
 
 
 int 
sub10 (void)
 {
 struct estr1 *eep;
 struct estr1 eea;
 eep=&eea;
 eep->ea=1;
 eep->eb=2;
 eep->ec=3;
   fun4(eep,eea);
 }
 int 
fun4 (struct estr1 *ep, struct estr1 ea)
 {
 struct estr1 *ip;
 int  *iq;
 int  a,b,c,d;
 iq=&b;
 ip=&ea;
 a=1;
 b=ep->ea;
 *iq=2;
 c=ep->ea;
 if (c==1) printf("%s\n","ok-15");
 else {   printf("%s\n","ng-15");
           printf("c = %d \n",c); }
 }
