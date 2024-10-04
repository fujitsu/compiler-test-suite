#include <string.h>
#include <stdio.h>
int sub (int y);
int mpasub (void);
int mptest08 (void);
int m3ecmv01 (void);
int scpbc01 (void);
int mptest30 (void);
int scpa015 (void);
int m3ecks02 (void);
int scohd02 (void);
int m3mprd0a (void);


#define proc    {
#define endproc }
#define then    {
#define endif   }
#define _ok      "OK"
#define _ng_ref  "REF NG"
#define _ng_def  "DEF NG"
#define _ng_dbr  "DBR NG"
#define _ng_rbd  "RBD NG"
#define _ng_arg  "ARG NG"
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
int 
main (void)
{

   printf("***  **** START ***\n");

   m3mprd0a();  
   scohd02();   
   m3ecks02();  
   scpa015();   
   mptest30();  
   scpbc01();   
   m3ecmv01();  
   mptest08();  

   printf("***  ****  END  ***\n");

}



 static char *mp2okng ="OK";

int 
mptest08 (void)
 {
   char *mp2fnc1(int *),*mp2fnc2(int *),*mp2fnc3(int *);

   static int exi=0;
   char      *str;

     printf("\n***** MPTEST08 START *****\n");
     printf("    * CALL MP2FNC1 *\n");
     str = mp2fnc1(&exi);
     if(!strcmp(str,"    * OUT MP2FNC1 *")){
        if(exi==1){
           printf("     +++ OK EXI=%d +++\n",exi);
        } else {
           printf("     +++ NG EXI=%d +++\n",exi);
           strcpy(mp2okng,"NG");
        }
     } else {
        printf("     +++ NG MP2FNC1 STRING str=%s\n",str);
     }
     printf("    * CALL MP2FNC2 *\n");
     str = mp2fnc2(&exi);
     if(!strcmp(str,"    * OUT MP2FNC2 *")){
        if(exi==3){
           printf("     +++ OK EXI=%d +++\n",exi);
        } else {
           printf("     +++ NG EXI=%d +++\n",exi);
           strcpy(mp2okng,"NG");
        }
     } else {
        printf("     +++ NG MP2FNC2 STRING STR=%s\n",str);
     }
     printf("    * CALL MP2FNC3 *\n");
     str = mp2fnc3(&exi);
     if(!strcmp(str,"    * OUT MP2FNC3 *")){
        if(exi==6){
           printf("     +++ OK EXI=%d +++\n",exi);
        } else {
           printf("     +++ NG EXI=%d +++\n",exi);
           strcpy(mp2okng,"NG");
        }
     } else {
        printf("     +++ NG MP2FNC3 STRING STR=%s\n",str);
     }

     printf("   ** MPTEST08 %s %s %s ** \n",
                                    mp2okng,mp2okng,mp2okng);
     printf("***** MPTEST08 END *****\n\n");
     return 0;
 }

 char *
mp2fnc1 (int *p)
 {
     *p = *p+1;
     return("    * OUT MP2FNC1 *");
 }

 char *
mp2fnc2 (int *p)
 {
    static int i=0;

     if(++i <= 2){
        *p = *p+1;
        mp2fnc2(p);
     }
     return("    * OUT MP2FNC2 *");
 }

 char *
mp2fnc3 (int *p)
 {
    static int i=0;

     if(++i <= 3){
        *p = *p+1;
        mp2fnc3(p);
     }
     return("    * OUT MP2FNC3 *");
 }



