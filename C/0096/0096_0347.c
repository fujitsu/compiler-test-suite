#include  <stdio.h>
int sub4 (int *pp, float yy);
int sub3 (int bb);
int sub1 (int *pp, float yy);
int sun10 (void);
int sun9 (void);
int sun8 (void);
int sun7 (void);
int sun6 (void);
int sun5 (void);
int sun4 (void);
int sun3 (void);
int sun2 (void);
int sun1 (void);
 struct estr {
 int ea;
 int eb;
 int ec;
 };
 struct estr *epp;
 struct ustr {
 unsigned int ea;
 unsigned int eb;
 unsigned int ec;
 };
 struct fstr {
 float  ea;
 double eb;
 int    ec;
 };
int 
main (void)
 {
 sun1();
 sun2();
 sun3();
 sun4();
 sun5();
 sun6();
 sun7();
 sun8();
 sun9();
 sun10();
 }
 
 
 
 int 
sun1 (void)
 {
 int *p,a;
 float y=0.0;
 a=1;
 p=&a;
 sub1(p,y);
 }
 int 
sub1 (int *pp, float yy)
 {
 int  b,c;
 b=*pp;            
 yy=1;             
 c=*pp;            
 if (b==c) printf(" *ok-1*   %d\n",b);
 else      printf(" *ng-1*   %d\n",c);
 }
 
 
 
 int 
sun2 (void)
 {
 struct estr *ep;
 int b;
 b=1;
 sub3(b);
 }
 int 
sub3 (int bb)
 {
 struct estr  epa;
 struct estr *ep;
 int  a,c;
 epp=&epa;
 ep=epp;
 a=1;
 epp->ea=bb;      
 ep->eb=1;
 epp->eb=1;
 c=epp->ea;       
 if (c==bb) printf(" **ok-2** %d\n",bb);
 else       printf(" **ng-2** %d\n",c);
 }
 
 int 
sun3 (void)
 {
 int  i,j,d[10],*ip;
 unsigned char *q[10],*p;
 unsigned char a[10],b,c,ab[10];
 a[0]=0xf8;
 ip=&j;
 p=&a[0];
 q[6]=ab;
   for(i=0;i<10;i++)
   {
 
     *q[6]=a[0];          
     d[5]=1;
     *ip=1;
     c=*q[6];               
     if (c==0xf8) printf(" *ok-3* %x\n",c);
     else         printf(" *ng-3* %x\n",c);
 
     d[5]=10;               
     *p='a';
     i=d[5];                
     if (i==10) printf(" *ok-4* %d\n",i);
     else       printf(" *ng-4* %d\n",i);
   }
 }
 
 
 
int sun4 (void)
 {
 int *p,a;
 float y=0.0;
 a=1;
 p=&a;
 sub4(p,y);
 }
int sub4 (int *pp, float yy)
 {
 int  b,c,d;
 float x=0,z=0;
 yy=x+z;            
 b=*pp;             
 yy=1;              
 c=*pp;             
 if (c==1) printf(" *ok-5* %d\n",c);
 else      printf(" *ng-5* %d\n",c);
 }
 
 
 

static int zero = 0;  

int sun5 (void)
 {
 struct estr *ep;
 struct ustr *up;
 struct ustr  upa;
 int         *eq;
 struct estr  epa;
 int  a,b=zero,c,d,e;
 char *cc,cca;
 epp=&epa;
 up=&upa;
 ep=epp;
 cc=&cca;
 eq=&e;
 a=1;
 
 epp->ea=b;       
 ep->eb=1;
 *eq=1;           
 d=epp->ea;       
 if (d==b) printf(" *ok-6* \n");
 else      printf(" *ng-6* \n");
 
 epp->eb=b;       
 up->eb=1;        
                  
 c=epp->eb;       
 if (c==b) printf(" *ok-7* \n");
 else      printf(" *ng-7* \n");
 
 epp->ec=1;       
 *cc='a';         
                  
 e=epp->ec;       
 if (e==1) printf(" *ok-8* \n");
 else      printf(" *ng-8* \n");
 }
 
 
 
 int 
sun6 (void)
 {
 struct estr *ep;
 struct fstr fpa;
 int         *eq;
 struct estr  epa;
 struct fstr *fpp;
 int  a,b,c;
 b=8;
 epp=&epa;
 fpp=&fpa;
 ep=epp;
 a=1;
 epp->ea=b;       
 epp->eb=1;
 fpp->ea=1.0;
 c=epp->ea;       
 if (c==8) printf(" *ok-8* %d\n",b);
 else      printf(" *ng-8* %d\n",c);
 }
 
 
 int 
sun7 (void)
 {
 struct s1
 {
    float     *si;
    double    *sp;
    struct s1 *ss1;
 };
 struct s1 *s;
 struct s1  ss1a;
 double c1,*c2;
 float  f1;
 struct s1  sa;
 
 c1=8.0;
 s=&sa;
 s->si=&f1;
 s->ss1=&ss1a;
 s->ss1->sp=&c1;
 *(s->si)=1.0;           
 *(s->ss1->sp)=2.0;
 f1=*(s->si);            
 if (f1==1.0) printf(" *ok-9* c1 = %s%e\n","",f1);
 else         printf(" *ng-9* c1 = %e\n",f1);
 
 s->sp=&c1;              
 s->ss1->si=&f1;
 c2=s->sp;               
 if (*c2==2.0) printf(" *ok-10* *c2 = %s%e\n","",*c2);
 else          printf(" *ng-10* *c2 = %e\n",*c2);
 }
 
 
 int 
sun8 (void)
 {
 struct s1
 {
    float     si[5];
    unsigned char      *sp;
    struct s1 *ss1;
 };
 struct s1 *s;
 struct s1  sa;
 struct s1  ssa;
 unsigned char   c1,*c2;
 
 c1=0xf7;                
 s=&sa;                  
 s->ss1=&ssa;            
 s->sp=&c1;              
 s->si[2]=1.0;
 c2=s->sp;               
 if (*c2==0xf7) printf(" *ok-11* *c2 = %x\n",*c2);
 else           printf(" *ng-11* *c2 = %x\n",*c2);
 }
 
 int 
sun9 (void)
 {
 struct s1
 {
    float     si[5];
    char      *sp;
    struct s1 *ss1;
 };
 struct s1 *s;
 struct s1  sa;
 float  c1;
 char   spa;
 s=&sa;
 s->sp=&spa;
 s->ss1=&sa;
 
 s->si[1]=1.0;         
 s->si[2]=2.0;
 c1=s->si[1];          
 if (c1==1.0) printf(" *ok-12* c1 = %s%e\n","",c1);
 else         printf(" *ng-12* c1 = %e\n",c1);
 }
 
 int 
sun10 (void)
 {
 struct s1
 {
    float     si[5];
    char      *sp;
    int        it;
    struct s1 *ss1;
 };
 struct s1 *s;
 struct s1 sa;
 float  c1,c2,c3,c4,c5,c6;
 int    *i1;
 char   spa;
 s=&sa;
 s->sp=&spa;
 s->ss1=s;
 i1=&(s->it);
 
 c1=1.0;
 c4=c1;
 *i1=1;                  
 c2=c1;
 if (c2==1.0) printf(" *ok-13* \n");
 else         printf(" *ng-13* \n");
 
 c3=c4;
 s->it=2;                
 c5=c3;
 if (c5==1.0) printf(" *ok-14* \n");
 else         printf(" *ng-14* \n");
 }
