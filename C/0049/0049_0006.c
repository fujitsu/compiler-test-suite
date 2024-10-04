#include <stdio.h>
int sub30(int L);
struct t {
                       long double a; 
                            double b; 
                            int    c; 
};
int    opt(int a) { return(a*a);}
int    sub(struct t a[][3][3][3][3][3][3][3][3][3],
            struct t b[][3][3][3][3][3][3][3][3][3],
            struct t c[][3][3][3][3][3][3][3][3][3]) {
 int i,j,k,l,m,n,o,p,q,r,s,t,u=0,ok=0,ng=0;

  for (i=0; i<3; i++ )      {
                                           u+=opt(i);
    for (j=0; j<3; j++) {     
                                           u+=opt(j);
      for (k=0; k<3; k++) {  
                                           u+=opt(k);
        for (l=0; l<3; l++){  
                                           u+=opt(l);
          for (m=0; m<3; m++) {  
                                           u+=opt(m);
            for (n=0; n<3; n++) {  
                                           u+=opt(n);
              for (o=0; o<3; o++) {  
                                           u+=opt(o);
                for (p=0; p<3; p++) {  
                                           u+=opt(p);
                  for (q=0; q<3; q++) {  
                                           u+=opt(q);
                    for (r=0; r<3; r++) {  
                                           u+=opt(r);
         c[i][j][k][l][m][n][o][p][q][r].a 
        =a[i][j][k][l][m][n][o][p][q][r].a /b[i][j][k][l][m][n][o][p][q][r].a ; 
         c[i][j][k][l][m][n][o][p][q][r].b 
        =a[i][j][k][l][m][n][o][p][q][r].b /b[i][j][k][l][m][n][o][p][q][r].b ; 
         c[i][j][k][l][m][n][o][p][q][r].c 
        =a[i][j][k][l][m][n][o][p][q][r].c /b[i][j][k][l][m][n][o][p][q][r].c ; 
                    }}}}}}}}}}
  return(u);

}
int    clean(struct t b[][3][3][3][3][3][3][3][3][3]
            ,long double x
            ,     double y
            ,     int    z) {
 int i,j,k,l,m,n,o,p,q,r,s,t,u=0;
  for (i=0; i<3; i++ ) {     
                                           u+=opt(i);
    for (j=0; j<3; j++)  {    
                                           u+=opt(j);
      for (k=0; k<3; k++)  { 
                                           u+=opt(k);
        for (l=0; l<3; l++)  { 
                                           u+=opt(l);
          for (m=0; m<3; m++)  { 
                                           u+=opt(m);
            for (n=0; n<3; n++)  { 
                                           u+=opt(n);
              for (o=0; o<3; o++)  { 
                                           u+=opt(o);
                for (p=0; p<3; p++)  { 
                                           u+=opt(p);
                  for (q=0; q<3; q++)  { 
                                           u+=opt(q);
                    for (r=0; r<3; r++)  {
                                           u+=opt(r);
         b[i][j][k][l][m][n][o][p][q][r].a = x;
         b[i][j][k][l][m][n][o][p][q][r].b = y;
         b[i][j][k][l][m][n][o][p][q][r].c = z;
                    }}}}}}}}}}
  return(u);
}
int    check(struct t a[][3][3][3][3][3][3][3][3][3]) {
 int i,j,k,l,m,n,o,p,q,r,s,t,u=0;
int ok=0,ng=0;
  for (i=0; i<3; i++ ) {     
                                           u+=opt(i);
    for (j=0; j<3; j++)  {    
                                           u+=opt(j);
      for (k=0; k<3; k++)  { 
                                           u+=opt(k);
        for (l=0; l<3; l++)  { 
                                           u+=opt(l);
          for (m=0; m<3; m++)  { 
                                           u+=opt(m);
            for (n=0; n<3; n++)  { 
                                           u+=opt(n);
              for (o=0; o<3; o++)  { 
                                           u+=opt(o);
                for (p=0; p<3; p++)  { 
                                           u+=opt(p);
                  for (q=0; q<3; q++)  { 
                                           u+=opt(q);
                    for (r=0; r<3; r++)  { 
                                           u+=opt(r);
        if (a[i][j][k][l][m][n][o][p][q][r].a == 2147483647.0L/2.0L 
        &&  a[i][j][k][l][m][n][o][p][q][r].b == 2147483647.0/2.0 
        &&  a[i][j][k][l][m][n][o][p][q][r].c == 2147483647/2)
         ok++; else ng++;
                    }}}}}}}}}}
  ng ?  printf("comk3130 (1) ng\n") : printf("comk3130 (1) ok\n");
  return(u);
}
int comk3130 ( ) {
struct t  b[3][3][3][3][3][3][3][3][3][3];
struct t  a[3][3][3][3][3][3][3][3][3][3];
struct t  c[3][3][3][3][3][3][3][3][3][3];
 int       d,e,f,g,h;
  d=clean(a,2147483647.0L,2147483647.0,2147483647);
  e=clean(b,2.0L,2.0,2);
  f=clean(c,0.0L,0.0,0);
  g=sub(a,b,c);
  h=check(c);
  if (d==e && e==f && f==g && g==h && h==147620)
          printf("comk3130 (2) ok\n");
   else   printf("comk3130 (2) ng\n");
}