int 
m3eccv01 (void)
{
  printf("********** M3ECCV01 TEST START **********\n");
  {
    {
      char c = '\a';

      if (c == 0x07)
          printf("***** M3ECCV01 - 01 ***** O K *****\n");
        else
          printf("***** M3ECCV01 - 01 ***** N G *****\n");
    }
    {
      char c = '\b';

      if (c == 0x08)
          printf("***** M3ECCV01 - 02 ***** O K *****\n");
        else
          printf("***** M3ECCV01 - 02 ***** N G *****\n");
    }
    {
      char c = '\f';

      if (c == 0x0c)
          printf("***** M3ECCV01 - 03 ***** O K *****\n");
        else
          printf("***** M3ECCV01 - 03 ***** N G *****\n");
    }
    {
      char c = '\n';

      if (c == 0x0a)
          printf("***** M3ECCV01 - 04 ***** O K *****\n");
        else
          printf("***** M3ECCV01 - 04 ***** N G *****\n");
    }
    {
      char c = '\r';

      if (c == 0x0d)
          printf("***** M3ECCV01 - 05 ***** O K *****\n");
        else
          printf("***** M3ECCV01 - 05 ***** N G *****\n");
    }
    {
      char c = '\t';

      if (c == 0x09)
          printf("***** M3ECCV01 - 06 ***** O K *****\n");
        else
          printf("***** M3ECCV01 - 06 ***** N G *****\n");
    }
    {
      char c = '\v';

      if (c == 0x0b)
          printf("***** M3ECCV01 - 07 ***** O K *****\n");
        else
          printf("***** M3ECCV01 - 07 ***** N G *****\n");
    }
    {
      char c = '\x6c';

      if (c == 'l')
          printf("***** M3ECCV01 - 08 ***** O K *****\n");
        else
          printf("***** M3ECCV01 - 08 ***** N G *****\n");
    }
    {
      char c = '\114';

      if (c == 'L')
          printf("***** M3ECCV01 - 09 ***** O K *****\n");
        else
          printf("***** M3ECCV01 - 09 ***** N G *****\n");
    }
    {
      char c = '\d';

      if (c == 'd')
          printf("***** M3ECCV01 - 10 ***** O K *****\n");
        else
          printf("***** M3ECCV01 - 10 ***** N G *****\n");
    }
    {
      char c = 'a';

      if (c == 0x61)
          printf("***** M3ECCV01 - 11 ***** O K *****\n");
        else
          printf("***** M3ECCV01 - 11 ***** N G *****\n");
    }
  }
  printf("********** M3ECCV01 TEST  END  **********\n");
  return 0;
}



 int 
scpbc01 (void) {
   int    a,b,z,befnc1();
   char   c[3],d[5];
   void   beok(),beng();
     a=0xa;
     z=1000;
     b=befnc1(z);
     memcpy(c,"aoh",3);
     memcpy(d,"12aoh",5);
     if(a==b)
       {
         beok(1);
       }
     else
       {
         beng(1);
       }
     if(memcmp(c,&d[2],3)==0)
       {
         beok(2);
       }
     else
       {
         beng(2);
       }
     return 0;
}
 int 
befnc1 (int a)
 {
     a=a/10;
     a=a-95;
     a=a*2;
     return (a);
 }
 void 
beok (int a)
 {
   static char c1[]={"ITEM1 OK"};
   static char c2[]={"ITEM2 OK"};
     if(a==1)
       {
           printf("%s\n",c1);
       }
     else
       {
           printf("%s\n",c2);
       }
 }
 void 
beng (int a)
 {
   static char c1[]={"ITEM1 NG"};
   static char c2[]={"ITEM2 NG"};
     if(a==1)
       {
           printf("%s\n",c1);
       }
     else
       {
           printf("%s\n",c2);
       }
 }


int 
m3ecks02 (void)
{
  int a,i;
  int fe2fnc();

  i = 0;


  printf("*** START ***\n");

  a = fe2fnc ( i );
  if ( a==0 )
    printf("TEST01 --> OK \n");
  else
    printf("TEST01 --> NG \n");

  a = sub ( i );
  if ( a==0 )
    printf("TEST02 --> OK \n");
  else
    printf("TEST02 --> NG \n");

  printf("*** END   ***\n");
  return 0;
}

int 
fe2fnc (int x)
{
  return 0;
}

int 
sub (int y)
{
  return 0;
}


