#include <stdlib.h>


#include <stdio.h>
#include <math.h>

typedef struct{
        float real;
        float imag;
}complex8;
typedef struct{
        double dreal;
        double dimag;
}complex16;

int main()
  {
    int       n=20,s=-1,j=1,jj=0,k=2;
    int       l,m;

    complex8  ca[30],cb[30],cc[30];
    complex16 cda[30][30],cdc[30],cdd[30],cde[30][30],cdf[30],
              cdg[30],cdh[30],cdi[30],cds1;

    for(l=0;l<30;l++) {
      ca[l].real=1.00;
      ca[l].imag=1.00;
      cb[l].real=0.33;
      cb[l].imag=0.99;
      cc[l].real=0.0;
      cc[l].imag=0.0;
      for(m=0;m<30;m++) {
	cda[l][m].dreal=1.00;
	cda[l][m].dimag=1.00;
	cde[l][m].dreal=1.00;
	cde[l][m].dimag=1.00;
      }	
      cdc[l].dreal=1.00;
      cdc[l].dimag=1.00;
      cdd[l].dreal=1.00;
      cdd[l].dimag=1.00;
      cdf[l].dreal=1.00;
      cdf[l].dimag=1.00;
      cdg[l].dreal=1.00;
      cdg[l].dimag=1.00;
      cdh[l].dreal=1.00;
      cdh[l].dimag=1.00;
      cdi[l].dreal=1.00;
      cdi[l].dimag=1.00;
    }
    cds1.dreal=0.77;
    cds1.dimag=0.13;
	
    for(l=1;l<n;l++) {
      cda[j][l].dreal=sin(cda[k][k].dreal);
      cda[j][l].dimag=sin(cda[k][k].dimag);
      cdc[l].dreal=sin(cda[k][k].dreal);
      cdc[l].dimag=sin(cda[k][k].dimag);
      cdi[j].dreal=pow(cda[j][j].dreal,cds1.dreal);
      cdi[j].dimag=pow(cda[j][j].dimag,cds1.dimag);
      cdd[l].dreal=cos(cda[k][k].dreal);
      cdd[l].dimag=cos(cda[k][k].dimag);
      if( cde[j][j].dreal == cda[j][l].dreal && cde[j][j].dimag == cda[j][l].dimag ) {
        cde[jj][jj].dreal=cde[l][l].dreal;
        cde[jj][jj].dimag=cde[l][l].dimag;
	jj=jj+1;
        cdh[l].dreal=pow(cdh[l-1].dreal,jj);
        cdh[l].dimag=pow(cdh[l-1].dimag,jj);
      }
      cc[l].real=pow(ca[l-1].real,ca[l+1].real)+cb[l].real;
      cc[l].imag=pow(ca[l-1].imag,ca[l+1].imag)+cb[l].imag;
      cdf[j].dreal=cdd[l].dreal;
      cdf[j].dimag=cdd[l].dimag;
      j=j+1;
      cdg[l].dreal=cde[j][j-k].dreal*cdf[j-1].dreal;
      cdg[l].dimag=cde[j][j-k].dimag*cdf[j-1].dimag;
    }
    for(l=0;l<30;l++) printf("CDC => %g ",cdc[l].dreal );
    printf("\n");
    for(l=0;l<30;l++) printf("CDC => %g ",cdc[l].dimag );
    printf("\n");
    for(l=0;l<30;l++) printf("CDI => %g ",cdi[l].dreal );
    printf("\n");
    for(l=0;l<30;l++) printf("CDI => %g ",cdi[l].dimag );
    printf("\n");
    for(l=0;l<30;l++) printf("CDG => %g ",cdg[l].dreal );
    printf("\n");
    for(l=0;l<30;l++) printf("CDG => %g ",cdg[l].dimag );
    printf("\n");
    for(l=0;l<30;l++) printf("CDH => %g ",cdh[l].dreal );
    printf("\n");
    for(l=0;l<30;l++) printf("CDH => %g ",cdh[l].dimag );
    printf("\n");
    for(l=0;l<30;l++) printf("CC  => %f ",cc[l].real );
    printf("\n");
    for(l=0;l<30;l++) printf("CC  => %f ",cc[l].imag );
    printf("\n");

    exit(0);
  }