#include <stdio.h>

int dpmk2030 ( ) {
  struct t {
            unsigned short int      a1:1;
            unsigned short int      a2:2;
            unsigned short int      a3:3;
            unsigned short int      a4:4;
            unsigned short int      a5:5;
            unsigned short int      a6:6;
            unsigned short int      a7:7;
            unsigned short int      a8:8;
           } x;
  
  x.a1=3;
           if (x.a1==1  ) printf("**dpmk2030-(1)** OK x.a1=%.16x\n",x.a1);
           else           printf("**dpmk2030-(1)** NG x.a1=%.16x\n",x.a1);
  x.a2=7;
           if (x.a2==3  ) printf("**dpmk2030-(2)** OK x.a2=%.16x\n",x.a2);
           else           printf("**dpmk2030-(2)** NG x.a2=%.16x\n",x.a2);
  x.a3=15;
           if (x.a3==7  ) printf("**dpmk2030-(3)** OK x.a3=%.16x\n",x.a3);
           else           printf("**dpmk2030-(3)** NG x.a3=%.16x\n",x.a3);
  x.a4=31;
           if (x.a4==15 ) printf("**dpmk2030-(4)** OK x.a4=%.16x\n",x.a4);
           else           printf("**dpmk2030-(4)** NG x.a4=%.16x\n",x.a4);
  x.a5=63;
           if (x.a5==31  ) printf("**dpmk2030-(5)** OK x.a5=%.16x\n",x.a5); 
           else           printf("**dpmk2030-(5)** NG x.a5=%.16x\n",x.a5); 
  x.a6=127;
           if (x.a6==63 ) printf("**dpmk2030-(6)** OK x.a6=%.16x\n",x.a6);
           else           printf("**dpmk2030-(6)** NG x.a6=%.16x\n",x.a6);
  x.a7=255;
           if (x.a7==127 ) printf("**dpmk2030-(7)** OK x.a7=%.16x\n",x.a7); 
           else           printf("**dpmk2030-(7)** NG x.a7=%.16x\n",x.a7); 
  x.a8=511;
           if (x.a8==255) printf("**dpmk2030-(8)** OK x.a8=%.16x\n",x.a8);
           else           printf("**dpmk2030-(8)** NG x.a8=%.16x\n",x.a8);
} 

#include  <stdio.h>

#define proc    {
#define endproc }
#define then    {
#define fi   }

#define _ok      "ok"
#define _ng_ref  "ref ng"
#define _ng_def  "def ng"
#define _ng_dbr  "dbr ng"
#define _ng_rbd  "rbd ng"
#define _ng_arg  "arg ng"

#define _val_ref 1
#define _val_def 2
#define _val_dbr 3
#define _val_rbd 4
#define _val_arg 5

static char *i2chk() ;
static char *i4chk() ;
static char *u2chk() ;
static char *u4chk() ;
static char *rschk() ;
static char *rdchk() ;
static char *chchk() ;