int 
m3ecmv01 (void)
{
  printf("********** M3ECMV01 START **********\n");
  {
    static int a,b[5] = { 0,1,2,3,4 },*c = &b[1];

    a = c + 3 - ( c + 2 );
    if (a == 1)
        printf("***** M3ECMV01 - 01 ***** O K *****\n");
      else
        printf("***** M3ECMV01 - 01 ***** N G *****\n");
  }
  {
    static int *a,b[5] = { 0,1,2,3,4 },*c = &b[2],d = 2;

    a = c + 2 - ( d - 1 );
    if (*a == 3)
        printf("***** M3ECMV01 - 02 ***** O K *****\n");
      else
        printf("***** M3ECMV01 - 02 ***** N G *****\n");
  }
  {
    int a,b = 2,c = 3;

    a = b + 2 + ( c + 1 );
    if (a == 8)
        printf("***** M3ECMV01 - 03 ***** O K *****\n");
      else
        printf("***** M3ECMV01 - 03 ***** N G *****\n");
  }
  printf("********** M3ECMV01  END  **********\n");
  return 0;
}


int 
scohd02 (void)
{
  char   *c = "tiecan thbra fier."                              ;
  const  int    ineg = 0 , is = sizeof(*c) , il = 257           ;
  char   *cs ,*ct      ;

  printf("********** SCOHD02 STARTED *********\n")    ;

  cs = ct = c                                                   ;


  if ( memcmp(cs,ct,ineg) )
    printf("********** SCOHD02 -01 OK **********\n")        ;
  else
    printf("********** SCOHD02 -01 OK **********\n")        ;



  if ( memcmp(cs,ct,is) )
    printf("********** SCOHD02 -02 OK **********\n")        ;
  else
    printf("********** SCOHD02 -02 OK **********\n")        ;



  if ( memcmp(cs,ct,il) )
    printf("********** SCOHD02 -03 OK **********\n")        ;
  else
    printf("********** SCOHD02 -03 OK **********\n")        ;



  if ( memcmp(cs,ct,0) )
    printf("********** SCOHD02 -04 OK **********\n")        ;
  else
    printf("********** SCOHD02 -04 OK **********\n")        ;



  if ( memcmp(cs,ct,1) )
    printf("********** SCOHD02 -05 OK **********\n")        ;
  else
    printf("********** SCOHD02 -05 OK **********\n")        ;



  if ( memcmp(cs,ct,256) )
    printf("********** SCOHD02 -06 OK **********\n")        ;
  else
    printf("********** SCOHD02 -06 OK **********\n")        ;



  if ( memcmp(cs,ct,257) )
    printf("********** SCOHD02 -07 OK **********\n")        ;
  else
    printf("********** SCOHD02 -07 OK **********\n")        ;


  printf("********** SCOHD02  ENDED **********\n")      ;
  return 0;
}

int mptest30() proc
      printf("*** MPTEST30 I2 %s ***\n",i2chk()) ;
      printf("*** MPTEST30 I4 %s ***\n",i4chk()) ;
      printf("*** MPTEST30 U2 %s ***\n",u2chk()) ;
      printf("*** MPTEST30 U4 %s ***\n",u4chk()) ;
      printf("*** MPTEST30 RS %s ***\n",rschk()) ;
      printf("*** MPTEST30 RD %s ***\n",rdchk()) ;
      printf("*** MPTEST30 CH %s ***\n",chchk()) ;
      return 0;
      endproc
static short int i2ref(short int i2dmy) ;
static short int i2def(short int i2dmy) ;
static short int i2dbr(short int i2dmy) ;
static short int i2rbd(short int i2dmy) ;
static short int i2arg(short int i2dmy) ;
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
static short int i2ref(short int i2dmy)
      proc
      return(i2dmy) ;
      endproc
static short int i2def(short int i2dmy)
      proc
      short int i2wrk ;
      i2wrk=_val_def ;
      i2dmy=-i2wrk ;
      return(i2wrk) ;
      endproc
static short int i2dbr(short int i2dmy)
      proc
      short int i2wrk ;
      i2wrk=_val_dbr ;
      i2dmy=i2wrk ;
      i2dmy+=1 ;
      return(i2wrk) ;
      endproc
static short int i2rbd(short int i2dmy)
      proc
      short int i2wrk ;
      i2wrk=i2dmy ;
      i2dmy+=1 ;
      return(i2wrk) ;
      endproc
static short int i2arg(short int i2dmy)
      proc
      printf(" I2 VALUE %d \n",i2dmy) ;
      return(i2dmy) ;
      endproc
