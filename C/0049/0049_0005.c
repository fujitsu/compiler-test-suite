#include  <stdio.h>
int out  (float *fa, float *fb, double *da, double *db, int *ia, int *ib, int n);
int testP(float *fa, float *fb, double *da, double *db, int *ia, int *ib, int n);
int initP(float *fa, float *fb, double *da, double *db, int *ia, int *ib, int n);
int subu();
int sub(int x);
int test(int a,int b,int c);

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

int scrlp19u()
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
       init();
       inclock(itime1,2,0);
       for(jax=1;jax<=nloop;jax++) {
         initp(2);
         q = 0.0;
         for( k=1;k<=996;k+=5 ) {
             q = q + z[k ]*x[k ] + z[k+1]*x[k+1]
                   + z[k+2]*x[k+2] + z[k+3]*x[k+3]
                  + z[k+4]*x[k+4];
         }
       }
       inclock(itime2,2,0);
       xidt[2] = itime2-itime1;
       cksum[2] = q;
       init();
       inclock(itime1,2,0);
       for(jax=1;jax<=nloop;jax++) {
         initp(3);
         q = 0.0;
           for( k=1;k<=1000;k++ ) {
             q=q +z[k]*x[k];
           }
       }
       inclock(itime2,2,0);
       xidt[3] = itime2-itime1;
       cksum[3] = q;
       init();
       inclock(itime1,2,0);
       for(jax=1;jax<=nloop;jax++) {
         initp(4);
         for(l=7;l<=107;l+=50 ) {
           lw=l;
           for(j= 30;j<=870;j+=5) {
             x[l-1]=x[l-1]-x[lw]*y[j];
             lw=lw+1;
           }
           x[l-1]=y[5]*x[l-1];
         }
       }
       inclock(itime2,2,0);
       xidt[4] = itime2-itime1;
       for( l=7;l<=107;l+=50 ) {
         cksum[4] = cksum[4]+(double)(l)*x[l-1];
       }
       init();
       inclock(itime1,2,0);
       for(jax=1;jax<=nloop;jax++) {
         initp(5);
         for(i=2;i<=998;i+=3) {
             x[i ] = z[i ]*(y[i ]-x[i-1]);
             x[i+1] = z[i+1]*(y[i+1]-x[i ]);
             x[i+2] = z[i+2]*(y[i+2]-x[i+1]);
         }
       }
       inclock(itime2,2,0);
       xidt[5] = itime2-itime1;
       for(i=2;i<=1000;i++) {
         cksum[5] = cksum[5] + (double)(i)*x[i];
       }
       init();
       inclock(itime1,2,0);
       for(jax=1;jax<=nloop;jax++) {
          initp(6);
          for(j = 3;j<=999;j+=3 ) {
             i = 1000-j+3;
             x[i ] = x[i ] -z[i ]*x[i+1];
             x[i -1] = x[i-1] -z[i-1]*x[i ];
             x[i -2] = x[i-2] -z[i-2]*x[i-1];
          }
       }
       inclock(itime2,2,0);
       xidt[6] = itime2-itime1;
       for( j=1;j<=999;j++) {
         l=1001-j;
         cksum[6] = cksum[6]+(double)(j)*x[l];
       }
       init();
       inclock(itime1,2,0);
       for(jax=1;jax<=nloop;jax++) {
       initp(7);
        for( m=1;m<=120;m++ ){
          x[m]=  u[m ] + r*(  z[m ] + r*y[m ] )
                +t*(  u[m+3] + r*(  u[m+2] + r*u[m+1] )
                +t*(  u[m+6] + r*(  u[m+5] + r*u[m+4] ) ) );
        }
       }
       inclock(itime2,2,0);
       xidt[7] = itime2-itime1;
       for(m=1;m<=120;m++ ) {
         cksum[7] = cksum[7] + (double)(m)*x[m];
       }
       init();
       inclock(itime1,2,0);
       for( jax=1;jax<=nloop;jax++ ) {
         initp(8);
         nl1 = 1;
         nl2 = 2;
         for( kx = 2;kx<=3; kx++ ) {
           for( ky = 2;ky<=21; ky++ ) {
          du1[ky]=u1[kx][ky+1][nl1] - u1[kx][ky-1][nl1] ;
          du2[ky]=u2[kx][ky+1][nl1] - u2[kx][ky-1][nl1] ;
          du3[ky]=u3[kx][ky+1][nl1] - u3[kx][ky-1][nl1] ;
          u1[kx][ky][nl2]=u1[kx][ky][nl1]+a11*du1[ky]
          +a12*du2[ky]+a13*du3[ky]
          +sig*(u1[kx+1][ky][nl1]
                -2.0*u1[kx][ky][nl1]+u1[kx-1][ky][nl1]);
          u2[kx][ky][nl2]=u2[kx][ky][nl1]
          +a21*du1[ky]+a22*du2[ky]+a23*du3[ky]
          +sig*(u2[kx+1][ky][nl1]
                -2.0*u2[kx][ky][nl1]+u2[kx-1][ky][nl1]);
          u3[kx][ky][nl2]=
         u3[kx][ky][nl1]+a31*du1[ky]+a32*du2[ky]+a33*du3[ky]
          +sig*(u3[kx+1][ky][nl1]
          -2.0*u3[kx][ky][nl1]+u3[kx-1][ky][nl1]);
           }
         }
       }
       inclock(itime2,2,0);
       xidt[8] = itime2-itime1;
       for(i=1;i<=2;i++) {
         for(kx=2;kx<=3;kx++) {
           for(ky=2;ky<=21;ky++ ) {
             cksum[8] = cksum[8]+(double)(kx)
             *(double)(ky)*(double)(i)
             *(u1[kx][ky][i]+
              +u2[kx][ky][i]+u3[kx][ky][i]);
           }
         }
       }
       init();
       inclock(itime1,2,0);
       for(jax=1;jax<=nloop;jax++) {
       initp(9);
       for(i=1;i<=100;i++) {
        px[1][i]= bm28*px[13][i] + bm27*px[12][i]
                    + bm26*px[11][i] +
         bm25*px[10][i] + bm24*px[9][i] + bm23*px[8][i] +
         bm22*px[7][i] + c0*(px[5][i]
            + px[6][i]) + px[3][i];
         }
       }
       inclock(itime2,2,0);
       xidt[9] = itime2-itime1;
       for( i=1;i<=100;i++) {
         cksum[9] = cksum[9]+(double )(i)*px[1][i];
       }
       init();
       inclock(itime1,2,0);
       for(jax=1;jax<=nloop;jax++) {
         initp(10);
         for( i=1;i<=100;i++ ) {
           ar     =       cx[5][i];
           br     =  ar - px[5][i];
           px[5][i]= ar ;
           cr     =  br - px[6][i];
           px[6][i]= br ;
           ar     =  cr - px[7][i];
           px[7][i]= cr ;
           br     =  ar - px[8][i];
           px[8][i]= ar ;
           cr     =  br - px[9][i];
           px[9][i]= br ;
           ar     =  cr - px[10][i];
           px[10][i]= cr ;
           br     =  ar - px[11][i];
           px[11][i]= ar ;
           cr     =  br - px[12][i];
           px[12][i]= br ;
           px[14][i]= cr - px[13][i];
           px[13][i]= cr ;
         }
       }
       inclock(itime2,2,0);
       xidt[10] = itime2-itime1;
       for(i=1;i<=100;i++) {
         for(k=5;k<=14;k++) {
  cksum[10] = cksum[10]+(double)(k)*(double)(i)*px[k][i];
         }
       }
       init();
       inclock(itime1,2,0);
       for(jax=1;jax<=nloop;jax++) {
        initp(11);
        x[1]= y[1];
         for(k=2;k<=1000;k++) {
           x[k]= x[k-1]+y[k] ;
         }
       }
       inclock(itime2,2,0);
       xidt[11] = itime2-itime1;
       for(k=1;k<=1000;k++) {
         cksum[11] = cksum[11]+(double)(k)*x[k];
       }
       init();
       inclock(itime1,2,0);
       for(jax=1;jax<=nloop;jax++) {
         initp(12);
         for( k=1;k<=999;k++) {
           x[k]= y[k+1]-y[k];
         }
       }
       inclock(itime2,2,0);
       xidt[12] = itime2-itime1;
       for(k=1;k<=999;k++) {
         cksum[12] = cksum[12]+(double)(k)*x[k];
       }
       init();
       inclock(itime1,2,0);
       for(jax=1;jax<=nloop;jax++) {
         initp(13);
         for(ip=1;ip<=128;ip++) {
           i1= p[1][ip] ;
           j1= p[2][ip] ;
           p[3][ip]= p[3][ip] +b[i1][j1] ;
           p[4][ip]= p[4][ip] +c[i1][j1] ;
           p[1][ip]= p[1][ip] +p[3][ip] ;
           p[2][ip]= p[2][ip] +p[4][ip] ;
           i2= p[1][ip] ;
           j2= p[2][ip] ;
           p[1][ip]= p[1][ip] +y[i2+32] ;
           p[2][ip]= p[2][ip] +z[j2+32] ;
           i2= i2 +eee[i2+32] ;
           j2= j2 +fff[j2+32] ;
           h[i2][j2]= h[i2][j2] +1.0 ;
         }
       }
       inclock(itime2,2,0);
       xidt[13] = itime2-itime1;
       for(ip=1;ip<=128;ip++) {
         cksum[13] = cksum[13]+(double)(ip)*
                (p[3][ip]+p[4][ip]+p[1][ip]+p[2][ip]);
       }
       for(k=1;k<=64;k++)
         for(ix=1;ix<=8;ix++)
           cksum[13] = cksum[13]+(double)(k)
                       *(double)(ix)*h[k][ix];
       init();
       inclock(itime1,2,0);
       for(jax=1;jax<=nloop;jax++) {
         initp(14);
         for(k=1;k<=150;k++) {
           ix = grd[k] ;
           xi=ix ;
           vx[k]= vx[k]+ex[ix] +(xx[k]-xi)*dex[ix] ;
           xx[k]= xx[k]+vx[k]+flx ;
           ir= xx[k] ;
           ri= ir;
           rx1= xx[k]-ri;
           ir= iand(ir,63);
           xx[k]= ri+rx1;
           rh[ir]= rh[ir] +1.0-rx1;
           rh[ir+1]= rh[ir+1]+rx1;
         }
       }
       inclock(itime2,2,0);
       xidt[14] = itime2-itime1;
       for(k=1;k<=150;k++) {
         cksum[14] = cksum[14]+(double)(k)*(vx[k]+xx[k]);
       }
       for(k=1;k<=67;k++) {
         cksum[14] = cksum[14]+(double)(k)*rh[k] ;
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
       nt=14 ;
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
       printf(" loop   checksums                error \n");
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
 

#define ZERO (double)0.0

int estreg19()
{
  int i, j;
  double a[50], b[50];
  double p=ZERO, q=ZERO, s=ZERO, f=ZERO;

  for (i=0; i<50; i++) {
    a[i] = (double)i/(double)5.0;
    b[i] = (double)i/(double)20.0;
  }

  for (i=0; i<50; i++) {
    switch (i%10) {
    case 0: case 1:
      f = f + a[i];
      break;
    case 2: case 3:
      f = f + b[i];
      break;
    case 4: case 5:
      f = f - a[i];
      break;
    case 6: case 7:
      f = f - b[i];
      break;
    default:
      f = f + (a[i] - b[i]);
      break;
    }
  }

  for (i=0; i<50; i++) {
    q = f;
    s = s + q;
    q = p;
    p = q + f;
    
  }

  printf("sum1 = %lf\n", p);
  printf("sum2 = %lf\n", s);
}

#include  <stdio.h>

static int a_init_value = 0;
int m3mptr19()
{
  int x,n,a,d;
  int y=110;
  int z=250;
  struct person {
     char *name;
     int b;
  }c;
  a=a_init_value;
  y=5;
  z=10;
  n=0;
  if(a!=10){
    x=y+z;
    c.b=d;
  }
  while(n>=5){
    if(c.b!=10){
      x=y+z;
    }
    else {
      x=y-z;
    }
    n++;
  }
  y=3;
  z=2;
  printf("x=%d\n",x);
  if(x >= 0){
    printf("********** m3mptr19 ok **********\n");
  }
  else {
    printf("?????????? m3mptr19 ng ??????????\n");
  }
}

int dpmk2129 ( ) {
      float       r4;
  double      r8;
  float       subr4( );
  double      subr8( );
 signed      char i1;
 signed short int  i2;
 signed      int  i4;
 unsigned       char u1;
 unsigned short int  u2;
 unsigned       int  u4;
          r4=subr4(2.55e+2);
          r8=subr8(6.5535e+4);
 i1 = r4;
          if (i1==-1) printf("**dpmk2129-(01)** OK\n");
          else         printf("**dpmk2129-(01)** NG i1=%d\n",i1);
 i2 = r4;
          if (i2==255) printf("**dpmk2129-(02)** OK\n");
          else         printf("**dpmk2129-(02)** NG i2=%d\n",i2);
 i4 = r4;
          if (i4==255) printf("**dpmk2129-(03)** OK\n");
          else         printf("**dpmk2129-(03)** NG i4=%d\n",i4);
 i1 = r8;
          if (i1==-1) printf("**dpmk2129-(04)** OK\n");
          else         printf("**dpmk2129-(04)** NG i1=%d\n",i1);
 i2 = r8;
          if (i2==-1) printf("**dpmk2129-(05)** OK\n");
          else         printf("**dpmk2129-(05)** NG i2=%d\n",i2);
 i4 = r8;
          if (i4==65535) printf("**dpmk2129-(06)** OK\n");
          else         printf("**dpmk2129-(06)** NG i4=%d\n",i4);
}
float subr4(p)  float p;{
  return p;
}
double subr8(p)  double p;{
  return p;
}

int mreg0319() {
int a,b,c ;

printf(" mreg0319 \n") ;

a = test(1,2,3) ;

switch(a) {
 case 1 :
 b=2;
 sub(b) ;
 break  ;

 case 2 :
 b=3 ;
 sub(b) ;
 break  ;

 case 5 :
 c=4 ;
 sub(c) ;
 break  ;
}
}
int test(a,b,c)
int a,b,c ;
{
  a = b + c ;
  return(a) ;
}
int sub(int x)
{
 if ( x == 4 ) {
     printf(" ** OK ** \n") ;
   }
 else
   {
     printf(" ** NG ** \n") ;
   }
}

int i;

int url019()
{
  int sum=0;
  printf("***** unroll019 ***** unroll 0 never 1 not 0\n");
  for(i=0;i<10;i++) {
    subu();
    sum=sum+i;
  }
  if( sum == 25 ) {
    puts("ok");
  }
  else {
    puts("ng");
  }
  printf("***** unroll019 ***** end\n");
}

int subu()
{
    i++;
}

#include  <stdio.h>

int scrgb09()
{
      unsigned long int u4;
               long int i4;
      u4=0;
      for( i4=0;i4<10;i4++ ) {
        if(u4=u4+1)break;
      }
      if( u4 != 1 ) puts(" ng ");
      for( i4=0;i4<10;i4++ ) {
        if((u4=u4+1)>0)break;
      }
      if( u4 != 2 ) puts(" ng ");
      else          puts(" OK ");
}

int ABCDEF2 () {
  float		fa[10],fb[10] ;
  double	da[10],db[10] ;
  int		ia[10],ib[10] ;

  initP(fa,fb,da,db,ia,ib,10) ;
  testP(fa,fb,da,db,ia,ib,10) ;
  out (fa,fb,da,db,ia,ib,10) ;
}
int initP(fa,fb,da,db,ia,ib,n)
     float	*fa, *fb ;
     double	*da, *db ;
     int	*ia, *ib ,n ;
{
  int i ;
  printf (" ABCDEF2 optimization test \n") ;
  for (i=0 ; i<n ; i++){
    fa[i]=da[i]=ia[i]=i*i ;
    fb[i]=db[i]=ib[i]=3 ;
  }
}
int testP(fa,fb,da,db,ia,ib,n)
     float	*fa, *fb ;
     double	*da, *db ;
     int	*ia, *ib ,n ;
{
  int i ;
  for(i=0;i<n;i++){
    fb[i]=0.0f+fa[i] ;
  }
  for(i=0;i<n;i++){
    db[i]=da[i]-0.0 ;
  }
  for(i=0;i<n;i++){
    ib[i]=ia[i]+0 ;
  }
}
int out  (fa,fb,da,db,ia,ib,n)
     float	*fa, *fb ;
     double	*da, *db ;
     int	*ia, *ib ,n ;
{
  int i ;
  printf (" ABCDEF2 optimization test END \n") ;
  for (i=0 ; i<n ; i++){
    (fa[i]==fb[i])? printf(" OK ") : printf(" NG ") ;
    printf(" fa[%d]:%f fb[%d]:%f \n",i,fa[i],i,fb[i]) ;
  }
  for (i=0 ; i<n ; i++){
    (da[i]==db[i])? printf(" OK ") : printf(" NG ") ;
    printf(" da[%d]:%f db[%d]:%f \n",i,da[i],i,db[i]) ;
  }
  for (i=0 ; i<n ; i++){
    (ia[i]==ib[i])? printf(" OK ") : printf(" NG ") ;
    printf(" ia[%d]:%d ib[%d]:%d \n",i,ia[i],i,ib[i]) ;
  }
}
int main( ) {
  scrlp19u( );
  estreg19( );
  m3mptr19( );
  mreg0319( );
  dpmk2129( );
  url019( );
  scrgb09( );
  ABCDEF2( );
}
