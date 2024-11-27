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
#ifdef NO_LONG_DOUBLE
double ldsuba (i) long double i; {
#else
long double ldsuba (i) long double i; {
#endif
                     return i*i;
                    
} 
#ifdef NO_LONG_DOUBLE
double ldsube (i) long double i; {
#else
long double ldsube (i) long double i; {
#endif
                     return i+i;
} 
#ifdef NO_LONG_DOUBLE
double ldsubc () {
#else
long double ldsubc () {
#endif
                     return 1.0E+0;
} 
int main( ) {
  float              af,bf,cf,ef,ff,fsuba( ),fsubc( ),fsube( );
  double             ad,bd,cd,ed,fd,dsuba( ),dsubc( ),dsube( );
#ifdef NO_LONG_DOUBLE
double        ald,bld,cld,eld,fld,ldsuba( ),ldsubc( ),ldsube( );
#else
long double        ald,bld,cld,eld,fld,ldsuba( ),ldsubc( ),ldsube( );
#endif
  cf = 0    ; 
                        af=fsuba(0.2e+1);ef=fsube(0.02e+2);cf=fsubc(); 
  bf = af   ;
  af = bf + cf + ef;        
                        if(af==9.0e+0) printf("**(01)** OK\n");
                        else      printf("**(01)** NG af=%e\n",af);
  af = bf - cf - ef; 
                        if(af==-1.0e+0) printf("**(02)** OK\n");
                        else      printf("**(02)** NG af=%e\n",af);
  af = bf * cf * ef;
                        if(af==16e+0) printf("**(03)** OK\n");
                        else      printf("**(03)** NG af=%e\n",af);
  af = bf / cf / ef; 
                        if(af==1e+0) printf("**(04)** OK\n");
                        else      printf("**(04)** NG af=%e\n",af);
                        ff=fsubc()+9e+0;
                        bf = 1e+1 ; 
  af = 1e+1 + ff; 
                        if(af==2.0e+1) printf("**(06)** OK\n");
                        else      printf("**(06)** NG af=%e\n",af);
  af = 1e+1 - ff; 
                        if(af==0e+0) printf("**(07)** OK\n");
                        else      printf("**(07)** NG af=%e\n",af);
  af = 1e+1 * ff;
                        if(af==1e+2) printf("**(08)** OK\n");
                        else      printf("**(08)** NG af=%e\n",af);
  af = 1e+1 / ff;
                        if(af== 1e+0) printf("**(09)** OK\n");
                        else      printf("**(09)** NG af=%e\n",af);
                        ef=fsube(5e+1);
  af = ef + 1e+2; 
                        if(af==2.00e+2) printf("**(11)** OK\n");
                        else      printf("**(11)** NG af=%e\n",af);
  af = ef - 1e+2;
                        if(af==0e+0) printf("**(12)** OK\n");
                        else      printf("**(12)** NG af=%e\n",af);
  af = ef * 1e+2; 
                        if(af==1e+4) printf("**(13)** OK\n");
                        else      printf("**(13)** NG af=%e\n",af);
  af = ef / 1e+2; 
                        if(af==1) printf("**(14)** OK\n");
                        else      printf("**(14)** NG af=%e\n",af);
   
  cd = 0    ; 
                        ad=dsuba(0.2e+1);ed=dsube(0.02e+2);cd=dsubc(); 
  bd = ad   ;
  ad = bd + cd + ed;        
                        if(ad==9.0e+0) printf("**(16)** OK\n");
                        else      printf("**(16)** NG ad=%e\n",ad);
  ad = bd - cd - ed; 
                        if(ad==-1.0e+0) printf("**(17)** OK\n");
                        else      printf("**(17)** NG ad=%e\n",ad);
  ad = bd * cd * ed;
                        if(ad==16e+0) printf("**(18)** OK\n");
                        else      printf("**(18)** NG ad=%e\n",ad);
  ad = bd / cd / ed; 
                        if(ad==1e+0) printf("**(19)** OK\n");
                        else      printf("**(19)** NG ad=%e\n",ad);
                        fd=dsubc()+9e+0;
                        bd = 1e+1 ; 
  ad = 1e+1 + fd; 
                        if(ad==2.0e+1) printf("**(21)** OK\n");
                        else      printf("**(21)** NG ad=%e\n",ad);
  ad = 1e+1 - fd; 
                        if(ad==0e+0) printf("**(22)** OK\n");
                        else      printf("**(23)** NG ad=%e\n",ad);
  ad = 1e+1 * fd;
                        if(ad==1e+2) printf("**(24)** OK\n");
                        else      printf("**(24)** NG ad=%e\n",ad);
  ad = 1e+1 / fd;
                        if(ad== 1e+0) printf("**(25)** OK\n");
                        else      printf("**(25)** NG ad=%e\n",ad);
                        ed=dsube(5e+1);
  ad = ed + 1e+2; 
                        if(ad==2.00e+2) printf("**(27)** OK\n");
                        else      printf("**(27)** NG ad=%e\n",ad);
  ad = ed - 1e+2;
                        if(ad==0e+0) printf("**(28)** OK\n");
                        else      printf("**(28)** NG ad=%e\n",ad);
  ad = ed * 1e+2; 
                        if(ad==1e+4) printf("**(29)** OK\n");
                        else      printf("**(29)** NG ad=%e\n",ad);
  ad = ed / 1e+2; 
                        if(ad==1) printf("**(30)** OK\n");
                        else      printf("**(30)** NG ad=%e\n",ad);
   
  cld = 0    ; 
#ifdef NO_LONG_DOUBLE
                        ald=ldsuba((double)0.2e+1);eld=ldsube((double)0.02e+2);cld=ldsubc(); 
#else
                        ald=ldsuba((long double)0.2e+1);eld=ldsube((long double)0.02e+2);cld=ldsubc(); 
#endif
  bld = ald   ;
  ald = bld + cld + eld;        
                        if(ald==9.0e+0) printf("**(32)** OK\n");
                        else      printf("**(32)** NG ald=%e\n",ald);
  ald = bld - cld - eld; 
                        if(ald==-1.0e+0) printf("**(33)** OK\n");
                        else      printf("**(33)** NG ald=%e\n",ald);
  ald = bld * cld * eld;
                        if(ald==16e+0) printf("**(34)** OK\n");
                        else      printf("**(34)** NG ald=%e\n",ald);
  ald = bld / cld / eld; 
                        if(ald==1e+0) printf("**(35)** OK\n");
                        else      printf("**(35)** NG ald=%e\n",ald);
                        fld=ldsubc()+9e+0;
                        bld = 1e+1 ; 
  ald = 1e+1 + fld; 
                        if(ald==2.0e+1) printf("**(37)** OK\n");
                        else      printf("**(37)** NG ald=%e\n",ald);
  ald = 1e+1 - fld; 
                        if(ald==0e+0) printf("**(38)** OK\n");
                        else      printf("**(38)** NG ald=%e\n",ald);
  ald = 1e+1 * fld;
                        if(ald==1e+2) printf("**(39)** OK\n");
                        else      printf("**(39)** NG ald=%e\n",ald);
  ald = 1e+1 / fld;
                        if(ald== 1e+0) printf("**(40)** OK\n");
                        else      printf("**(40)** NG ald=%e\n",ald);
#ifdef NO_LONG_DOUBLE
                        eld=ldsube((double)5e+1);
#else
                        eld=ldsube((long double)5e+1);
#endif
  ald = eld + 1e+2; 
                        if(ald==2.00e+2) printf("**(42)** OK\n");
                        else      printf("**(42)** NG ald=%e\n",ald);
  ald = eld - 1e+2;
                        if(ald==0e+0) printf("**(43)** OK\n");
                        else      printf("**(43)** NG ald=%e\n",ald);
  ald = eld * 1e+2; 
                        if(ald==1e+4) printf("**(44)** OK\n");
                        else      printf("**(44)** NG ald=%e\n",ald);
  ald = eld / 1e+2; 
                        if(ald==1) printf("**(45)** OK\n");
                        else      printf("**(45)** NG ald=%e\n",ald);
}  
