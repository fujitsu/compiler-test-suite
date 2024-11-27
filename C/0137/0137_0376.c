#include <stdlib.h>
#include <math.h>
#include <stdio.h>
int main( ) {
  float           fsub( );
  extern float    fsube( );
  float           (*afp)( );
  static float    (*sfp)( );
  float    r4,*jr4,*kr4;
  float    afr4[100],*apfr4;
  struct a { 
    float  asr4[10];
   } sr4,*spr4;
  double           dsub( );
  extern double    dsube( );
  double           (*adp)( );
  static double    (*sdp)( );
  double    r8,*jr8,*kr8;
  double    afr8[100],*apfr8;
  struct b { 
    double  asr8[10];
   } sr8,*spr8;
  long double           ldsub( );
  extern long double    ldsube( );
  long double           (*aldp)( );
  static long double    (*sldp)( );
  long double    r16,*jr16,*kr16;
  long double    afr16[100],*apfr16;
  struct c { 
    long double  asr16[10];
   } sr16,*spr16;
  int i;
                     r4=1e+1;
  afp =fsub;                       
                     r4 =(*afp)(r4);
                     if (r4==1e+2) printf("** dpmk2105-(1) ** OK\n");
                     else          printf("** dpmk2105-(1) ** NG r4=%e\n",r4);
                     r4=1e+1;
  sfp =fsub;                       
                     r4 =(*sfp)(r4);
                     if (r4==1e+2) printf("** dpmk2105-(2) ** OK\n");
                     else          printf("** dpmk2105-(2) ** NG r4=%e\n",r4);
                     r4=1e+1;
  afp =fsube;                      
                     r4 =(*afp)(r4);
                     if (r4==1e+2) printf("** dpmk2105-(3) ** OK\n");
                     else          printf("** dpmk2105-(3) ** NG r4=%e\n",r4);
                     r4=1e+1;
  sfp =fsube;                      
                     r4 =(*sfp)(r4);
                     if (r4==1e+2) printf("** dpmk2105-(4) ** OK\n");
                     else          printf("** dpmk2105-(4) ** NG r4=%e\n",r4);
                     i=10;
  jr4 =&r4;            
                     if (*jr4==1e+2) printf("** dpmk2105-(5) ** OK\n");
                     else            printf("** dpmk2105-(5) ** NG jr4=%e\n",*jr4);
                     for (i=0;i<10;i++) sr4.asr4[i]=2e+2;
  spr4=&sr4;          
                     if (spr4->asr4[0]==2e+2) printf("** dpmk2105-(6) ** OK\n");
                     else                     printf("** dpmk2105-(6) ** NG spr4->asr4[0]=%e\n",spr4->asr4[0]);
                     for (i=0;i<100;i++) afr4[i]=2e+3;
  apfr4=afr4;     
                     if (*(apfr4+99)==2e+3) printf("** dpmk2105-(7) ** OK\n");
                     else                   printf("** dpmk2105-(7) ** NG *(apfr4+99)=%e\n",*(apfr4+99));
                     for (i=0;i<10;i++) spr4->asr4[i]=3e+3;
  apfr4 =spr4->asr4;
                     if (*apfr4==3e+3) printf("** dpmk2105-(8) ** OK\n");
                     else              printf("** dpmk2105-(8) ** NG *apfr4=%e\n",*apfr4);
                     spr4->asr4[9]=4e+4;i=9;
  apfr4 =&(spr4->asr4[i]);
                     if (*apfr4==4e+4) printf("** dpmk2105-(9) ** OK\n");
                     else              printf("** dpmk2105-(9) ** NG *apfr4=%e\n",*apfr4);

                     r8=1e+1;
  adp =dsub;                       
                     r8 =(*adp)(r8);
                     if (r8==1e+2) printf("** dpmk2105-(10) ** OK\n");
                     else         printf("** dpmk2105-(10) ** NG r8=%e\n",r8);
                     r8=1e+1;
  sdp =dsub;                       
                     r8 =(*sdp)(r8);
                     if (r8==1e+2) printf("** dpmk2105-(11) ** OK\n");
                     else         printf("** dpmk2105-(11) ** NG r8=%e\n",r8);
                     r8=1e+1;
  adp =dsube;                      
                     r8 =(*adp)(r8);
                     if (r8==1e+2) printf("** dpmk2105-(12) ** OK\n");
                     else         printf("** dpmk2105-(12) ** NG r8=%e\n",r8);
                     r8=1e+1;
  sdp =dsube;                      
                     r8 =(*sdp)(r8);
                     if (r8==1e+2) printf("** dpmk2105-(13) ** OK\n");
                     else         printf("** dpmk2105-(13) ** NG r8=%e\n",r8);
                     i=10;
  jr8 =&r8;            
                     if (*jr8==1e+2) printf("** dpmk2105-(14) ** OK\n");
                     else            printf("** dpmk2105-(14) ** NG jr8=%e\n",*jr8);
                     for (i=0;i<10;i++) sr8.asr8[i]=2e+2;
  spr8=&sr8;          
                     if (spr8->asr8[0]==2e+2) printf("** dpmk2105-(15) ** OK\n");
                     else                     printf("** dpmk2105-(15) ** NG spr8->asr8[0]=%e\n",spr8->asr8[0]);
                     for (i=0;i<100;i++) afr8[i]=2e+3;
  apfr8=afr8;     
                     if (*(apfr8+99)==2e+3) printf("** dpmk2105-(16) ** OK\n");
                     else                   printf("** dpmk2105-(16) ** NG *(apfr8+99)=%e\n",*(apfr8+99));
                     for (i=0;i<10;i++) spr8->asr8[i]=3e+3;
  apfr8 =spr8->asr8;
                     if (*apfr8==3e+3) printf("** dpmk2105-(17) ** OK\n");
                     else              printf("** dpmk2105-(17) ** NG *apfr8=%e\n",*apfr8);
                     spr8->asr8[9]=4e+4;i=9;
  apfr8 =&(spr8->asr8[i]);
                     if (*apfr8==4e+4) printf("** dpmk2105-(18) ** OK\n");
                     else              printf("** dpmk2105-(18) ** NG *apfr8=%e\n",*apfr8);
 
                     r16=20.0;
  aldp =ldsub;                       
                     r16 =(*aldp)(r16);
                     if (r16==400.0) printf("** dpmk2105-(19) ** OK\n");
                     else         printf("** dpmk2105-(19) ** NG r16=%e\n",r16);
                     r16=20.0;
  sldp =ldsub;                      
                     r16 =(*sldp)(r16);
                     if (r16==400.0) printf("** dpmk2105-(20) ** OK\n");
                     else         printf("** dpmk2105-(20) ** NG r16=%e\n",r16);
                     r16=20.0;
  aldp =ldsube;                    
                     r16 =(*aldp)(r16);
                     if (r16==400.0) printf("** dpmk2105-(21) ** OK\n");
                     else         printf("** dpmk2105-(21) ** NG r16=%e\n",r16);
                     r16=20.0;
  sldp =ldsube;                   
                     r16 =(*sldp)(r16);
                     if (r16==400.0) printf("** dpmk2105-(22) ** OK\n");
                     else         printf("** dpmk2105-(22) ** NG r16=%e\n",r16);
                     i=10;
  jr16 =&r16;            
                     if (*jr16==400.0) printf("** dpmk2105-(23) ** OK\n");
                     else            printf("** dpmk2105-(23) ** NG jr16=%e\n",*jr16);
                     for (i=0;i<10;i++) sr16.asr16[i]=2e+2;
  spr16=&sr16;          
                     if (spr16->asr16[0]==2e+2) printf("** dpmk2105-(24) ** OK\n");
                     else                     printf("** dpmk2105-(24) ** NG spr16->asr16[0]=%e\n",spr16->asr16[0]);
                     for (i=0;i<100;i++) afr16[i]=2e+3;
  apfr16=afr16;      
                     if (*(apfr16+99)==2e+3) printf("** dpmk2105-(25) ** OK\n");
                     else                   printf("** dpmk2105-(25) ** NG *(apfr16+99)=%e\n",*(apfr16+99));
                     for (i=0;i<10;i++) spr16->asr16[i]=3e+3;
  apfr16 =spr16->asr16;
                     if (*apfr16==3e+3) printf("** dpmk2105-(26) ** OK\n");
                     else              printf("** dpmk2105-(26) ** NG *apfr16=%e\n",*apfr16);
                     spr16->asr16[9]=4e+4;i=9;
  apfr16 =&(spr16->asr16[i]);
                     if (*apfr16==4e+4) printf("** dpmk2105-(27) ** OK\n");
                     else              printf("** dpmk2105-(27) ** NG *apfr16=%e\n",*apfr16);
exit (0);
}
long double ldsub(i) long double i;{
                 return i*i;
                  
}  
double dsub(i) double i;{
                  return i*i;
}  
float fsub(i) float i;{
                  return i*i;
}  

float fsube(i) float i;{
                  return i*i;
}  
double dsube(i) double i;{
                  return i*i;
}  
long double ldsube(i) long double i;{
                  return i*i;
                 
}  