int mptest30 () proc
      printf("*** mptest30 i2 %s ***\n",i2chk()) ;
      printf("*** mptest30 i4 %s ***\n",i4chk()) ;
      printf("*** mptest30 u2 %s ***\n",u2chk()) ;
      printf("*** mptest30 u4 %s ***\n",u4chk()) ;
      printf("*** mptest30 rs %s ***\n",rschk()) ;
      printf("*** mptest30 rd %s ***\n",rdchk()) ;
      printf("*** mptest30 ch %s ***\n",chchk()) ;
      endproc

#ifdef __STDC__
static short int i2ref(short int i2dmy) ;
static short int i2def(short int i2dmy) ;
static short int i2dbr(short int i2dmy) ;
static short int i2rbd(short int i2dmy) ;
static short int i2arg(short int i2dmy) ;
#else
static short int i2ref();
static short int i2def();
static short int i2dbr();
static short int i2rbd();
static short int i2arg();
#endif

static char *i2chk() proc
      short int i2refval,i2refans;
      short int i2defval,i2defans;
      short int i2dbrval,i2dbrans;
      short int i2rbdval,i2rbdans;
      short int i2argval,i2argans;
      
      i2refval=_val_ref ;i2refans=i2ref(i2refval) ;
      if (i2refans != i2refval) return(_ng_ref) ;
      i2defval=_val_def ;i2defans=i2def(i2defval) ;
      if (i2defans != i2defval) return(_ng_def) ;
      i2dbrval=_val_dbr ;i2dbrans=i2dbr(i2dbrval) ;
      if (i2dbrans != i2dbrval) return(_ng_dbr) ;
      i2rbdval=_val_rbd ;i2rbdans=i2rbd(i2rbdval) ;
      if (i2rbdans != i2rbdval) return(_ng_rbd) ;
      i2argval=_val_arg ;i2argans=i2arg(i2argval) ;
      if (i2argans != i2argval) return(_ng_arg) ;
      return(_ok) ;
      endproc

#ifdef __STDC__
static short int i2ref(short int i2dmy)
#else
static short int i2ref(i2dmy)
short int i2dmy;
#endif
      proc
      return(i2dmy) ;
      endproc

#ifdef __STDC__
static short int i2def(short int i2dmy)
#else
static short int i2def(i2dmy)
short int i2dmy;
#endif
      proc
      short int i2wrk ;
      i2wrk=_val_def ;
      i2dmy=-i2wrk ;
      return(i2wrk) ;
      endproc

#ifdef __STDC__
static short int i2dbr(short int i2dmy)
#else
static short int i2dbr(i2dmy)
short int i2dmy;
#endif
      proc
      short int i2wrk ;
      i2wrk=_val_dbr ;
      i2dmy=i2wrk ;
      i2dmy+=1 ;
      return(i2wrk) ;
      endproc

#ifdef __STDC__
static short int i2rbd(short int i2dmy)
#else
static short int i2rbd(i2dmy)
short int i2dmy;
#endif
      proc
      short int i2wrk ;
      i2wrk=i2dmy ;
      i2dmy+=1 ;
      return(i2wrk) ;
      endproc

#ifdef __STDC__
static short int i2arg(short int i2dmy)
#else
static short int i2arg(i2dmy)
short int i2dmy;
#endif
      proc
      printf(" i2 value %d \n",i2dmy) ;
      return(i2dmy) ;
      endproc

#ifdef __STDC__
static  int i4ref(int i4dmy) ;
static  int i4def(int i4dmy) ;
static  int i4dbr(int i4dmy) ;
static  int i4rbd(int i4dmy) ;
static  int i4arg(int i4dmy) ;
#else
static i4ref() ;
static i4def() ;
static i4dbr() ;
static i4rbd() ;
static i4arg() ;
#endif

