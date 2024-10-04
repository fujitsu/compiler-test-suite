
#include  <stdio.h>
#include  <stdlib.h>

#include  <stdio.h>

int gen_int(int a);

int errorprc (testnum , name)
char *testnum  ;
char *name     ;
{
printf ("error message *** test number *** %s\n\
the contents of error *** %s \n",testnum ,name) ;
}
static  int test1();
int mptest11 (void)
{

  printf(" *** MPTEST11 START *** \n");
  if(test1()==0)
    printf(" *** OK          *** \n");
  else
    printf(" *** NG          *** \n");
  printf(" *** ENDED          *** \n");
}
static 
 int test1 (void)
{
  int  i=12,j=34,l=56,z=0,ans;
  double   a=12.0,b=34.0,c=56.0,xxx;

  
  

  ans=i+0;
  if( ans!=i )  { errorprc(" ** mptest11 no.1 ng \n");
                   return(1); }

  ans=0+i;
  if( ans!=i )  { errorprc(" ** mptest11 no.2 ng \n");
                   return(1); }

  ans=i;
  ans+=0;
  if( ans!=i )  { errorprc(" ** mptest11 no.3 ng \n");
                   return(1); }

  ans=i+1;
  if( ans!=13 )  { errorprc(" ** mptest11 no.4 ng \n");
                   return(1); }

  ans=1+i;
  if( ans!=13 )  { errorprc(" ** mptest11 no.5 ng \n");
                   return(1); }

  ans=i;
  ans+=1;
  if( ans!=13 )  { errorprc(" ** mptest11 no.6 ng \n");
                   return(1); }

  xxx=a+0;
  if( xxx!=a )  { errorprc(" ** mptest11 no.7 ng \n");
                   return(1); }

  ans=0+i;
  if( xxx!=a )  { errorprc(" ** mptest11 no.8 ng \n");
                   return(1); }

  xxx=a;
  xxx+=0;
  if( xxx!=a )  { errorprc(" ** mptest11 no.9 ng \n");
                   return(1); }

  xxx=a+1;
  if( xxx!=13 )  { errorprc(" ** mptest11 no.10 ng \n");
                   return(1); }

  xxx=1+a;
  if( xxx!=13 )  { errorprc(" ** mptest11 no.11 ng \n");
                   return(1); }

  xxx=a;
  xxx+=1;
  if( xxx!=13 )  { errorprc(" ** mptest11 no.12 ng \n");
                   return(1); }

  
  
  

  ans=i-0;
  if( ans!=i )  { errorprc(" ** mptest11 no.13 ng \n");
                   return(1); }

  ans=i;
  ans-=0;
  if( ans!=i )  { errorprc(" ** mptest11 no.14 ng \n");
                   return(1); }

  ans=0-i;
  if( ans!=-i )  { errorprc(" ** mptest11 no.15 ng \n");
                   return(1); }

  xxx=a-0.0;
  if( xxx!=a )  { errorprc(" ** mptest11 no.16 ng \n");
                   return(1); }

  xxx=a;
  xxx-=0.0;
  if( xxx!=a )  { errorprc(" ** mptest11 no.17 ng \n");
                   return(1); }

  xxx=0.0-a;
  if( xxx!=-a )  { errorprc(" ** mptest11 no.18 ng \n");
                   return(1); }

  
  
  
  
  

  ans=i*0;
  if( ans )  { errorprc(" ** mptest11 no.19 ng \n");
                   return(1); }

  ans=0*i;
  if( ans )  { errorprc(" ** mptest11 no.20 ng \n");
                   return(1); }

  ans=i;
  ans*=0;
  if( ans )  { errorprc(" ** mptest11 no.21 ng \n");
                   return(1); }

  xxx=a*0.0;
  if( xxx!=0.0 )  { errorprc(" ** mptest11 no.22 ng \n");
                   return(1); }

  xxx=0.0*a;
  if( xxx!=0.0 )  { errorprc(" ** mptest11 no.23 ng \n");
                   return(1); }

  ans=i*1;
  if( ans!=i )  { errorprc(" ** mptest11 no.24 ng \n");
                   return(1); }

  ans=1*i;
  if( ans!=i )  { errorprc(" ** mptest11 no.25 ng \n");
                   return(1); }

  ans=i;
  ans*=1;
  if( ans!=i )  { errorprc(" ** mptest11 no.26 ng \n");
                   return(1); }

  xxx=a*1.0;
  if( xxx!=a )  { errorprc(" ** mptest11 no.27 ng \n");
                   return(1); }

  xxx=1.0*a;
  if( xxx!=a )  { errorprc(" ** mptest11 no.28 ng \n");
                   return(1); }

  xxx=a;
  xxx*=1.0;
  if( xxx!=a )  { errorprc(" ** mptest11 no.29 ng \n");
                   return(1); }

  ans=i*2;
  if( ans!=24 )  { errorprc(" ** mptest11 no.30 ng \n");
                   return(1); }

  ans=2*i;
  if( ans!=24 )  { errorprc(" ** mptest11 no.31 ng \n");
                   return(1); }

  ans=i;
  ans*=2;
  if( ans!=24 )  { errorprc(" ** mptest11 no.32 ng \n");
                   return(1); }

  ans=i*4;
  if( ans!=48 )  { errorprc(" ** mptest11 no.33 ng \n");
                   return(1); }

  ans=4*i;
  if( ans!=48 )  { errorprc(" ** mptest11 no.34 ng \n");
                   return(1); }

  ans=i;
  ans*=4;
  if( ans!=48 )  { errorprc(" ** mptest11 no.35 ng \n");
                   return(1); }

  xxx=2.0*a;
  if( xxx!=24.0 )  { errorprc(" ** mptest11 no.36 ng \n");
                   return(1); }

  xxx=a*2.0;
  if( xxx!=24.0 )  { errorprc(" ** mptest11 no.37 ng \n");
                   return(1); }

  xxx=a;
  xxx*=2.0;
  if( xxx!=24.0 )  { errorprc(" ** mptest11 no.38 ng \n");
                   return(1); }

  

  ans=i*0.0;
  if( ans )  { errorprc(" ** mptest11 no.39 ng \n");
                   return(1); }

  ans=0.0*i;
  if( ans )  { errorprc(" ** mptest11 no.40 ng \n");
                   return(1); }

  ans=i;
  ans*=0.0;
  if( ans )  { errorprc(" ** mptest11 no.41 ng \n");
                   return(1); }

  ans=i*1.0;
  if( ans!=i )  { errorprc(" ** mptest11 no.42 ng \n");
                   return(1); }

  ans=1.0*i;
  if( ans!=i )  { errorprc(" ** mptest11 no.43 ng \n");
                   return(1); }

  ans=i;
  ans*=1.0;
  if( ans!=i )  { errorprc(" ** mptest11 no.44 ng \n");
                   return(1); }

  ans=i*2.0;
  if( ans!=24 )  { errorprc(" ** mptest11 no.45 ng \n");
                   return(1); }

  ans=2.0*i;
  if( ans!=24 )  { errorprc(" ** mptest11 no.46 ng \n");
                   return(1); }

  ans=i;
  ans*=2.0;
  if( ans!=24 )  { errorprc(" ** mptest11 no.47 ng \n");
                   return(1); }

  ans=i*4.0;
  if( ans!=48 )  { errorprc(" ** mptest11 no.48 ng \n");
                   return(1); }

  ans=4.0*i;
  if( ans!=48 )  { errorprc(" ** mptest11 no.49 ng \n");
                   return(1); }

  ans=i;
  ans*=4.0;
  if( ans!=48 )  { errorprc(" ** mptest11 no.50 ng \n");
                   return(1); }

  

  ans=i*-1;
  if( ans!=-i )  { errorprc(" ** mptest11 no.51 ng \n");
                   return(1); }

  ans=-1*i;
  if( ans!=-i )  { errorprc(" ** mptest11 no.52 ng \n");
                   return(1); }

  ans=i;
  ans*=-1.0;
  if( ans!=-i )  { errorprc(" ** mptest11 no.53 ng \n");
                   return(1); }

  xxx=a*-1.0;
  if( xxx!=-a )  { errorprc(" ** mptest11 no.54 ng \n");
                   return(1); }

  xxx=-1.0*a;
  if( xxx!=-a )  { errorprc(" ** mptest11 no.55 ng \n");
                   return(1); }

  xxx=a;
  xxx*=-1.0;
  if( xxx!=-a )  { errorprc(" ** mptest11 no.56 ng \n");
                   return(1); }

  

  ans=i*-2;
  if( ans!=-24 )  { errorprc(" ** mptest11 no.57 ng \n");
                   return(1); }

  ans=-2*i;
  if( ans!=-24 )  { errorprc(" ** mptest11 no.58 ng \n");
                   return(1); }

  ans=i;
  ans*=-2;
  if( ans!=-24 )  { errorprc(" ** mptest11 no.59 ng \n");
                   return(1); }

  ans=i*-4;
  if( ans!=-48 )  { errorprc(" ** mptest11 no.60 ng \n");
                   return(1); }

  ans=-4*i;
  if( ans!=-48 )  { errorprc(" ** mptest11 no.61 ng \n");
                   return(1); }

  ans=i;
  ans*=-4;
  if( ans!=-48 )  { errorprc(" ** mptest11 no.62 ng \n");
                   return(1); }

  
  
  
  
  
  
  

  ans=0/i;
  if( ans )  { errorprc(" ** mptest11 no.63 ng \n");
                   return(1); }

  xxx=0.0/a;
  if( xxx )  { errorprc(" ** mptest11 no.64 ng \n");
                   return(1); }

  ans=i/1;
  if( ans!=i )  { errorprc(" ** mptest11 no.65 ng \n");
                   return(1); }

  ans=i;
  ans/=1;
  if( ans!=i )  { errorprc(" ** mptest11 no.66 ng \n");
                   return(1); }

  xxx=a/1.0;
  if( xxx!=a )  { errorprc(" ** mptest11 no.67 ng \n");
                   return(1); }

  xxx=a;
  xxx/=1.0;
  if( xxx!=a )  { errorprc(" ** mptest11 no.68 ng \n");
                   return(1); }

  ans=i/-1;
  if( ans!=-i )  { errorprc(" ** mptest11 no.69 ng \n");
                   return(1); }

  ans=i;
  ans/=-1;
  if( ans!=-i )  { errorprc(" ** mptest11 no.70 ng \n");
                   return(1); }

  xxx=a/-1.0;
  if( xxx!=-a )  { errorprc(" ** mptest11 no.71 ng \n");
                   return(1); }

  xxx=a;
  xxx/=-1.0;
  if( xxx!=-a )  { errorprc(" ** mptest11 no.72 ng \n");
                   return(1); }

  
  {
  unsigned int ui=12,uans;

  uans=ui/2;
  if( uans!=6 )  { errorprc(" ** mptest11 no.73 ng \n");
                   return(1); }

  uans=ui/4;
  if( uans!=3 )  { errorprc(" ** mptest11 no.74 ng \n");
                   return(1); }

  uans=ui;
  uans/=2;
  if( uans!=6 )  { errorprc(" ** mptest11 no.75 ng \n");
                   return(1); }

  uans=ui;
  uans/=4;
  if( uans!=3 )  { errorprc(" ** mptest11 no.76 ng \n");
                   return(1); }

  }

  ans=i/2;
  if( ans!=6 )  { errorprc(" ** mptest11 no.77 ng \n");
                   return(1); }

  ans=i/4;
  if( ans!=3 )  { errorprc(" ** mptest11 no.78 ng \n");
                   return(1); }

  ans=i;
  ans/=2;
  if( ans!=6 )  { errorprc(" ** mptest11 no.79 ng \n");
                   return(1); }

  ans=i;
  ans/=4;
  if( ans!=3 )  { errorprc(" ** mptest11 no.80 ng \n");
                   return(1); }

  

  xxx=a/2.0;
  if( xxx!=6.0 )  { errorprc(" ** mptest11 no.81 ng \n");
                   return(1); }

  xxx=a/4.0;
  if( xxx!=3.0 )  { errorprc(" ** mptest11 no.82 ng \n");
                   return(1); }

  xxx=a;
  xxx/=2.0;
  if( xxx!=6.0 )  { errorprc(" ** mptest11 no.83 ng \n");
                   return(1); }

  xxx=a;
  xxx/=4.0;
  if( xxx!=3.0 )  { errorprc(" ** mptest11 no.84 ng \n");
                   return(1); }

  

  xxx=a/(1.0/2.0);
  if( xxx!=24.0 )  { errorprc(" ** mptest11 no.85 ng \n");
                   return(1); }

  xxx=a/(1.0/2.0/2.0);
  if( xxx!=48.0 )  { errorprc(" ** mptest11 no.86-1 ng \n");
                   return(1); }

  xxx=a/(1.0/2.0/2.0/2.0/2.0/2.0/2.0/2.0/2.0/2.0/2.0/2.0);
  if( xxx!=24576.0 )  { errorprc(" ** mptest11 no.86-2 ng \n");
                   return(1); }

  xxx=a;
  xxx/=1.0/2.0;
  if( xxx!=24.0 )  { errorprc(" ** mptest11 no.87 ng \n");
                   return(1); }

  xxx=a;
  xxx/=(1.0/2.0/2.0);
  if( xxx!=48.0 )  { errorprc(" ** mptest11 no.88-1 ng \n");
                   return(1); }

  xxx=a;
  xxx/=(1.0/2.0/2.0/2.0/2.0/2.0/2.0/2.0/2.0/2.0/2.0/2.0);
  if( xxx!=24576.0 )  { errorprc(" ** mptest11 no.88-2 ng \n");
                   return(1); }

  
  
  
  
  

  ans=0%i;
  if( ans!=0 )  { errorprc(" ** mptest11 no.89 ng \n");
                   return(1); }

  ans=20%i;
  if( ans!=8 )  { errorprc(" ** mptest11 no.90 ng \n");
                   return(1); }

  ans=i%1;
  if( ans!=0 )  { errorprc(" ** mptest11 no.91 ng \n");
                   return(1); }

  ans=i;
  ans%=1;
  if( ans!=0 )  { errorprc(" ** mptest11 no.92 ng \n");
                   return(1); }

  {
  unsigned int   ui=1234,uans;

  uans=ui%32;
  if( uans!=18 )  { errorprc(" ** mptest11 no.93 ng \n");
                   return(1); }

  uans=ui;
  uans%=32;
  if( uans!=18 )  { errorprc(" ** mptest11 no.94 ng \n");
                   return(1); }

  uans=ui;
  uans=ui%31;
  if( uans!=25 )  { errorprc(" ** mptest11 no.95 ng \n");
                   return(1); }

  }

  
  
  

  ans=0<<i;
  if( ans!=0 )  { errorprc(" ** mptest11 no.96 ng \n");
                   return(1); }

  ans=0>>i;
  if( ans!=0 )  { errorprc(" ** mptest11 no.97 ng \n");
                   return(1); }

  ans=i<<0;
  if( ans!=12 )  { errorprc(" ** mptest11 no.98 ng \n");
                   return(1); }

  ans=i>>0;
  if( ans!=12 )  { errorprc(" ** mptest11 no.99 ng \n");
                   return(1); }

  ans=i;
  ans<<=0;
  if( ans!=12 )  { errorprc(" ** mptest11 no.100 ng \n");
                   return(1); }

  ans=i;
  ans>>=0;
  if( ans!=12 )  { errorprc(" ** mptest11 no.101 ng \n");
                   return(1); }

  
  
  

  ans=0|i;
  if( ans!=12 )  { errorprc(" ** mptest11 no.102 ng \n");
                   return(1); }

  ans=i|0;
  if( ans!=12 )  { errorprc(" ** mptest11 no.103 ng \n");
                   return(1); }

  ans=i;
  ans|=0;
  if( ans!=12 )  { errorprc(" ** mptest11 no.104 ng \n");
                   return(1); }

  ans=i|-1;
  if( ans!=-1 )  { errorprc(" ** mptest11 no.105 ng \n");
                   return(1); }

  ans=-1|i;
  if( ans!=-1 )  { errorprc(" ** mptest11 no.106 ng \n");
                   return(1); }

  ans=i;
  ans|=-1;
  if( ans!=-1 )  { errorprc(" ** mptest11 no.107 ng \n");
                   return(1); }

  
  
  

  ans=0&i;
  if( ans!=0 )  { errorprc(" ** mptest11 no.108 ng \n");
                   return(1); }

  ans=i&0;
  if( ans!=0 )  { errorprc(" ** mptest11 no.109 ng \n");
                   return(1); }

  ans=i;
  ans&=0;
  if( ans!=0 )  { errorprc(" ** mptest11 no.110 ng \n");
                   return(1); }

  ans=i&-1;
  if( ans!=i )  { errorprc(" ** mptest11 no.111 ng \n");
                   return(1); }

  ans=-1&i;
  if( ans!=i )  { errorprc(" ** mptest11 no.112 ng \n");
                   return(1); }

  ans=i;
  ans&=-1;
  if( ans!=i )  { errorprc(" ** mptest11 no.113 ng \n");
                   return(1); }

  
  

  ans=0^i;
  if( ans!=i )  { errorprc(" ** mptest11 no.114 ng \n");
                   return(1); }

  ans=i^0;
  if( ans!=i )  { errorprc(" ** mptest11 no.114 ng \n");
                   return(1); }

  ans=i;
  ans^=0;
  if( ans!=i )  { errorprc(" ** mptest11 no.115 ng \n");
                   return(1); }

  return(0);
}

  struct gl {
            long long int ccc;
            char a[61];
           } *gal,*gbl;
  struct g {
            int  c;
            char a[61];
           } *ga,*gb;
