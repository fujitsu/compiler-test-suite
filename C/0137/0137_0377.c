#include <stdlib.h>
#include <math.h>
#include <stdio.h>
float fsuba (i) float i; {
                     return i*i;
} 
float fsube (i) float i; {
                     return i+i;
} 
float fsubc () {
                     return 1.0E+0;
} 
double dsuba (i) double i; {
                     return i*i;
                     
} 
double dsube (i) double i; {
                     return i+i;
} 
double dsubc () {
                     return 1.0E+0;
} 
long double ldsuba (i) long double i; {
                     return i*i;
} 
long double ldsube (i) long double i; {
                     return i+i;
} 
long double ldsubc () {
                     return 1.0E+0;
} 
int main( ) {
  float              af,bf,cf,ef,ff,fsuba( ),fsubc( ),fsube( );
  double             ad,bd,cd,ed,fd,dsuba( ),dsubc( ),dsube( );
long double        ald,bld,cld,eld,fld,ldsuba( ),ldsubc( ),ldsube( );
  cf = 0    ; 
                        af=fsuba(0.2e+1);ef=fsube(0.02e+2);cf=fsubc(); 
  bf = af   ;
  af = bf + cf + ef;        
                        if(af==9.0e+0) printf("**dpmk2106-(01)** OK\n");
                        else      printf("**dpmk2106-(01)** NG af=%e\n",af);
  af = bf - cf - ef; 
                        if(af==-1.0e+0) printf("**dpmk2106-(02)** OK\n");
                        else      printf("**dpmk2106-(02)** NG af=%e\n",af);
  af = bf * cf * ef;
                        if(af==16e+0) printf("**dpmk2106-(03)** OK\n");
                        else      printf("**dpmk2106-(03)** NG af=%e\n",af);
  af = bf / cf / ef; 
                        if(af==1e+0) printf("**dpmk2106-(04)** OK\n");
                        else      printf("**dpmk2106-(04)** NG af=%e\n",af);
                        ff=fsubc()+9e+0;
                        bf = 1e+1 ; 
  af = 1e+1 + ff; 
                        if(af==2.0e+1) printf("**dpmk2106-(06)** OK\n");
                        else      printf("**dpmk2106-(06)** NG af=%e\n",af);
  af = 1e+1 - ff; 
                        if(af==0e+0) printf("**dpmk2106-(07)** OK\n");
                        else      printf("**dpmk2106-(07)** NG af=%e\n",af);
  af = 1e+1 * ff;
                        if(af==1e+2) printf("**dpmk2106-(08)** OK\n");
                        else      printf("**dpmk2106-(08)** NG af=%e\n",af);
  af = 1e+1 / ff;
                        if(af== 1e+0) printf("**dpmk2106-(09)** OK\n");
                        else      printf("**dpmk2106-(09)** NG af=%e\n",af);
                        ef=fsube(5e+1);
  af = ef + 1e+2; 
                        if(af==2.00e+2) printf("**dpmk2106-(11)** OK\n");
                        else      printf("**dpmk2106-(11)** NG af=%e\n",af);
  af = ef - 1e+2;
                        if(af==0e+0) printf("**dpmk2106-(12)** OK\n");
                        else      printf("**dpmk2106-(12)** NG af=%e\n",af);
  af = ef * 1e+2; 
                        if(af==1e+4) printf("**dpmk2106-(13)** OK\n");
                        else      printf("**dpmk2106-(13)** NG af=%e\n",af);
  af = ef / 1e+2; 
                        if(af==1) printf("**dpmk2106-(14)** OK\n");
                        else      printf("**dpmk2106-(14)** NG af=%e\n",af);
  cd = 0    ; 
                        ad=dsuba(0.2e+1);ed=dsube(0.02e+2);cd=dsubc(); 
  bd = ad   ;
  ad = bd + cd + ed;        
                        if(ad==9.0e+0) printf("**dpmk2106-(16)** OK\n");
                        else      printf("**dpmk2106-(16)** NG ad=%e\n",ad);
  ad = bd - cd - ed; 
                        if(ad==-1.0e+0) printf("**dpmk2106-(17)** OK\n");
                        else      printf("**dpmk2106-(17)** NG ad=%e\n",ad);
  ad = bd * cd * ed;
                        if(ad==16e+0) printf("**dpmk2106-(18)** OK\n");
                        else      printf("**dpmk2106-(18)** NG ad=%e\n",ad);
  ad = bd / cd / ed; 
                        if(ad==1e+0) printf("**dpmk2106-(19)** OK\n");
                        else      printf("**dpmk2106-(19)** NG ad=%e\n",ad);
                        fd=dsubc()+9e+0;
                        bd = 1e+1 ; 
  ad = 1e+1 + fd; 
                        if(ad==2.0e+1) printf("**dpmk2106-(21)** OK\n");
                        else      printf("**dpmk2106-(21)** NG ad=%e\n",ad);
  ad = 1e+1 - fd; 
                        if(ad==0e+0) printf("**dpmk2106-(22)** OK\n");
                        else      printf("**dpmk2106-(23)** NG ad=%e\n",ad);
  ad = 1e+1 * fd;
                        if(ad==1e+2) printf("**dpmk2106-(24)** OK\n");
                        else      printf("**dpmk2106-(24)** NG ad=%e\n",ad);
  ad = 1e+1 / fd;
                        if(ad== 1e+0) printf("**dpmk2106-(25)** OK\n");
                        else      printf("**dpmk2106-(25)** NG ad=%e\n",ad);
                        ed=dsube(5e+1);
  ad = ed + 1e+2; 
                        if(ad==2.00e+2) printf("**dpmk2106-(27)** OK\n");
                        else      printf("**dpmk2106-(27)** NG ad=%e\n",ad);
  ad = ed - 1e+2;
                        if(ad==0e+0) printf("**dpmk2106-(28)** OK\n");
                        else      printf("**dpmk2106-(28)** NG ad=%e\n",ad);
  ad = ed * 1e+2; 
                        if(ad==1e+4) printf("**dpmk2106-(29)** OK\n");
                        else      printf("**dpmk2106-(29)** NG ad=%e\n",ad);
  ad = ed / 1e+2; 
                        if(ad==1) printf("**dpmk2106-(30)** OK\n");
                        else      printf("**dpmk2106-(30)** NG ad=%e\n",ad);
  cld = 0    ; 
                        ald=ldsuba((long double)0.2e+1);eld=ldsube((long double)0.02e+2);cld=ldsubc(); 
  bld = ald   ;
  ald = bld + cld + eld;        
                        if(ald==9.0e+0) printf("**dpmk2106-(32)** OK\n");
                        else      printf("**dpmk2106-(32)** NG ald=%e\n",ald);
  ald = bld - cld - eld; 
                        if(ald==-1.0e+0) printf("**dpmk2106-(33)** OK\n");
                        else      printf("**dpmk2106-(33)** NG ald=%e\n",ald);
  ald = bld * cld * eld;
                        if(ald==16e+0) printf("**dpmk2106-(34)** OK\n");
                        else      printf("**dpmk2106-(34)** NG ald=%e\n",ald);
  ald = bld / cld / eld; 
                        if(ald==1e+0) printf("**dpmk2106-(35)** OK\n");
                        else      printf("**dpmk2106-(35)** NG ald=%e\n",ald);
                        fld=ldsubc()+9e+0;
                        bld = 1e+1 ; 
  ald = 1e+1 + fld; 
                        if(ald==2.0e+1) printf("**dpmk2106-(37)** OK\n");
                        else      printf("**dpmk2106-(37)** NG ald=%e\n",ald);
  ald = 1e+1 - fld; 
                        if(ald==0e+0) printf("**dpmk2106-(38)** OK\n");
                        else      printf("**dpmk2106-(38)** NG ald=%e\n",ald);
  ald = 1e+1 * fld;
                        if(ald==1e+2) printf("**dpmk2106-(39)** OK\n");
                        else      printf("**dpmk2106-(39)** NG ald=%e\n",ald);
  ald = 1e+1 / fld;
                        if(ald== 1e+0) printf("**dpmk2106-(40)** OK\n");
                        else      printf("**dpmk2106-(40)** NG ald=%e\n",ald);
                        eld=ldsube((long double)5e+1);
  ald = eld + 1e+2; 
                        if(ald==2.00e+2) printf("**dpmk2106-(42)** OK\n");
                        else      printf("**dpmk2106-(42)** NG ald=%e\n",ald);
  ald = eld - 1e+2;
                        if(ald==0e+0) printf("**dpmk2106-(43)** OK\n");
                        else      printf("**dpmk2106-(43)** NG ald=%e\n",ald);
  ald = eld * 1e+2; 
                        if(ald==1e+4) printf("**dpmk2106-(44)** OK\n");
                        else      printf("**dpmk2106-(44)** NG ald=%e\n",ald);
  ald = eld / 1e+2; 
                        if(ald==1) printf("**dpmk2106-(45)** OK\n");
                        else      printf("**dpmk2106-(45)** NG ald=%e\n",ald);
exit (0);
}  
