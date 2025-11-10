#include  <stdio.h>

#include  <stdio.h>
#include  "000.h"
static  int test1();
int main()
{

  printf(" ***  START *** \n");
  if(test1()==0)
    printf(" *** OK          *** \n");
  else
    printf(" *** NG          *** \n");
  printf(" *** ENDED          *** \n");
}
static   int test1()
{
  int  i=12,j=34,l=56,z=0,ans;
  double   a=12.0,b=34.0,c=56.0,xxx;

  
  

  ans=i+0;
  if( ans!=i )  { errorprc(" **  no.1 ng \n");
                   return(1); }

  ans=0+i;
  if( ans!=i )  { errorprc(" **  no.2 ng \n");
                   return(1); }

  ans=i;
  ans+=0;
  if( ans!=i )  { errorprc(" **  no.3 ng \n");
                   return(1); }

  ans=i+1;
  if( ans!=13 )  { errorprc(" **  no.4 ng \n");
                   return(1); }

  ans=1+i;
  if( ans!=13 )  { errorprc(" **  no.5 ng \n");
                   return(1); }

  ans=i;
  ans+=1;
  if( ans!=13 )  { errorprc(" **  no.6 ng \n");
                   return(1); }

  xxx=a+0;
  if( xxx!=a )  { errorprc(" **  no.7 ng \n");
                   return(1); }

  ans=0+i;
  if( xxx!=a )  { errorprc(" **  no.8 ng \n");
                   return(1); }

  xxx=a;
  xxx+=0;
  if( xxx!=a )  { errorprc(" **  no.9 ng \n");
                   return(1); }

  xxx=a+1;
  if( xxx!=13 )  { errorprc(" **  no.10 ng \n");
                   return(1); }

  xxx=1+a;
  if( xxx!=13 )  { errorprc(" **  no.11 ng \n");
                   return(1); }

  xxx=a;
  xxx+=1;
  if( xxx!=13 )  { errorprc(" **  no.12 ng \n");
                   return(1); }

  
  
  

  ans=i-0;
  if( ans!=i )  { errorprc(" **  no.13 ng \n");
                   return(1); }

  ans=i;
  ans-=0;
  if( ans!=i )  { errorprc(" **  no.14 ng \n");
                   return(1); }

  ans=0-i;
  if( ans!=-i )  { errorprc(" **  no.15 ng \n");
                   return(1); }

  xxx=a-0.0;
  if( xxx!=a )  { errorprc(" **  no.16 ng \n");
                   return(1); }

  xxx=a;
  xxx-=0.0;
  if( xxx!=a )  { errorprc(" **  no.17 ng \n");
                   return(1); }

  xxx=0.0-a;
  if( xxx!=-a )  { errorprc(" **  no.18 ng \n");
                   return(1); }

  ans=i*0;
  if( ans )  { errorprc(" **  no.19 ng \n");
                   return(1); }

  ans=0*i;
  if( ans )  { errorprc(" **  no.20 ng \n");
                   return(1); }

  ans=i;
  ans*=0;
  if( ans )  { errorprc(" **  no.21 ng \n");
                   return(1); }

  xxx=a*0.0;
  if( xxx!=0.0 )  { errorprc(" **  no.22 ng \n");
                   return(1); }

  xxx=0.0*a;
  if( xxx!=0.0 )  { errorprc(" **  no.23 ng \n");
                   return(1); }

  ans=i*1;
  if( ans!=i )  { errorprc(" **  no.24 ng \n");
                   return(1); }

  ans=1*i;
  if( ans!=i )  { errorprc(" **  no.25 ng \n");
                   return(1); }

  ans=i;
  ans*=1;
  if( ans!=i )  { errorprc(" **  no.26 ng \n");
                   return(1); }

  xxx=a*1.0;
  if( xxx!=a )  { errorprc(" **  no.27 ng \n");
                   return(1); }

  xxx=1.0*a;
  if( xxx!=a )  { errorprc(" **  no.28 ng \n");
                   return(1); }

  xxx=a;
  xxx*=1.0;
  if( xxx!=a )  { errorprc(" **  no.29 ng \n");
                   return(1); }

  ans=i*2;
  if( ans!=24 )  { errorprc(" **  no.30 ng \n");
                   return(1); }

  ans=2*i;
  if( ans!=24 )  { errorprc(" **  no.31 ng \n");
                   return(1); }

  ans=i;
  ans*=2;
  if( ans!=24 )  { errorprc(" **  no.32 ng \n");
                   return(1); }

  ans=i*4;
  if( ans!=48 )  { errorprc(" **  no.33 ng \n");
                   return(1); }

  ans=4*i;
  if( ans!=48 )  { errorprc(" **  no.34 ng \n");
                   return(1); }

  ans=i;
  ans*=4;
  if( ans!=48 )  { errorprc(" **  no.35 ng \n");
                   return(1); }

  xxx=2.0*a;
  if( xxx!=24.0 )  { errorprc(" **  no.36 ng \n");
                   return(1); }

  xxx=a*2.0;
  if( xxx!=24.0 )  { errorprc(" **  no.37 ng \n");
                   return(1); }

  xxx=a;
  xxx*=2.0;
  if( xxx!=24.0 )  { errorprc(" **  no.38 ng \n");
                   return(1); }

  

  ans=i*0.0;
  if( ans )  { errorprc(" **  no.39 ng \n");
                   return(1); }

  ans=0.0*i;
  if( ans )  { errorprc(" **  no.40 ng \n");
                   return(1); }

  ans=i;
  ans*=0.0;
  if( ans )  { errorprc(" **  no.41 ng \n");
                   return(1); }

  ans=i*1.0;
  if( ans!=i )  { errorprc(" **  no.42 ng \n");
                   return(1); }

  ans=1.0*i;
  if( ans!=i )  { errorprc(" **  no.43 ng \n");
                   return(1); }

  ans=i;
  ans*=1.0;
  if( ans!=i )  { errorprc(" **  no.44 ng \n");
                   return(1); }

  ans=i*2.0;
  if( ans!=24 )  { errorprc(" **  no.45 ng \n");
                   return(1); }

  ans=2.0*i;
  if( ans!=24 )  { errorprc(" **  no.46 ng \n");
                   return(1); }

  ans=i;
  ans*=2.0;
  if( ans!=24 )  { errorprc(" **  no.47 ng \n");
                   return(1); }

  ans=i*4.0;
  if( ans!=48 )  { errorprc(" **  no.48 ng \n");
                   return(1); }

  ans=4.0*i;
  if( ans!=48 )  { errorprc(" **  no.49 ng \n");
                   return(1); }

  ans=i;
  ans*=4.0;
  if( ans!=48 )  { errorprc(" **  no.50 ng \n");
                   return(1); }

  

  ans=i*-1;
  if( ans!=-i )  { errorprc(" **  no.51 ng \n");
                   return(1); }

  ans=-1*i;
  if( ans!=-i )  { errorprc(" **  no.52 ng \n");
                   return(1); }

  ans=i;
  ans*=-1.0;
  if( ans!=-i )  { errorprc(" **  no.53 ng \n");
                   return(1); }

  xxx=a*-1.0;
  if( xxx!=-a )  { errorprc(" **  no.54 ng \n");
                   return(1); }

  xxx=-1.0*a;
  if( xxx!=-a )  { errorprc(" **  no.55 ng \n");
                   return(1); }

  xxx=a;
  xxx*=-1.0;
  if( xxx!=-a )  { errorprc(" **  no.56 ng \n");
                   return(1); }

  

  ans=i*-2;
  if( ans!=-24 )  { errorprc(" **  no.57 ng \n");
                   return(1); }

  ans=-2*i;
  if( ans!=-24 )  { errorprc(" **  no.58 ng \n");
                   return(1); }

  ans=i;
  ans*=-2;
  if( ans!=-24 )  { errorprc(" **  no.59 ng \n");
                   return(1); }

  ans=i*-4;
  if( ans!=-48 )  { errorprc(" **  no.60 ng \n");
                   return(1); }

  ans=-4*i;
  if( ans!=-48 )  { errorprc(" **  no.61 ng \n");
                   return(1); }

  ans=i;
  ans*=-4;
  if( ans!=-48 )  { errorprc(" **  no.62 ng \n");
                   return(1); }

  ans=0/i;
  if( ans )  { errorprc(" **  no.63 ng \n");
                   return(1); }

  xxx=0.0/a;
  if( xxx )  { errorprc(" **  no.64 ng \n");
                   return(1); }

  ans=i/1;
  if( ans!=i )  { errorprc(" **  no.65 ng \n");
                   return(1); }

  ans=i;
  ans/=1;
  if( ans!=i )  { errorprc(" **  no.66 ng \n");
                   return(1); }

  xxx=a/1.0;
  if( xxx!=a )  { errorprc(" **  no.67 ng \n");
                   return(1); }

  xxx=a;
  xxx/=1.0;
  if( xxx!=a )  { errorprc(" **  no.68 ng \n");
                   return(1); }

  ans=i/-1;
  if( ans!=-i )  { errorprc(" **  no.69 ng \n");
                   return(1); }

  ans=i;
  ans/=-1;
  if( ans!=-i )  { errorprc(" **  no.70 ng \n");
                   return(1); }

  xxx=a/-1.0;
  if( xxx!=-a )  { errorprc(" **  no.71 ng \n");
                   return(1); }

  xxx=a;
  xxx/=-1.0;
  if( xxx!=-a )  { errorprc(" **  no.72 ng \n");
                   return(1); }

  
  {
  unsigned int ui=12,uans;

  uans=ui/2;
  if( uans!=6 )  { errorprc(" **  no.73 ng \n");
                   return(1); }

  uans=ui/4;
  if( uans!=3 )  { errorprc(" **  no.74 ng \n");
                   return(1); }

  uans=ui;
  uans/=2;
  if( uans!=6 )  { errorprc(" **  no.75 ng \n");
                   return(1); }

  uans=ui;
  uans/=4;
  if( uans!=3 )  { errorprc(" **  no.76 ng \n");
                   return(1); }

  }

  ans=i/2;
  if( ans!=6 )  { errorprc(" **  no.77 ng \n");
                   return(1); }

  ans=i/4;
  if( ans!=3 )  { errorprc(" **  no.78 ng \n");
                   return(1); }

  ans=i;
  ans/=2;
  if( ans!=6 )  { errorprc(" **  no.79 ng \n");
                   return(1); }

  ans=i;
  ans/=4;
  if( ans!=3 )  { errorprc(" **  no.80 ng \n");
                   return(1); }

  

  xxx=a/2.0;
  if( xxx!=6.0 )  { errorprc(" **  no.81 ng \n");
                   return(1); }

  xxx=a/4.0;
  if( xxx!=3.0 )  { errorprc(" **  no.82 ng \n");
                   return(1); }

  xxx=a;
  xxx/=2.0;
  if( xxx!=6.0 )  { errorprc(" **  no.83 ng \n");
                   return(1); }

  xxx=a;
  xxx/=4.0;
  if( xxx!=3.0 )  { errorprc(" **  no.84 ng \n");
                   return(1); }

  

  xxx=a/(1.0/2.0);
  if( xxx!=24.0 )  { errorprc(" **  no.85 ng \n");
                   return(1); }

  xxx=a/(1.0/2.0/2.0);
  if( xxx!=48.0 )  { errorprc(" **  no.86-1 ng \n");
                   return(1); }

  xxx=a/(1.0/2.0/2.0/2.0/2.0/2.0/2.0/2.0/2.0/2.0/2.0/2.0);
  if( xxx!=24576.0 )  { errorprc(" **  no.86-2 ng \n");
                   return(1); }

  xxx=a;
  xxx/=1.0/2.0;
  if( xxx!=24.0 )  { errorprc(" **  no.87 ng \n");
                   return(1); }

  xxx=a;
  xxx/=(1.0/2.0/2.0);
  if( xxx!=48.0 )  { errorprc(" **  no.88-1 ng \n");
                   return(1); }

  xxx=a;
  xxx/=(1.0/2.0/2.0/2.0/2.0/2.0/2.0/2.0/2.0/2.0/2.0/2.0);
  if( xxx!=24576.0 )  { errorprc(" **  no.88-2 ng \n");
                   return(1); }


  ans=0%i;
  if( ans!=0 )  { errorprc(" **  no.89 ng \n");
                   return(1); }

  ans=20%i;
  if( ans!=8 )  { errorprc(" **  no.90 ng \n");
                   return(1); }

  ans=i%1;
  if( ans!=0 )  { errorprc(" **  no.91 ng \n");
                   return(1); }

  ans=i;
  ans%=1;
  if( ans!=0 )  { errorprc(" **  no.92 ng \n");
                   return(1); }

  {
  unsigned int   ui=1234,uans;

  uans=ui%32;
  if( uans!=18 )  { errorprc(" **  no.93 ng \n");
                   return(1); }

  uans=ui;
  uans%=32;
  if( uans!=18 )  { errorprc(" **  no.94 ng \n");
                   return(1); }

  uans=ui;
  uans=ui%31;
  if( uans!=25 )  { errorprc(" **  no.95 ng \n");
                   return(1); }

  }

  
  
  

  ans=0<<i;
  if( ans!=0 )  { errorprc(" **  no.96 ng \n");
                   return(1); }

  ans=0>>i;
  if( ans!=0 )  { errorprc(" **  no.97 ng \n");
                   return(1); }

  ans=i<<0;
  if( ans!=12 )  { errorprc(" **  no.98 ng \n");
                   return(1); }

  ans=i>>0;
  if( ans!=12 )  { errorprc(" **  no.99 ng \n");
                   return(1); }

  ans=i;
  ans<<=0;
  if( ans!=12 )  { errorprc(" **  no.100 ng \n");
                   return(1); }

  ans=i;
  ans>>=0;
  if( ans!=12 )  { errorprc(" **  no.101 ng \n");
                   return(1); }

  
  
  

  ans=0|i;
  if( ans!=12 )  { errorprc(" **  no.102 ng \n");
                   return(1); }

  ans=i|0;
  if( ans!=12 )  { errorprc(" **  no.103 ng \n");
                   return(1); }

  ans=i;
  ans|=0;
  if( ans!=12 )  { errorprc(" **  no.104 ng \n");
                   return(1); }

  ans=i|-1;
  if( ans!=-1 )  { errorprc(" **  no.105 ng \n");
                   return(1); }

  ans=-1|i;
  if( ans!=-1 )  { errorprc(" **  no.106 ng \n");
                   return(1); }

  ans=i;
  ans|=-1;
  if( ans!=-1 )  { errorprc(" **  no.107 ng \n");
                   return(1); }

  
  
  

  ans=0&i;
  if( ans!=0 )  { errorprc(" **  no.108 ng \n");
                   return(1); }

  ans=i&0;
  if( ans!=0 )  { errorprc(" **  no.109 ng \n");
                   return(1); }

  ans=i;
  ans&=0;
  if( ans!=0 )  { errorprc(" **  no.110 ng \n");
                   return(1); }

  ans=i&-1;
  if( ans!=i )  { errorprc(" **  no.111 ng \n");
                   return(1); }

  ans=-1&i;
  if( ans!=i )  { errorprc(" **  no.112 ng \n");
                   return(1); }

  ans=i;
  ans&=-1;
  if( ans!=i )  { errorprc(" **  no.113 ng \n");
                   return(1); }

  
  

  ans=0^i;
  if( ans!=i )  { errorprc(" **  no.114 ng \n");
                   return(1); }

  ans=i^0;
  if( ans!=i )  { errorprc(" **  no.114 ng \n");
                   return(1); }

  ans=i;
  ans^=0;
  if( ans!=i )  { errorprc(" **  no.115 ng \n");
                   return(1); }

  return(0);
}