int 
kaimk2011 (void) {
  struct tl {
            long long int ccc;
            char a[61];
           } *tal,*tbl;
  struct vl {
            long long int ccc;
            char a[10];
           } *val,*vbl;
  union  ul {
            long long int ccc;
            char a[65];
           } *ual,*ubl;
  union  wl {
            long long int ccc;
            char a[10];
           } *wal,*wbl;
#if hal
  struct gl *hal1,*hbl;
#else
  struct gl *hal,*hbl;
#endif
  struct t {
            int  c;
            char a[61];
           } *ta,*tb;
  struct v {
            int  c;
            char a[10];
           } *va,*vb;
  union  u {
            int  c;
            char a[65];
           } *ua,*ub;
  union  w {
            int  c;
            char a[10];
           } *wa,*wb;
  struct s {
            struct   {
                       char d;
                       char a[16];
                     } xa;
           } sa,sb;
  struct p {
            struct   {
                       char d;
                       char a[15];
                     } xa;
           } pa,pb;
  struct q {
            union   {
                       char d;
                       char a[17];
                     } xa;
           } qa,qb;
  struct r {
            union   {
                       char d;
                       char a[16];
                     } xa;
           } ra,rb;
  struct g *ha,*hb;
                                                         
             ta=(struct t *)malloc(sizeof(struct t));            
             tb=(struct t *)malloc(sizeof(struct t));
             tb->c=1;
  *ta=*tb;
             if(ta->c) printf("**dpmk2011-(1)** OK\n");
             else      printf("**dpmk2011-(1)** NG\n");
                                                         
             va=(struct v *)malloc(sizeof(struct v));            
             vb=(struct v *)malloc(sizeof(struct v));
             vb->c=1;
  *va=*vb;
             if(va->c) printf("**dpmk2011-(2)** OK\n");
             else      printf("**dpmk2011-(2)** NG\n");
                                                         
             ua=(union u *)malloc(sizeof(union u));            
             ub=(union u *)malloc(sizeof(union u));
             ub->c=1;
  *ua=*ub;
             if(ua->c) printf("**dpmk2011-(3)** OK\n");
             else      printf("**dpmk2011-(3)** NG\n");
                                                         
             wa=(union w *)malloc(sizeof(union w));            
             wb=(union w *)malloc(sizeof(union w));
             wb->c=1;
  *wa=*wb;
             if(wa->c) printf("**dpmk2011-(4)** OK\n");
             else      printf("**dpmk2011-(4)** NG\n");
                                                         
             sb.xa.d='a';
  sa.xa=sb.xa;
             if(sa.xa.d=='a')  printf("**dpmk2011-(5)** OK\n");
             else              printf("**dpmk2011-(5)** NG %c\n",sa.xa.d);
                                                         
             pb.xa.d='a';
  pa.xa=pb.xa;
             if(pa.xa.d=='a')  printf("**dpmk2011-(6)** OK\n");
             else              printf("**dpmk2011-(6)** NG %c\n",pa.xa.d);
                                                         
             qb.xa.d='b';
  qa.xa=qb.xa;
             if(qa.xa.d=='b')  printf("**dpmk2011-(7)** OK\n");
             else              printf("**dpmk2011-(7)** NG %c\n",qa.xa.d);
                                                         
             rb.xa.d='b';
  ra.xa=rb.xa;
             if(ra.xa.d=='b')  printf("**dpmk2011-(8)** OK\n");
             else              printf("**dpmk2011-(8)** NG %c\n",ra.xa.d);
                                                         
             ga=(struct g *)malloc(sizeof(struct g));            
             gb=(struct g *)malloc(sizeof(struct g));
             gb->c=1;
  *ga=*gb;
             if(ga->c) printf("**dpmk2011-(9)** OK\n");
             else      printf("**dpmk2011-(9)** NG %d\n",ga->c);
             ha=(struct g *)malloc(sizeof(struct g));            
             hb=(struct g *)malloc(sizeof(struct g));
             gb->c=2;
  *ha=*gb;
             if(ha->c==2) printf("**dpmk2011-(10)** OK\n");
             else         printf("**dpmk2011-(10)** NG %d\n",ha->c);
             hb->c=3;
  *ga=*hb;
             if(ga->c==3) printf("**dpmk2011-(11)** OK\n");
             else         printf("**dpmk2011-(11)** NG %d\n",ga->c);

                                                         
             tal=(struct tl *)malloc(sizeof(struct tl));            
             tbl=(struct tl *)malloc(sizeof(struct tl));
             tbl->ccc=1;
  *tal=*tbl;
             if(tal->ccc) printf("**kaimk2011-(1)** OK\n");
             else      printf("**kaimk2011-(1)** NG\n");
                                                         
             val=(struct vl *)malloc(sizeof(struct vl));            
             vbl=(struct vl *)malloc(sizeof(struct vl));
             vbl->ccc=1;
  *val=*vbl;
             if(val->ccc) printf("**kaimk2011-(2)** OK\n");
             else      printf("**kaimk2011-(2)** NG\n");
                                                         
             ual=(union ul *)malloc(sizeof(union ul));            
             ubl=(union ul *)malloc(sizeof(union ul));
             ubl->ccc=1;
  *ual=*ubl;
             if(ual->ccc) printf("**kaimk2011-(3)** OK\n");
             else      printf("**kaimk2011-(3)** NG\n");
                                                         
             wal=(union wl *)malloc(sizeof(union wl));            
             wbl=(union wl *)malloc(sizeof(union wl));
             wbl->ccc=1;
  *wal=*wbl;
             if(wal->ccc) printf("**kaimk2011-(4)** OK\n");
             else      printf("**kaimk2011-(4)** NG\n");
                                                         
                                                         
             gal=(struct gl *)malloc(sizeof(struct gl));            
             gbl=(struct gl *)malloc(sizeof(struct gl));
             gbl->ccc=1;
  *gal=*gbl;
             if(gal->ccc) printf("**kaimk2011-(5)** OK\n");
             else      printf("**kaimk2011-(5)** NG %d\n",gal->ccc);
#if hal
             hal1=(struct gl *)malloc(sizeof(struct gl));            
#else
             hal=(struct gl *)malloc(sizeof(struct gl));            
#endif
             hbl=(struct gl *)malloc(sizeof(struct gl));
             gbl->ccc=2;
#if hal
  *hal1=*gbl;
             if(hal1->ccc==2) printf("**kaimk2011-(6)** OK\n");
             else         printf("**kaimk2011-(6)** NG %d\n",hal1->ccc);
             hbl->ccc=3;
#else
  *hal=*gbl;
             if(hal->ccc==2) printf("**kaimk2011-(6)** OK\n");
             else         printf("**kaimk2011-(6)** NG %d\n",hal->ccc);
             hbl->ccc=3;
#endif
  *gal=*hbl;
             if(gal->ccc==3) printf("**kaimk2011-(7)** OK\n");
             else         printf("**kaimk2011-(7)** NG %d\n",gal->ccc);

             free(ta);
             free(tb);
             free(va);
             free(vb);
             free(ua);
             free(ub);
             free(wa);
             free(wb);
             free(ga);
             free(gb);
             free(ha);
             free(hb);
             free(tal);
             free(tbl);
             free(val);
             free(vbl);
             free(ual);
             free(ubl);
             free(wal);
             free(wbl);
             free(gal);
             free(gbl);
#if hal
             free(hal1);
#else
             free(hal);
#endif
             free(hbl);

}