static char *i4chk() proc
      int i4refval,i4refans;
      int i4defval,i4defans;
      int i4dbrval,i4dbrans;
      int i4rbdval,i4rbdans;
      int i4argval,i4argans;
      
      i4refval=_val_ref ;i4refans=i4ref(i4refval) ;
      if (i4refans != i4refval) return(_ng_ref) ;
      i4defval=_val_def ;i4defans=i4def(i4defval) ;
      if (i4defans != i4defval) return(_ng_def) ;
      i4dbrval=_val_dbr ;i4dbrans=i4dbr(i4dbrval) ;
      if (i4dbrans != i4dbrval) return(_ng_dbr) ;
      i4rbdval=_val_rbd ;i4rbdans=i4rbd(i4rbdval) ;
      if (i4rbdans != i4rbdval) return(_ng_rbd) ;
      i4argval=_val_arg ;i4argans=i4arg(i4argval) ;
      if (i4argans != i4argval) return(_ng_arg) ;
      return(_ok) ;
      endproc

#ifdef __STDC__
static int i4ref(int i4dmy)
#else
static int i4ref(i4dmy)
int i4dmy;
#endif
      proc
      return(i4dmy) ;
      endproc

#ifdef __STDC__
static int i4def(int i4dmy)
#else
static int i4def(i4dmy)
int i4dmy;
#endif
      proc
      int i4wrk ;
      i4wrk=_val_def ;
      i4dmy=-i4wrk ;
      return(i4wrk) ;
      endproc

#ifdef __STDC__
static int i4dbr(int i4dmy)
#else
static int i4dbr(i4dmy)
int i4dmy;
#endif
      proc
      int i4wrk ;
      i4wrk=_val_dbr ;
      i4dmy=i4wrk ;
      i4dmy+=1 ;
      return(i4wrk) ;
      endproc

#ifdef __STDC__
static int i4rbd(int i4dmy)
#else
static int i4rbd(i4dmy)
int i4dmy;
#endif
      proc
      int i4wrk ;
      i4wrk=i4dmy ;
      i4dmy+=1 ;
      return(i4wrk) ;
      endproc

#ifdef __STDC__
static int i4arg(int i4dmy)
#else
static int i4arg(i4dmy)
int i4dmy;
#endif
      proc
      printf(" i4 value %d \n",i4dmy) ;
      return(i4dmy) ;
      endproc

#ifdef __STDC__
static unsigned short int u2ref(unsigned short int u2dmy) ;
static unsigned short int u2def(unsigned short int u2dmy) ;
static unsigned short int u2dbr(unsigned short int u2dmy) ;
static unsigned short int u2rbd(unsigned short int u2dmy) ;
static unsigned short int u2arg(unsigned short int u2dmy) ;
#else
static unsigned short int u2ref();
static unsigned short int u2def();
static unsigned short int u2dbr();
static unsigned short int u2rbd();
static unsigned short int u2arg();
#endif

static char *u2chk() proc
      unsigned short int u2refval,u2refans;
      unsigned short int u2defval,u2defans;
      unsigned short int u2dbrval,u2dbrans;
      unsigned short int u2rbdval,u2rbdans;
      unsigned short int u2argval,u2argans;
      
      u2refval=_val_ref ;u2refans=u2ref(u2refval) ;
      if (u2refans != u2refval) return(_ng_ref) ;
      u2defval=_val_def ;u2defans=u2def(u2defval) ;
      if (u2defans != u2defval) return(_ng_def) ;
      u2dbrval=_val_dbr ;u2dbrans=u2dbr(u2dbrval) ;
      if (u2dbrans != u2dbrval) return(_ng_dbr) ;
      u2rbdval=_val_rbd ;u2rbdans=u2rbd(u2rbdval) ;
      if (u2rbdans != u2rbdval) return(_ng_rbd) ;
      u2argval=_val_arg ;u2argans=u2arg(u2argval) ;
      if (u2argans != u2argval) return(_ng_arg) ;
      return(_ok) ;
      endproc

#ifdef __STDC__
static unsigned short int u2ref(unsigned short int u2dmy)
#else
static unsigned short int u2ref(u2dmy)
unsigned short int u2dmy;
#endif
      proc
      return(u2dmy) ;
      endproc

#ifdef __STDC__
static unsigned short int u2def(unsigned short int u2dmy)
#else
static unsigned short int u2def(u2dmy)
unsigned short int u2dmy;
#endif
      proc
      unsigned short int u2wrk ;
      u2wrk=_val_def ;
      u2dmy=-u2wrk ;
      return(u2wrk) ;
      endproc