static  int i4ref(int i4dmy) ;
static  int i4def(int i4dmy) ;
static  int i4dbr(int i4dmy) ;
static  int i4rbd(int i4dmy) ;
static  int i4arg(int i4dmy) ;
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
static int i4ref(int i4dmy)
      proc
      return(i4dmy) ;
      endproc
static int i4def(int i4dmy)
      proc
      int i4wrk ;
      i4wrk=_val_def ;
      i4dmy=-i4wrk ;
      return(i4wrk) ;
      endproc
static int i4dbr(int i4dmy)
      proc
      int i4wrk ;
      i4wrk=_val_dbr ;
      i4dmy=i4wrk ;
      i4dmy+=1 ;
      return(i4wrk) ;
      endproc
static int i4rbd(int i4dmy)
      proc
      int i4wrk ;
      i4wrk=i4dmy ;
      i4dmy+=1 ;
      return(i4wrk) ;
      endproc
static int i4arg(int i4dmy)
      proc
      printf(" I4 VALUE %d \n",i4dmy) ;
      return(i4dmy) ;
      endproc
static unsigned short int u2ref(unsigned short int u2dmy) ;
static unsigned short int u2def(unsigned short int u2dmy) ;
static unsigned short int u2dbr(unsigned short int u2dmy) ;
static unsigned short int u2rbd(unsigned short int u2dmy) ;
static unsigned short int u2arg(unsigned short int u2dmy) ;
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
static unsigned short int u2ref(unsigned short int u2dmy)
      proc
      return(u2dmy) ;
      endproc
static unsigned short int u2def(unsigned short int u2dmy)
      proc
      unsigned short int u2wrk ;
      u2wrk=_val_def ;
      u2dmy=-u2wrk ;
      return(u2wrk) ;
      endproc
static unsigned short int u2dbr(unsigned short int u2dmy)
      proc
      unsigned short int u2wrk ;
      u2wrk=_val_dbr ;
      u2dmy=u2wrk ;
      u2dmy+=1 ;
      return(u2wrk) ;
      endproc
static unsigned short int u2rbd(unsigned short int u2dmy)
      proc
      unsigned short int u2wrk ;
      u2wrk=u2dmy ;
      u2dmy+=1 ;
      return(u2wrk) ;
      endproc
static unsigned short int u2arg(unsigned short int u2dmy)
      proc
      printf(" U2 VALUE %d \n",u2dmy) ;
      return(u2dmy) ;
      endproc
static unsigned int u4ref(unsigned int u4dmy) ;
static unsigned int u4def(unsigned int u4dmy) ;
static unsigned int u4dbr(unsigned int u4dmy) ;
static unsigned int u4rbd(unsigned int u4dmy) ;
static unsigned int u4arg(unsigned int u4dmy) ;
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
static unsigned int u4ref(unsigned int u4dmy)
      proc
      return(u4dmy) ;
      endproc
static unsigned int u4def(unsigned int u4dmy)
      proc
      unsigned int u4wrk ;
      u4wrk=_val_def ;
      u4dmy=-u4wrk ;
      return(u4wrk) ;
      endproc
static unsigned int u4dbr(unsigned int u4dmy)
      proc
      unsigned int u4wrk ;
      u4wrk=_val_dbr ;
      u4dmy=u4wrk ;
      u4dmy+=1 ;
      return(u4wrk) ;
      endproc
static unsigned int u4rbd(unsigned int u4dmy)
      proc
      unsigned int u4wrk ;
      u4wrk=u4dmy ;
      u4dmy+=1 ;
      return(u4wrk) ;
      endproc
static unsigned int u4arg(unsigned int u4dmy)
      proc
      printf(" U4 VALUE %d \n",u4dmy) ;
      return(u4dmy) ;
      endproc
static float rsref(float rsdmy) ;
static float rsdef(float rsdmy) ;
static float rsdbr(float rsdmy) ;
static float rsrbd(float rsdmy) ;
static float rsarg(float rsdmy) ;
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
static float rsref(float rsdmy)
      proc
      return(rsdmy) ;
      endproc
static float rsdef(float rsdmy)
      proc
      float rswrk ;
      rswrk=_val_def ;
      rsdmy=-rswrk ;
      return(rswrk) ;
      endproc