#include  <stdio.h>

#define ON  1
#define OFF 0
int 
cdpm0011 (void){
  int i;
  struct t {
             struct  m {char     move[1000];} m1;
             struct  m  m5;
             struct  m  m4;
             struct  m  m6;
             struct  m  m2;
             struct  m  m3;
           unsigned short int    :1;
             signed int          :1;
             signed char         :1;
           unsigned char         :1;
             signed short int    :1;
           unsigned int          :1;
           unsigned int       b06:1;
           unsigned char      b02:1;
             signed short int b03:1;
           unsigned short int b04:1;
             signed int       b05:1;
             signed char      b01:1;
  } x;
  x.b05=ON;
  x.b01=ON;
  x.b02=ON;
  x.b03=ON;
  x.b04=ON;
  x.b06=ON; 
             if (x.b01== -ON
              && x.b03== -ON
              && x.b05== -ON)
                           printf("**cdpm0011-(01)** OK\n");
             else          printf("**cdpm0011-(01)** NG x.b01=%x x.b03=%x x.b05=%x\n",x.b01,x.b03,x.b05);
             if (x.b02== ON
              && x.b04== ON
              && x.b06== ON)
                           printf("**cdpm0011-(02)** OK\n");
             else          printf("**cdpm0011-(02)** NG x.b02=%x x.b04=%x x.b06=%x\n",x.b02,x.b04,x.b06);
#pragma clang loop unroll_count(99)
             for (i=0; i<1000; i++)
               x.m1.move[i]='a';
             x.m1.move[999]='e';
  x.m6=x.m5=x.m4=x.m3=x.m2=x.m1;
             for (i=0; x.m6.move[i]=='a'; i++);
             if (i==999)  
                           printf("**cdpm0011-(03)** OK\n");
             else          printf("**cdpm0011-(03)** NG i=%d\n",i);
  {
  struct t {
             signed char      b01:1;
             signed char         :1;
             struct  m {char     move[1000];} m1;
           unsigned char      b02:1;
           unsigned char         :1;
             struct  m  m2;
             signed short int b03:1;
             signed short int    :1;
           unsigned short int b04:1;
             struct  m  m3;
           unsigned short int    :1;
             struct  m  m4;
             signed int       b05:1;
             signed int          :1;
           unsigned int       b06:1;
           unsigned int          :1;
             struct  m  m5;
             struct  m  m6;
  } x;
  {
  struct t {
             struct  m {char     move[1000];} m1;
             signed char      b01:1;
             signed char         :1;
           unsigned char         :1;
           unsigned char      b02:1;
             struct  m  m2;
             signed short int b03:1;
             struct  m  m3;
             signed short int    :1;
           unsigned short int b04:1;
           unsigned int          :1;
           unsigned short int    :1;
             signed int       b05:1;
             signed int          :1;
           unsigned int       b06:1;
             struct  m  m4;
             struct  m  m5;
             struct  m  m6;
  } x;
  {
  struct t {
             signed char      b01:1;
             signed char         :1;
             struct  m {char     move[1000];} m1;
             struct  m  m2;
           unsigned char      b02:1;
           unsigned char         :1;
             signed short int b03:1;
             signed short int    :1;
             struct  m  m3;
           unsigned short int b04:1;
           unsigned short int    :1;
             struct  m  m4;
             struct  m  m5;
             signed int       b05:1;
             signed int          :1;
             struct  m  m6;
           unsigned int       b06:1;
           unsigned int          :1;
  } x;
  {
  struct t {
             signed char      b01:1;
             struct  m {char     move[1000];} m1;
             signed char         :1;
             struct  m  m2;
           unsigned char      b02:1;
           unsigned char         :1;
             signed short int b03:1;
             signed short int    :1;
           unsigned short int b04:1;
             struct  m  m3;
           unsigned short int    :1;
             struct  m  m4;
             signed int       b05:1;
             struct  m  m5;
             signed int          :1;
             struct  m  m6;
           unsigned int       b06:1;
           unsigned int          :1;
  } x;
  {
  struct t {
             struct  m {char     move[1000];} m1;
             struct  m  m5;
             struct  m  m6;
           unsigned char         :1;
             signed short int    :1;
           unsigned int          :1;
           unsigned int       b06:1;
           unsigned char      b02:1;
             struct  m  m3;
             struct  m  m2;
             signed short int b03:1;
           unsigned short int b04:1;
             signed int       b05:1;
           unsigned short int    :1;
             signed int          :1;
             struct  m  m4;
             signed char         :1;
             signed char      b01:1;
  } x;
  x.b05=ON;
  x.b01=ON;
  x.b02=ON;
  x.b03=ON;
  x.b04=ON;
  x.b06=ON; 
             if (x.b01== -ON
              && x.b03== -ON
              && x.b05== -ON)
                           printf("**cdpm0011-(04)** OK\n");
             else          printf("**cdpm0011-(04)** NG x.b01=%x x.b03=%x x.b05=%x\n",x.b01,x.b03,x.b05);
             if (x.b02== ON
              && x.b04== ON
              && x.b06== ON)
                           printf("**cdpm0011-(05)** OK\n");
             else          printf("**cdpm0011-(05)** NG x.b02=%x x.b04=%x x.b06=%x\n",x.b02,x.b04,x.b06);
             for (i=0; i<1000; i++)
               x.m1.move[i]='a';
             x.m1.move[999]='e';
  x.m6=x.m5=x.m4=x.m3=x.m2=x.m1;
             for (i=0; x.m6.move[i]=='a'; i++);
             if (i==999)  
                           printf("**cdpm0011-(06)** OK\n");
             else          printf("**cdpm0011-(06)** NG i=%d\n",i);
  }
  x.b05=ON;
  x.b01=ON;
  x.b02=ON;
  x.b03=ON;
  x.b04=ON;
  x.b06=ON; 
             if (x.b01== -ON
              && x.b03== -ON
              && x.b05== -ON)
                           printf("**cdpm0011-(07)** OK\n");
             else          printf("**cdpm0011-(07)** NG x.b01=%x x.b03=%x x.b05=%x\n",x.b01,x.b03,x.b05);
             if (x.b02== ON
              && x.b04== ON
              && x.b06== ON)
                           printf("**cdpm0011-(08)** OK\n");
             else          printf("**cdpm0011-(08)** NG x.b02=%x x.b04=%x x.b06=%x\n",x.b02,x.b04,x.b06);
             for (i=0; i<1000; i++)
               x.m1.move[i]='a';
             x.m1.move[999]='e';
  x.m6=x.m5=x.m4=x.m3=x.m2=x.m1;
             for (i=0; x.m6.move[i]=='a'; i++);
             if (i==999)  
                           printf("**cdpm0011-(09)** OK\n");
             else          printf("**cdpm0011-(09)** NG i=%d\n",i);
  }
  x.b05=ON;
  x.b01=ON;
  x.b02=ON;
  x.b03=ON;
  x.b04=ON;
  x.b06=ON; 
             if (x.b01== -ON
              && x.b03== -ON
              && x.b05== -ON)
                           printf("**cdpm0011-(10)** OK\n");
             else          printf("**cdpm0011-(10)** NG x.b01=%x x.b03=%x x.b05=%x\n",x.b01,x.b03,x.b05);
             if (x.b02== ON
              && x.b04== ON
              && x.b06== ON)
                           printf("**cdpm0011-(11)** OK\n");
             else          printf("**cdpm0011-(11)** NG x.b02=%x x.b04=%x x.b06=%x\n",x.b02,x.b04,x.b06);
             for (i=0; i<1000; i++)
               x.m1.move[i]='a';
             x.m1.move[999]='e';
  x.m6=x.m5=x.m4=x.m3=x.m2=x.m1;
             for (i=0; x.m6.move[i]=='a'; i++);
             if (i==999)  
                           printf("**cdpm0011-(12)** OK\n");
             else          printf("**cdpm0011-(12)** NG i=%d\n",i);
  }
  x.b05=ON;
  x.b01=ON;
  x.b02=ON;
  x.b03=ON;
  x.b04=ON;
  x.b06=ON; 
             if (x.b01== -ON
              && x.b03== -ON
              && x.b05== -ON)
                           printf("**cdpm0011-(13)** OK\n");
             else          printf("**cdpm0011-(13)** NG x.b01=%x x.b03=%x x.b05=%x\n",x.b01,x.b03,x.b05);
             if (x.b02== ON
              && x.b04== ON
              && x.b06== ON)
                           printf("**cdpm0011-(14)** OK\n");
             else          printf("**cdpm0011-(14)** NG x.b02=%x x.b04=%x x.b06=%x\n",x.b02,x.b04,x.b06);
             for (i=0; i<1000; i++)
               x.m1.move[i]='a';
             x.m1.move[999]='e';
  x.m6=x.m5=x.m4=x.m3=x.m2=x.m1;
             for (i=0; x.m6.move[i]=='a'; i++);
             if (i==999)  
                           printf("**cdpm0011-(15)** OK\n");
             else          printf("**cdpm0011-(15)** NG i=%d\n",i);
  }
  x.b05=ON;
  x.b01=ON;
  x.b02=ON;
  x.b03=ON;
  x.b04=ON;
  x.b06=ON; 
             if (x.b01== -ON
              && x.b03== -ON
              && x.b05== -ON)
                           printf("**cdpm0011-(16)** OK\n");
             else          printf("**cdpm0011-(16)** NG x.b01=%x x.b03=%x x.b05=%x\n",x.b01,x.b03,x.b05);
             if (x.b02== ON
              && x.b04== ON
              && x.b06== ON)
                           printf("**cdpm0011-(17)** OK\n");
             else          printf("**cdpm0011-(17)** NG x.b02=%x x.b04=%x x.b06=%x\n",x.b02,x.b04,x.b06);
             for (i=0; i<1000; i++)
               x.m1.move[i]='a';
             x.m1.move[999]='e';
  x.m6=x.m5=x.m4=x.m3=x.m2=x.m1;
             for (i=0; x.m6.move[i]=='a'; i++);
             if (i==999)  
                           printf("**cdpm0011-(18)** OK\n");
             else          printf("**cdpm0011-(18)** NG i=%d\n",i);
  }
}