#ifdef __STDC__
static unsigned short int u2dbr(unsigned short int u2dmy)
#else
static unsigned short int u2dbr(u2dmy)
unsigned short int u2dmy;
#endif
      proc
      unsigned short int u2wrk ;
      u2wrk=_val_dbr ;
      u2dmy=u2wrk ;
      u2dmy+=1 ;
      return(u2wrk) ;
      endproc

#ifdef __STDC__
static unsigned short int u2rbd(unsigned short int u2dmy)
#else
static unsigned short int u2rbd(u2dmy)
unsigned short int u2dmy;
#endif
      proc
      unsigned short int u2wrk ;
      u2wrk=u2dmy ;
      u2dmy+=1 ;
      return(u2wrk) ;
      endproc

#ifdef __STDC__
static unsigned short int u2arg(unsigned short int u2dmy)
#else
static unsigned short int u2arg(u2dmy)
unsigned short int u2dmy;
#endif
      proc
      printf(" u2 value %d \n",u2dmy) ;
      return(u2dmy) ;
      endproc

#ifdef __STDC__
static unsigned int u4ref(unsigned int u4dmy) ;
static unsigned int u4def(unsigned int u4dmy) ;
static unsigned int u4dbr(unsigned int u4dmy) ;
static unsigned int u4rbd(unsigned int u4dmy) ;
static unsigned int u4arg(unsigned int u4dmy) ;
#else
static unsigned int u4ref() ;
static unsigned int u4def() ;
static unsigned int u4dbr() ;
static unsigned int u4rbd() ;
static unsigned int u4arg() ;
#endif

static char *u4chk() proc
      unsigned int u4refval,u4refans;
      unsigned int u4defval,u4defans;
      unsigned int u4dbrval,u4dbrans;
      unsigned int u4rbdval,u4rbdans;
      unsigned int u4argval,u4argans;
      
      u4refval=_val_ref ;u4refans=u4ref(u4refval) ;
      if (u4refans != u4refval) return(_ng_ref) ;
      u4defval=_val_def ;u4defans=u4def(u4defval) ;
      if (u4defans != u4defval) return(_ng_def) ;
      u4dbrval=_val_dbr ;u4dbrans=u4dbr(u4dbrval) ;
      if (u4dbrans != u4dbrval) return(_ng_dbr) ;
      u4rbdval=_val_rbd ;u4rbdans=u4rbd(u4rbdval) ;
      if (u4rbdans != u4rbdval) return(_ng_rbd) ;
      u4argval=_val_arg ;u4argans=u4arg(u4argval) ;
      if (u4argans != u4argval) return(_ng_arg) ;
      return(_ok) ;
      endproc

#ifdef __STDC__
static unsigned int u4ref(unsigned int u4dmy)
#else
static unsigned int u4ref(u4dmy)
unsigned int u4dmy;
#endif
      proc
      return(u4dmy) ;
      endproc

#ifdef __STDC__
static unsigned int u4def(unsigned int u4dmy)
#else
static unsigned int u4def(u4dmy)
unsigned int u4dmy;
#endif
      proc
      unsigned int u4wrk ;
      u4wrk=_val_def ;
      u4dmy=-u4wrk ;
      return(u4wrk) ;
      endproc

#ifdef __STDC__
static unsigned int u4dbr(unsigned int u4dmy)
#else
static unsigned int u4dbr(u4dmy)
unsigned int u4dmy;
#endif
      proc
      unsigned int u4wrk ;
      u4wrk=_val_dbr ;
      u4dmy=u4wrk ;
      u4dmy+=1 ;
      return(u4wrk) ;
      endproc

#ifdef __STDC__
static unsigned int u4rbd(unsigned int u4dmy)
#else
static unsigned int u4rbd(u4dmy)
unsigned int u4dmy;
#endif
      proc
      unsigned int u4wrk ;
      u4wrk=u4dmy ;
      u4dmy+=1 ;
      return(u4wrk) ;
      endproc

