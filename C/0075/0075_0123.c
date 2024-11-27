

#include  <stdio.h>
#define  inclock(x,y,z) x=clock(y,z)

#define  nloop 5
#define  iand(x,y)    ((x)&(y))

       void init();
       void initp();

      double x[1001+1], y[1001+1], z[1001+1], u[1001+1],
      px[15+1][100+1],cx[15+1][100+1],u1[5+1][22+1][2+1],
      u2[5+1][22+1][2+1],u3[5+1][22+1][2+1],
        b[64+1][8+1],bnk1[5+1], c[64+1][8+1],bnk2[5+1],
        p[4+1][512+1],bnk3[5+1], h[64+1][8+1],
       bnk4[5+1], bnk5[5+1], 
        ex[67+1],  rh[67+1], dex[67+1],
        vx[150+1], xx[150+1], grd[150+1]
        ;
      int     eee[192+1],fff[192+1];
int main()
{
       static int  nrops[]= { 0,
             5,10,2,2,2,2,16,36,17,9,1,1,7,11 };
       static int loops[] = { 0,
        400,200,1000,510,1000,1000,120,40,100,100,1000,1000,128,150 };

       double du1[25+1],du2[25+1],du3[25+1];
       double xidt[20+1],rt[20+1],rpm[20+1];
       double cksum[20+1],prm[20+1];
       double pidt[20+1];
       double r,t,a11,a12,a13,sig,a21,a22,a23,a31,a32,a33,
              bm28,bm27,bm26,bm25,bm24,bm23,bm22,c0,flx,rx1,q,
              ar,br,cr,xi,ri,scale,
              tmops,txidt,tpidt,trt,trpm,tprm;
       double amops,axidt,apidt,art,arpm,aprm,s;
       int    mops[20+1];
       int itime1,itime2,clock();
       int e,f,k,jax,l,lw,j,i,m,kx,ky,nl1,nl2,
           i1,i2,j1,j2,ip,ix,ir,loopno,nt;
       for( k=1;k<=20;k++ ) {
         cksum[k] = 0.0;
       }
       r = 4.86;
       t = 276.0;
       a11 = 0.5;
       a12 = 0.33;
       a13 = 0.25;
       sig = 0.8;
       a21 = 0.20;
       a22 = 0.167;
       a23 = 0.141;
       a31 = 0.125;
       a32 = 0.111;
       a33 = 0.10;
       bm28 = 0.1;
       bm27 = 0.2;
       bm26 = 0.3;
       bm25 = 0.4;
       bm24 = 0.5;
       bm23 = 0.6;
       bm22 = 0.7;
       c0 = 0.8;
       flx = 4.689;
       rx1 = 64.0;
       init();
       inclock( itime1,2,0 );     
       inclock( itime1,2,0 );
       for(jax=1;jax<=nloop;jax++) {
         initp(1);
         q = 0.0;
           for(k=1;k<=400;k++ ) {
             x[k] = q+y[ k ]*(r*z[k+10]+t*z[k+11]);
           }
       }
       inclock(itime2,2,0 );
       xidt[1] = itime2-itime1;
       for(k=1;k<=400;k++) {
         cksum[1] = cksum[1] + (double)(k)*x[k];
       }

       scale = 1000.0 ;
       for(loopno=1;loopno<=14;loopno++) {
         inclock(itime1,2,0);
         for(jax=1;jax<=nloop;jax++) {
           initp(loopno);
         }
         inclock(itime2,2,0);
         pidt[loopno]=itime2-itime1;
       }
       nt=1 ;
       tmops = 0 ;
       txidt = 0 ;
       tpidt = 0 ;
       trt   = 0 ;
       trpm  = 0 ;
       tprm  = 0 ;
       for( k=1;k<=nt;k++ ) {
           rt[k]=( xidt[k]-pidt[k] ) /scale ;
           xidt[k]=xidt[k]           /scale ;
           pidt[k]=pidt[k]           /scale ;
           trt=trt+rt[k] ;
           txidt=txidt+xidt[k] ;
           tpidt=tpidt+pidt[k] ;
           mops[k]= nrops[k]*loops[k] ;
           tmops=tmops+(double)(mops[k]) ;
           rpm[k]=0.0 ;
           if(rt[k]==0) goto l1050;
           rpm[k]= (double)(mops[k])/rt[k] *(nloop/scale);
           if(mops[k]==0 ) goto l1050;
           prm[k] = rt[k]/mops[k]     *(scale/nloop);
 l1050:    trpm = trpm + rpm[k] ;
           tprm = tprm+prm[k] ;
       }
       amops=tmops/((double)(nt)) ;
       axidt=txidt/((double)(nt)) ;
       apidt=tpidt/((double)(nt)) ;
       art=trt/((double)(nt)) ;
       arpm=trpm/((double)(nt)) ;
       aprm=((double)(nt))/tprm ;
       s=tmops/trt ;
       {
           static double ans[14+1]= {
            0.0e+0,
            0.811987001308e+07,
            0.356309867563e+03,
            0.356309867563e+03,
           -0.402411986775e+05,
            0.136579048944e+06,
            0.419715951077e+06,
            0.429449863120e+07,
            0.314064399719e+06,
            0.182709001210e+07,
           -0.140415250000e+09,
            0.374895068892e+09,
            0.000000000000e+00,
            0.171449003410e+06,
            0.195817490916e+07
           };
           double temp;
       printf(" loop   checksums                diff \n");
       for(k=1;k<=nt;k++) {
         printf(" %4d %20.12e  ",k,cksum[k]);
         if( k==12 ) {
           if( cksum[k] == 0.0 ) {
             printf(" ok \n");
             continue;
           }
         }
         temp = (ans[k]-cksum[k])/cksum[k]*100.0;
         if( temp <= 1.0 ) {
             printf(" ok \n");
         }
         else {
             printf(" ng  %5.1f   \n",temp);
         }
       }
     }
}
void init()
{
       int e,f,l,j,k;
       for(k=1;k<=1000;k++) {
         u[k] = 0.00025 ;
         x[k] = 1.11 ;
         y[k] = 1.123 ;
         z[k] = 0.321 ;
       }
       for( k=1; k<=15; k++ ) {
         for( l=1; l<=100;l++ ) {
           px[k][l] = l ;
           cx[k][l] = l ;
         }
       }
       for( j=1;j<=5; j++ ) {
         for( k=1; k<=22;k++ ) {
           for( l=1; l<=2; l++ ) {
           u1[j][k][l] = k ;
           u2[j][k][l] = k + k ;
           u3[j][k][l] = k + k + k ;
           }
         }
       }
       for(j=1;j<=64;j++) {
         for(k=1;k<=8;k++) {
           b[j][k] = 1.00025 ;
           c[j][k] = 1.00025 ;
           h[j][k] = 1.00025 ;
         }
       }
       for(j=1;j<=5;j++) {
         bnk1[j] = j*100 ;
         bnk2[j] = j*110 ;
         bnk3[j] = j*120 ;
         bnk4[j] = j*130 ;
         bnk5[j] = j*140 ;
       }
       for( j=1;j<=4;j++) {
         for( k=1;k<=512;k++ ) {
           p[j][k] = 1.00025 ;
         }
       }
       for(j=1;j<=192;j++) {

         eee[j] = 1 ;
         fff[j] = 1 ;

       }
       for( j=1;j<=67;j++ ) {
         ex[j] = j ;
         rh[j] = j ;
         dex[j] = j;
       }
       for( j=1;j<=150;j++) {
         vx[j] = 0.001 ;
         xx[j] = 20.001 ;
         grd[j] = 3 + (j/8);
       }
}
void initp(loopno)
int loopno;
{
       int e,f,j,k,l;
       switch ( loopno ) {
case 1 :
case 2 :
case 3 :
case 7 :
case 9 :
case12 : ;
       return;
case 4 :
case 5 :
case 6 :
case 11 :
       for( k=1;k<=1000;k+=2) {
         x[k ] = 1.11 ;
         x[k+1] = 1.11;
       }
       x[1001]= 1.11;
       return ;
case 10 :
       for( l=1;l<=100;l++ ) {
         px[ 5][l] = l ;
         px[ 6][l] = l ;
         px[ 7][l] = l ;
         px[ 8][l] = l ;
         px[ 9][l] = l ;
         px[10][l] = l ;
         px[11][l] = l ;
         px[12][l] = l ;
         px[13][l] = l ;
       }
       return ;
case 8:
       for( j=1;j<=5;j++ ) {
         for( k=1;k<=22;k++ ) {
           u1[j][k][1] = k ;
           u2[j][k][1] = k + k ;
           u3[j][k][1] = k + k + k ;
           u1[j][k][2] = k ;
           u2[j][k][2] = k + k ;
           u3[j][k][2] = k + k + k ;
         }
       }
       return ;
case 13:
       for( k=1;k<=8;k++ ) {
         for( j=1;j<=64;j++ ) {
           h[j][k] = 1.00025;
         }
       }
       for( k=1;k<=512;k++ ) {
         p[1][k] = 1.00025 ;
         p[2][k] = 1.00025 ;
         p[3][k] = 1.00025 ;
         p[4][k] = 1.00025 ;
       }
       return;
case 14:
       for( j=1;j<=67;j++ ) {
         rh[j] = j ;
       }
       for( j=1;j<=150;j++ ) {
         vx[j] = 0.001 ;
         xx[j] = 20.001;
       }
       return;
  }
}