#include  <stdio.h>

#include <stdio.h>

#if INT64
__int32 l[10000];
__int32 m[10000];

scqih11()
{
    __int32 i, j = 2, k = 3;
#else
int l[10000];
int m[10000];

int scqih11()
{
    int i, j = 2, k = 3;
#endif
    for (i = 0; i < 22; ++i){
        l[i+4500] = 2;
        m[i+9000] = 3;
    }

    i = (j * k) *
        (j * k * (j * k * (j * k * (j * k * (j * k * (j * k * (j * k * (j * k *
        (j * k * (j * k * (j * k * (j * k * (j * k * (j * k * (j * k * (j * k *
        (j * k * (j * k * (j * k * (j * k * (j * k )))))))))))))))))))));
    if ((i !=
#if INT64
	 (__int32)((l[4500] * m[9000]) *
#else
	 (int)((l[4500] * m[9000]) *
#endif
        (l[4501] * m[9001] * (l[4502] * m[9002] *
        (l[4503] * m[9003] * (l[4504] * m[9004] *
        (l[4505] * m[9005] * (l[4506] * m[9006] *
        (l[4507] * m[9007] * (l[4508] * m[9008] *
        (l[4509] * m[9009] * (l[4510] * m[9010] *
        (l[4511] * m[9011] * (l[4512] * m[9012] *
        (l[4513] * m[9013] * (l[4514] * m[9014] *
        (l[4515] * m[9015] * (l[4516] * m[9016] *
        (l[4517] * m[9017] * (l[4518] * m[9018] *
        (l[4519] * m[9019] * (l[4520] * m[9020] *
        (l[4521] * m[9021] ))))))))))))))))))))))) || (i != 104857600))
        printf ("SCQIH11  NG\n");
    else
        printf ("SCQIH11  PASS.\n");
}

int expr11()
{
  int i;

  i = gen_int (1234);

  if (1234 != (- - - - - - - - - - - - - - - - - - - - i))
    {
      printf(" NGNGNG \n");
    }else{
      printf(" OKOKOK \n");
    }
}
int gen_int(a)
int a;
{
  return a;
}

#include  <stdio.h>

int scocva11()
{
   signed char              sch;
   unsigned char            uch;
   short                     sh;
   unsigned short           ush;
   long int                  li;
   unsigned long int        uli;
   long long int             lli;
   unsigned long long int   ulli;
   float                     f;
   double                    d;
   long double               ldsub1(),ldsub2(),ldsub3(),ldsub4(),
                             ldsub5(),ldsub6(),ldsub7(),ldsub8(),
                             ldsub9(),ldsub10(),ld;

   sch = 1;
   ld = ldsub1(ld,sch);
   if(ld == 1.0)
      printf("**** SCOCVA11 - 01 * O    K ****\n");
   else
      printf("**** SCOCVA11 - 01 * N    G  VAL = %x ****\n",ld);

   sh  = 1;
   ld = ldsub2(ld,sh);
   if(ld == 1.0)
      printf("**** SCOCVA11 - 02 * O    K ****\n");
   else
      printf("**** SCOCVA11 - 02 * N    G  VAL = %x ****\n",ld);

   li = 1;
   ld = ldsub3(ld,li);
   if(ld == 1.0)
      printf("**** SCOCVA11 - 03 * O    K ****\n");
   else
      printf("**** SCOCVA11 - 03 * N    G  VAL = %x ****\n",ld);

   lli = 1;
   ld = ldsub4(ld,lli);
   if(ld == 1.0)
      printf("**** SCOCVA11 - 04 * O    K ****\n");
   else
      printf("**** SCOCVA11 - 04 * N    G  VAL = %x ****\n",ld);

   uch = 1;
   ld = ldsub5(ld,uch);
   if(ld == 1.0)
      printf("**** SCOCVA11 - 05 * O    K ****\n");
   else
      printf("**** SCOCVA11 - 05 * N    G  VAL = %x ****\n",ld);

   ush = 1;
   ld = ldsub6(ld,ush);
   if(ld == 1.0)
      printf("**** SCOCVA11 - 06 * O    K ****\n");
   else
      printf("**** SCOCVA11 - 06 * N    G  VAL = %x ****\n",ld);

   uli = 1;
   ld = ldsub7(ld,uli);
   if(ld == 1.0)
      printf("**** SCOCVA11 - 07 * O    K ****\n");
   else
      printf("**** SCOCVA11 - 07 * N    G  VAL = %x ****\n",ld);

   ulli = 1;
   ld = ldsub8(ld,ulli);
   if(ld == 1.0)
      printf("**** SCOCVA11 - 08 * O    K ****\n");
   else
      printf("**** SCOCVA11 - 08 * N    G  VAL = %ld ****\n",ld);

   f = 1.0;
   ld = ldsub9(ld,f);
   if(ld == 1.0)
      printf("**** SCOCVA11 - 09 * O    K ****\n");
   else
      printf("**** SCOCVA11 - 09 * N    G  VAL = %x ****\n",ld);

   d = 1.0l;
   ld = ldsub10(ld,d);
   if(ld == 1.0)
      printf("**** SCOCVA11 - 10 * O    K ****\n");
   else
      printf("**** SCOCVA11 - 10 * N    G  VAL = %x ****\n",ld);
}

long double ldsub1(ld,sch)
  long double ld;
  signed char  sch;
{
    ld = sch;
    return ld;
}

long double ldsub2(ld,sh)
  long double ld;
  short sh;
{
    ld = sh;
    return ld;
}

long double ldsub3(ld,li)
  long double ld;
  long int     li;
{
    ld = li;
    return ld;
}

long double ldsub4(ld,lli)
  long double ld;
  long long int     lli;
{
    ld = lli;
    return ld;
}

long double ldsub5(ld,uch)
  long double ld;
  unsigned char   uch;
{
    ld = uch;
    return ld;
}

long double ldsub6(ld,ush)
  long double ld;
  unsigned short       ush;
{
    ld = ush;
    return ld;
}

long double ldsub7(ld,uli)
  long double             ld;
  unsigned long int      uli;
{
    ld = uli;
    return ld;
}

long double ldsub8(ld,ulli)
  long double             ld;
  unsigned long long int ulli;
{
    ld = ulli;
    return ld;
}

long double ldsub9(ld,f)
  long double    ld;
  float          f;
{
    ld = f;
    return ld;
}

long double ldsub10(ld,d)
  long double    ld;
  double         d;
{
    ld = d;
    return ld;
}

  long int result;
  long int result0;
  long int result1;
  long int result2;
  long int result3;
  long int result4;
  long int result5;
  long int result6;
  long int result7;
  long int result8;
  long int result9;
  int j;
int comk3111 ( ) {
  long int i,subx( );
  long int f1( ),f2( ),f3( ),f4( ),f5( ),f6( ),f7( ),f8( ),f9( ),f10( );
  long int f11( ),f12( ),f13( ),f14( ),f15( ),f16( ),f17( ),f18( ),f19( ),f20( );
  static long int (*sub[ ])( )={f1,f2,f3,f4,f5,f6,f7,f8,f9,f10
                          ,f11,f12,f13,f14,f15,f16,f17,f18,f19,f20};
  for (i=0; i<=10;i++) {
  result=sub[i](result1=
           sub[i+1](result2=
             sub[i+2](result3=
               sub[i+3](result4=
                 sub[i+4](result5=
                   sub[i+5](result6=
                     sub[i+6](result7=
                       sub[i+7](result8=
                         sub[i+8](result9=
                           sub[i+9](1)
         )))))))));
    if (sub[i](result)==2048
     && 1022 == (result0=result1 + result2 + result3 + result4 + result5
                         + result6 + result7 + result8 + result9))
      printf ("** comk3111(%d) ** OK\n",(int)(i+1));
    else
      printf ("** comk3111(%d) ** NG result=%d result0=%d\n"
              ,(int)(i+1),result,result0);
  }
  for (i=0; i<=10;i++) {
    result=subx(result0=sub[i](i)
               ,result1=sub[i+1](i)
               ,result2=sub[i+2](i)
               ,result3=sub[i+3](i)
               ,result4=sub[i+4](i)
               ,result5=sub[i+5](i)
               ,result6=sub[i+6](i)
               ,result7=sub[i+7](i)
               ,result8=sub[i+8](i)
               ,result9=sub[i+9](i));
 

    if (result==(i*20)
     && result==(result0 + result1 + result2 + result3 + result4 + result5
               + result6 + result7 + result8 + result9))
      printf ("** comk3111(%d) ** OK\n",(int)(i+12));
    else
      printf ("** comk3111(%d) ** NG result=%d\n",(int)(i+12),result);
  }
}
long int f10(p) long int p;{return p+p;}
long int f9(p) long int p;{return p+p;}
long int f8(p) long int p;{return p+p;}
long int f7(p) long int p;{return p+p;}
long int f6(p) long int p;{return p+p;}
long int f5(p) long int p;{return p+p;}
long int f4(p) long int p;{return p+p;}
long int f3(p) long int p;{return p+p;}
long int f2(p) long int p;{return p+p;}
long int f1(p) long int p;{return p+p;}
long int f20(p) long int p;{return p+p;}
long int f19(p) long int p;{return p+p;}
long int f18(p) long int p;{return p+p;}
long int f17(p) long int p;{return p+p;}
long int f16(p) long int p;{return p+p;}
long int f15(p) long int p;{return p+p;}
long int f14(p) long int p;{return p+p;}
long int f13(p) long int p;{return p+p;}
long int f12(p) long int p;{return p+p;}
long int f11(p) long int p;{return p+p;}
long int subx(p0,p1,p2,p3,p4,p5,p6,p7,p8,p9)
   long int p0,p1,p2,p3,p4,p5,p6,p7,p8,p9;{
return p0+p1+p2+p3+p4+p5+p6+p7+p8+p9;
}

#include  <stdio.h>

 long double                  lgdsic( i )
 signed char                  i ;
 {
 long double                 k;  k=i; return k;
 }
 long double                  lgdunc( i )
 unsigned char            i ;
 {
 long double                 k;  k=i; return k;
 }
 long double                  lgdssi( i )
 signed short int i ;
 {
 long double                 k;  k=i; return k;
 }
 long double                  lgdusi( i )
 unsigned short int       i ;
 {
 long double                 k;  k=i; return k;
 }
 long double                  lgdsli( i )
 signed long int i ;
 {
 long double                 k;  k=i; return k;
 }
 long double                  lgduli( i )
 unsigned long  int       i ;
 {
 long double                 k;  k=i; return k;
 }
 long double                  lgdsll( i )
 signed long long int i ;
 {
 long double                 k;  k=i; return k;
 }
 long double                  lgdull( i )
 unsigned long long int i ;
 {
 long double                 k;  k=i; return k;
 }
 long double                  lgdfla( i )
 float                    i ;
 {
 long double                 k;  k=i; return k;
 }
 long double                  lgddub( i )
 double                   i ;
 {
 long double                 k;  k=i; return k;
 }
 long double                  lgdlgd( i )
 long double                  i ;
 {
 long double                 k;  k=i; return k;
 }

  int scrcv11()
 {
   if( lgdsic(  -128  ) != -128. ) puts(" NG1 ");
   if( lgdsic(   -1   ) !=  -1.  ) puts(" NG2 ");
   if( lgdsic(    0   ) !=   0.  ) puts(" NG3 ");
   if( lgdsic(    1   ) !=   1.  ) puts(" NG4 ");
   if( lgdsic(   127  ) !=  127. ) puts(" NG5 ");

   if( lgdunc(    0   ) !=   0.  ) puts(" NG6 ");
   if( lgdunc(    1   ) !=   1.  ) puts(" NG7 ");
   if( lgdunc(   127  ) !=  127. ) puts(" NG8 ");
   if( lgdunc(  0x80  ) !=  128. ) puts(" NG8 ");

   if( lgdssi(  -32768 ) != -32768. ) puts(" NG9 ");
   if( lgdssi(   -1    ) !=   -1.   ) puts(" NG10");
   if( lgdssi(    0    ) !=    0.   ) puts(" NG11");
   if( lgdssi(    1    ) !=    1.   ) puts(" NG12");
   if( lgdssi(   32767 ) !=  32767. ) puts(" NG13");
   if( lgdssi(  0x8000 ) != -32768. ) puts(" NG13*");

   if( lgdusi(    0    ) !=   0.    ) puts(" NG14");
   if( lgdusi(    1    ) !=   1.    ) puts(" NG15");
   if( lgdusi(   32767 ) !=  32767. ) puts(" NG16");
   if( lgdusi(  0x8000 ) !=  32768. ) puts(" NG16");

   if( lgdsli(  -2147483648 ) != -2147483648. ) puts(" NG17");
   if( lgdsli(   -1L   ) !=   -1.   ) puts(" NG18");
   if( lgdsli(    0    ) !=    0.   ) puts(" NG19");
   if( lgdsli(    1    ) !=    1.   ) puts(" NG20");
   if( lgdsli( 1000000 ) != 1000000.) puts(" NG21");

   if( lgduli(    0     ) !=     0.  ) puts(" NG22");
   if( lgduli(    1     ) !=     1.  ) puts(" NG23");
   if( lgduli(  1000000 ) != 1000000.) puts(" NG24");

{
   const signed long long int i_min = -1000000;
   const signed long long int i_1   = -1;
   const signed long long int i0    =  0;
   const signed long long int i1    =  1;
   const signed long long int i_max =  1000000;

   if( lgdsll( i_min  ) != -1000000 ) puts(" NG25");
   if( lgdsll(  i_1   ) !=   -1  ) puts(" NG26");
   if( lgdsll(   i0   ) !=   0   ) puts(" NG27");
   if( lgdsll(   i1   ) !=   1   ) puts(" NG28");
   if( lgdsll( i_max  ) != 1000000 ) puts(" NG29");

}
{
   const unsigned long long int u0=0;
   const unsigned long long int u1=1;
   const unsigned long long int umax =  1000000;

   if( lgdull(   u0   ) !=   0  ) puts(" NG30");
   if( lgdull(   u1   ) !=   1  ) puts(" NG31");
   if( lgdull(  umax  ) != 1000000 ) puts(" NG32");

}

   if( lgdfla( -100.   ) != -100.0   ) puts(" NG33");
   if( lgdfla(   -1.   ) !=  -1.0    ) puts(" NG34");
   if( lgdfla(    0.   ) !=   0.0    ) puts(" NG35");
   if( lgdfla(    1.   ) !=   1.0    ) puts(" NG36");
   if( lgdfla(  100.   ) != 100.0    ) puts(" NG37");

   if( lgddub(  -100000.  ) != -100000.0   ) puts(" NG38");
   if( lgddub(   -1.   ) !=  -1.0    ) puts(" NG39");
   if( lgddub(    0.   ) !=   0.0    ) puts(" NG40");
   if( lgddub(    1.   ) !=   1.0    ) puts(" NG41");
   if( lgddub(   100000.  ) !=  100000.0   ) puts(" NG42");

   if( lgdlgd( -100000000.0L ) != -100000000.0 ) puts(" NG43");
   if( lgdlgd(   -1.0L ) !=  -1.0    ) puts(" NG44");
   if( lgdlgd(    0.0L ) !=   0.0    ) puts(" NG45");
   if( lgdlgd(    1.0L ) !=   1.0    ) puts(" NG46");
   if( lgdlgd(  100000000.0L ) !=  100000000.0  ) puts(" NG47");

   puts(" SCRCV11 PASS ");
}

int renaming11()
{
  int i, j;
  int x, y1, y2, y3, s=10;
  int k1=0, k2=0, k3=0;

  for ( i = 0, j = 100; i < 100; i++, j = j-4 ) {
    x = i + j;
    y1 = x + i;
    k1 = k1 + x +  y1;
    x = i * i - ( i + j );
    y2 = x - j;
    s = s + x;
    k2 = k2 + y2 + x;
    x = i * j;
    y3 = i - x;
    k3 = k3 + x + y3;
  }

  s = s - k1 + k2 + k3;

  printf( "SUM = %d\n", s );
  if ( s == 1019110 )
    printf( "*** sum OK ***\n" );
  else
    printf( "*** sum NG ***\n" );
}
int main( ) {
  scqih11( );
  kaimk2011( );
  mptest11( );
  cdpm0011( );
  scocva11( );
  expr11( );
  scrcv11( );
  comk3111( );
  renaming11( );
}