#ifdef __STDC__
static unsigned int u4arg(unsigned int u4dmy)
#else
static unsigned int u4arg(u4dmy)
unsigned int u4dmy;
#endif
      proc
      printf(" u4 value %d \n",u4dmy) ;
      return(u4dmy) ;
      endproc

#ifdef __STDC__
static float rsref(float rsdmy) ;
static float rsdef(float rsdmy) ;
static float rsdbr(float rsdmy) ;
static float rsrbd(float rsdmy) ;
static float rsarg(float rsdmy) ;
#else
static float rsref();
static float rsdef();
static float rsdbr();
static float rsrbd();
static float rsarg();
#endif
      
static char *rschk() proc
      float rsrefval,rsrefans;
      float rsdefval,rsdefans;
      float rsdbrval,rsdbrans;
      float rsrbdval,rsrbdans;
      float rsargval,rsargans;
      
      rsrefval=_val_ref ;rsrefans=rsref(rsrefval) ;
      if (rsrefans != rsrefval) return(_ng_ref) ;
      rsdefval=_val_def ;rsdefans=rsdef(rsdefval) ;
      if (rsdefans != rsdefval) return(_ng_def) ;
      rsdbrval=_val_dbr ;rsdbrans=rsdbr(rsdbrval) ;
      if (rsdbrans != rsdbrval) return(_ng_dbr) ;
      rsrbdval=_val_rbd ;rsrbdans=rsrbd(rsrbdval) ;
      if (rsrbdans != rsrbdval) return(_ng_rbd) ;
      rsargval=_val_arg ;rsargans=rsarg(rsargval) ;
      if (rsargans != rsargval) return(_ng_arg) ;
      return(_ok) ;
      endproc

#ifdef __STDC__
static float rsref(float rsdmy)
#else
static float rsref(rsdmy)
float rsdmy;
#endif
      proc
      return(rsdmy) ;
      endproc

#ifdef __STDC__
static float rsdef(float rsdmy)
#else
static float rsdef(rsdmy)
float rsdmy;
#endif
      proc
      float rswrk ;
      rswrk=_val_def ;
      rsdmy=-rswrk ;
      return(rswrk) ;
      endproc

#ifdef __STDC__
static float rsdbr(float rsdmy)
#else
static float rsdbr(rsdmy)
float rsdmy;
#endif
      proc
      float rswrk ;
      rswrk=_val_dbr ;
      rsdmy=rswrk ;
      rsdmy+=1 ;
      return(rswrk) ;
      endproc

#ifdef __STDC__
static float rsrbd(float rsdmy)
#else
static float rsrbd(rsdmy)
float rsdmy;
#endif
      proc
      float rswrk ;
      rswrk=rsdmy ;
      rsdmy+=1 ;
      return(rswrk) ;
      endproc

#ifdef __STDC__
static float rsarg(float rsdmy)
#else
static float rsarg(rsdmy)
float rsdmy;
#endif
      proc
      printf(" rs value %s%f \n","",rsdmy) ;
      return(rsdmy) ;
      endproc

#ifdef __STDC__
static double rdref(double rddmy) ;
static double rddef(double rddmy) ;
static double rddbr(double rddmy) ;
static double rdrbd(double rddmy) ;
static double rdarg(double rddmy) ;
#else
static double rdref();
static double rddef();
static double rddbr();
static double rdrbd();
static double rdarg();
#endif

static char *rdchk() proc
      double rdrefval,rdrefans;
      double rddefval,rddefans;
      double rddbrval,rddbrans;
      double rdrbdval,rdrbdans;
      double rdargval,rdargans;
      
      rdrefval=_val_ref ;rdrefans=rdref(rdrefval) ;
      if (rdrefans != rdrefval) return(_ng_ref) ;
      rddefval=_val_def ;rddefans=rddef(rddefval) ;
      if (rddefans != rddefval) return(_ng_def) ;
      rddbrval=_val_dbr ;rddbrans=rddbr(rddbrval) ;
      if (rddbrans != rddbrval) return(_ng_dbr) ;
      rdrbdval=_val_rbd ;rdrbdans=rdrbd(rdrbdval) ;
      if (rdrbdans != rdrbdval) return(_ng_rbd) ;
      rdargval=_val_arg ;rdargans=rdarg(rdargval) ;
      if (rdargans != rdargval) return(_ng_arg) ;
      return(_ok) ;
      endproc

