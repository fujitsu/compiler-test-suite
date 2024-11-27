#include <stdlib.h>


#include <stdio.h>
#include <math.h>

struct {
    union {
        float       ra[10];
        float       rb[10];
        float       s1;
    } aa;
    union {
        float       s;
        float       y;
    } bb;
    union {
        float       dif;
        float       rs;
    } cc;
    union d_tag {
        float       re[10];
        float       rg[10];
    } dd;
    union {
        float       s3;
        float       rc[10];
        float       y1;
    } ee;
    union f_tag {
        float       s4;
        float       rd[10];
    } ff;
} systab;

int main()
  {
    long double  da[10],db[10];
    int          ia[10];
    float        rg[10];
    int          i;
    float        rmx=0.0;
    
    for(i=0;i<10;i++) {
      systab.aa.ra[i]=systab.ee.rc[i]=systab.ff.rd[i]=systab.dd.re[0]=1.;
      da[i]=db[i]=1.;
      ia[i]=1;
     }
    systab.bb.s=systab.aa.s1-1;
    systab.bb.s=systab.aa.s1-1;

    rmx=0.0;
    systab.bb.s=systab.aa.s1-1;
    for(i=0;i<10;i++) {
      systab.dd.re[i]=da[i]*db[i];
      systab.bb.s+=systab.dd.re[i];
      if(systab.bb.y-5.0<=0) ia[i]=-1;
      else if(systab.bb.y-5.0==0) ia[i]=0;
      else ia[i]=1;
      systab.cc.dif=systab.dd.re[i]-rmx;
      if(systab.cc.dif>0) rmx=systab.dd.re[i];
      if(systab.cc.rs==2)  systab.dd.re[i]=.0+da[i];
    }

    for(i=0;i<10;i++) printf("RE => %f ",systab.dd.re[i]);
    printf("\n");
    for(i=0;i<10;i++) printf("IA => %d ",ia[i]);
    printf("\nS => %f, RMX => %f \n",systab.bb.s,rmx);
    exit(0);
  }