static float rsdbr(float rsdmy)
      proc
      float rswrk ;
      rswrk=_val_dbr ;
      rsdmy=rswrk ;
      rsdmy+=1 ;
      return(rswrk) ;
      endproc
static float rsrbd(float rsdmy)
      proc
      float rswrk ;
      rswrk=rsdmy ;
      rsdmy+=1 ;
      return(rswrk) ;
      endproc
static float rsarg(float rsdmy)
      proc
      printf(" RS VALUE %f \n",rsdmy) ;
      return(rsdmy) ;
      endproc
static double rdref(double rddmy) ;
static double rddef(double rddmy) ;
static double rddbr(double rddmy) ;
static double rdrbd(double rddmy) ;
static double rdarg(double rddmy) ;
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
static double rdref(double rddmy)
      proc
      return(rddmy) ;
      endproc
static double rddef(double rddmy)
      proc
      double rdwrk ;
      rdwrk=_val_def ;
      rddmy=-rdwrk ;
      return(rdwrk) ;
      endproc
static double rddbr(double rddmy)
      proc
      double rdwrk ;
      rdwrk=_val_dbr ;
      rddmy=rdwrk ;
      rddmy+=1 ;
      return(rdwrk) ;
      endproc
static double rdrbd(double rddmy)
      proc
      double rdwrk ;
      rdwrk=rddmy ;
      rddmy+=1 ;
      return(rdwrk) ;
      endproc
static double rdarg(double rddmy)
      proc
      printf(" RD VALUE %f \n",rddmy) ;
      return(rddmy) ;
      endproc
static char chref(char chdmy) ;
static char chdef(char chdmy) ;
static char chdbr(char chdmy) ;
static char chrbd(char chdmy) ;
static char charg(char chdmy) ;
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
static char chref(char chdmy)
      proc
      return(chdmy) ;
      endproc
static char chdef(char chdmy)
      proc
      char chwrk ;
      chwrk=_val_def ;
      chdmy=-chwrk ;
      return(chwrk) ;
      endproc
static char chdbr(char chdmy)
      proc
      char chwrk ;
      chwrk=_val_dbr ;
      chdmy=chwrk ;
      chdmy+=1 ;
      return(chwrk) ;
      endproc
static char chrbd(char chdmy)
      proc
      char chwrk ;
      chwrk=chdmy ;
      chdmy+=1 ;
      return(chwrk) ;
      endproc
static char charg(char chdmy)
      proc
      printf(" CH VALUE %d \n",chdmy) ;
      return(chdmy) ;
      endproc





long int      eli1;
long int      eli2;

int 
scpa015 (void)
{
    long int     li1;
    long int     li2;
    long int     be1sub();

    printf("---- SCPA015 START ---- \n");
    eli1 = 2;    eli2 = eli1*5;
    li1 = 2;     li2 = li1*5;

    if ( be1sub(li1, li2) )
        printf ("     ***  OK  *** \n");
    else {
        printf ("     ???  NG  ??? \n");
        printf ("       ANS = %d, %d\n", li1, li2);
        printf ("       CAL = %d, %d\n", eli1, eli2);
    }

    printf("---- SCPA015  END  ---- \n");
    return 0;
}
long int 
be1sub (long int pli1, long int pli2)
{
    return (pli1==eli1 && pli2==eli2);
}





int y;
int mpasub();
int m3mprd0a() {
struct mpatag {
 int mema;
 int memb;
 char memc[4];
 };
struct mpatag var1,var2,var3,*pint;
int a[10];
int x;
int *pp;
pint=&var3;
pint->mema=5;
pint->memb=15;
a[4]=5;
a[pint->mema]=3;
pint=&var2;
pint->memb=4;
x=pint->memb;
pint->memb=a[4];
x=pint->memb;
pp=&x;
pint=&var3;
y=x;
a[1]=y;
pint=&var3;
mpasub();
x=a[1];
pint->memc[1]=y+pint->memb;
if (pint->memc[1]==37) printf("M3MPSI03 OK\n");
else
printf("%d\n",pint->memc[1]);
if (*pp==5) printf("M3MPSI03 OK\n");
else
printf("%d\n",*pp);
 return 0;
}
int 
mpasub (void)
{
y=22;
return 0;
}