#ifdef __STDC__
static double rdref(double rddmy)
#else
static double rdref(rddmy)
double rddmy;
#endif
      proc
      return(rddmy) ;
      endproc

#ifdef __STDC__
static double rddef(double rddmy)
#else
static double rddef(rddmy)
double rddmy;
#endif
      proc
      double rdwrk ;
      rdwrk=_val_def ;
      rddmy=-rdwrk ;
      return(rdwrk) ;
      endproc

#ifdef __STDC__
static double rddbr(double rddmy)
#else
static double rddbr(rddmy)
double rddmy;
#endif
      proc
      double rdwrk ;
      rdwrk=_val_dbr ;
      rddmy=rdwrk ;
      rddmy+=1 ;
      return(rdwrk) ;
      endproc

#ifdef __STDC__
static double rdrbd(double rddmy)
#else
static double rdrbd(rddmy)
double rddmy;
#endif
      proc
      double rdwrk ;
      rdwrk=rddmy ;
      rddmy+=1 ;
      return(rdwrk) ;
      endproc

#ifdef __STDC__
static double rdarg(double rddmy)
#else
static double rdarg(rddmy)
double rddmy;
#endif
      proc
      printf(" rd value %s%f \n","",rddmy) ;
      return(rddmy) ;
      endproc

#ifdef __STDC__
static char chref(char chdmy) ;
static char chdef(char chdmy) ;
static char chdbr(char chdmy) ;
static char chrbd(char chdmy) ;
static char charg(char chdmy) ;
#else
static char chref();
static char chdef();
static char chdbr();
static char chrbd();
static char charg();
#endif

static char *chchk() proc
      char chrefval,chrefans;
      char chdefval,chdefans;
      char chdbrval,chdbrans;
      char chrbdval,chrbdans;
      char chargval,chargans;
      
      chrefval=_val_ref ;chrefans=chref(chrefval) ;
      if (chrefans != chrefval) return(_ng_ref) ;
      chdefval=_val_def ;chdefans=chdef(chdefval) ;
      if (chdefans != chdefval) return(_ng_def) ;
      chdbrval=_val_dbr ;chdbrans=chdbr(chdbrval) ;
      if (chdbrans != chdbrval) return(_ng_dbr) ;
      chrbdval=_val_rbd ;chrbdans=chrbd(chrbdval) ;
      if (chrbdans != chrbdval) return(_ng_rbd) ;
      chargval=_val_arg ;chargans=charg(chargval) ;
      if (chargans != chargval) return(_ng_arg) ;
      return(_ok) ;
      endproc

#ifdef __STDC__
static char chref(char chdmy)
#else
static char chref(chdmy)
char chdmy;
#endif
      proc
      return(chdmy) ;
      endproc

#ifdef __STDC__
static char chdef(char chdmy)
#else
static char chdef(chdmy)
char chdmy;
#endif
      proc
      char chwrk ;
      chwrk=_val_def ;
      chdmy=-chwrk ;
      return(chwrk) ;
      endproc

#ifdef __STDC__
static char chdbr(char chdmy)
#else
static char chdbr(chdmy)
char chdmy;
#endif
      proc
      char chwrk ;
      chwrk=_val_dbr ;
      chdmy=chwrk ;
      chdmy+=1 ;
      return(chwrk) ;
      endproc

#ifdef __STDC__
static char chrbd(char chdmy)
#else
static char chrbd(chdmy)
char chdmy;
#endif
      proc
      char chwrk ;
      chwrk=chdmy ;
      chdmy+=1 ;
      return(chwrk) ;
      endproc

#ifdef __STDC__
static char charg(char chdmy)
#else
static char charg(chdmy)
char chdmy;
#endif
      proc
      printf(" ch value %d \n",chdmy) ;
      return(chdmy) ;
      endproc

int url030 ()
{
  printf("***** unroll030 ***** unroll 1 never 0 not 0\n");
  sub30(9);
  printf("***** unroll030 ***** end\n");
}

int sub30(L)
     int L;
{
  int i;
  int j1 = 0, j2 = 0;
  for (i = 0; i < L; i++)
    if (i < 5)
      j1++;
    else
      j2++;
  if (j1 == 5 && j2 == 4)
    printf ("ok\n");
  else
    printf ("ng j1=%d j2=%d\n", j1, j2);
}

#include  <stdio.h>

int sub33(float pr4,  short int pi2,  char pi1)
{
    return pr4+pi2+pi1;
}

int scpa030()
{
    float           r4 = 10.0;
    short int       i2 = 20;
    char            i1 = 30;
    int             cal, ans = 60;

    printf(" ---- spca030 start ----\n");

    cal = sub33(r4, i2, i1);

    if (cal == ans)
        printf("     *** ok ***\n");
    else {
        printf("     ??? ng ???\n");
        printf("      cal = %d\n", cal);
        printf("      ans = %d\n", ans);
    }

    printf(" ---- spca030  end  ----\n");
}

int kaimk2030 ( ) {
  signed   long long int i8;
  unsigned long long int u8;

  i8= 8388607.0F;
  if (i8== 8388607ll)
                                  printf("**kaimk2030-(1) ok\n");
  else                            printf("**kaimk2030-(1) ng %x %x\n",
                                          *(int *)&i8,*(((int *)&i8)+1));
  i8= -8388608.0F;
  if (i8== -8388608ll)
                                  printf("**kaimk2030-(2) ok\n");
  else                            printf("**kaimk2030-(2) ng %x %x\n",
                                          *(int *)&i8,*(((int *)&i8)+1));
  i8= 4503599627370495.0;
  if (i8==4503599627370495LL) 
                                  printf("**kaimk2030-(3) ok\n");
  else                            printf("**kaimk2030-(3) ng %x %x\n",
                                          *(int *)&i8,*(((int *)&i8)+1));
  i8= -4503599627370496.0;
  if (i8== -4503599627370496LL) 
                                  printf("**kaimk2030-(4) ok\n");
  else                            printf("**kaimk2030-(4) ng %x %x\n",
                                          *(int *)&i8,*(((int *)&i8)+1));
  i8= 9223372036854775807.0L;
  if (i8== 9223372036854775807ll)
                                  printf("**kaimk2030-(5) ok\n");
  else                            printf("**kaimk2030-(5) ng %x %x\n",
                                          *(int *)&i8,*(((int *)&i8)+1));
  i8=-9223372036854775808.0L;
  if (i8==-9223372036854775808ll)
                                  printf("**kaimk2030-(6) ok\n");
  else                            printf("**kaimk2030-(6) ng %x %x\n",
                                          *(int *)&i8,*(((int *)&i8)+1));
}

void fatal_error (void);
int rng_30()
{
  int i;
  i = 0;
  while (i != 10)
    {
      if (i >= 10) fatal_error ();
      if (i >= 11) fatal_error ();
      if (i >= 12) fatal_error ();
      if (i >= 13) fatal_error ();
      if (i >= 14) fatal_error ();
      if (i >= 15) fatal_error ();
      if (i >= 16) fatal_error ();
      if (i >= 17) fatal_error ();
      if (i >= 18) fatal_error ();
      if (i >= 20) fatal_error ();
      if (i >= 21) fatal_error ();
      if (i >= 22) fatal_error ();
      if (i >= 23) fatal_error ();
      if (i >= 24) fatal_error ();
      if (i >= 25) fatal_error ();
      if (i >= 26) fatal_error ();
      if (i >= 27) fatal_error ();
      if (i >= 28) fatal_error ();
      if (i >= 29) fatal_error ();
      if (i >= 30) fatal_error ();
      i++;
    }
  if (i != 10)
    fatal_error ();
  else
    printf("OK\n");
}
void fatal_error ()
{
  printf("NG\n");
}
int main( ) {
  comk3130( );
  dpmk2030( );
  mptest30( );
  url030( );
  scpa030( );
  kaimk2030( );
  rng_30( );
}
