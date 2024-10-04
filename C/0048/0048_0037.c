
#include <stdio.h>
#include <string.h>
int func01 (int q);
int func001 (int x, int y);
int m3etre11 (void);
int mptest10 (void);
int scpsi05 (void);
int scpsi04 (void);
int m3etre10 (void);
int m3etre09 (void);
int mptest09 (void);
int mptest08 (void);
int m3etre08 (void);
int m3etre07 (void);
int scpsi03 (void);
int chk (void);
int 
main (void)
{
    printf("***  *** TEST FOR COMMON *** STARTED ***\n");
    scpsi03();
    m3etre07();
    m3etre08();
    mptest08();
    mptest09();
    m3etre09();
    m3etre10();
    scpsi04();
    scpsi05();
    mptest10();
    m3etre11();
    printf("\n***  *** TEST FOR COMMON *** ENDED ***\n");
}

  float                           a;
  static char                    sa;
  static unsigned short int      sb;
  static float                   sc;
  static double                  sd;
  static long long int           se;
  static long double             sf;
  static char            *s = "abc";
  static struct name
    {char * first;
      char * second;
    } str1={
       "first",
       "seconds",
       };
  static union ux
    { int el1;
      char el2;
    } str2;
int 
scpsi03 (void)
{

  printf("********** SCPSI03 TEST START **********\n");

        a=4;
       sa=2;
       sb=5;
      sc=-3;
       sd=6;
       se=8;
       str2.el1=9;

  if (a == 4 && str2.el1 == 9)
      printf("***** SCPSI03 - 01 ***** O   K *****\n");
  else
      printf("***** SCPSI03 - 01 ***** N   G *****\n");
  if (sa == 2 && sb == 5 && sc == -3 && sd == 6 && se == 8)
      printf("***** SCPSI03 - 02 ***** O   K *****\n");
  else
      printf("***** SCPSI03 - 02 ***** N   G *****\n");
  if (strcmp(str1.first,"first") == 0)
      printf("***** SCPSI03 - 03 ***** O   K *****\n");
  else
      printf("***** SCPSI03 - 03 ***** N   G *****\n");
  if(strlen(s) == 3)
      printf("***** SCPSI03 - 04 ***** O   K *****\n");
  else
      printf("***** SCPSI03 - 04 ***** N   G *****\n");

  printf("********** SCPSI03 TEST  END  **********\n");
}
int 
m3etre07 (void)
  {
int yes=1;
int no=0;
printf("\n* M3ETRE07 *** MK3 TEST FOR X_TREEMK *** STARTED *\n");
{
  int i;
  struct tag {
               int a;
               char b;
             }st,*p;
  p=&st;
  p->a=1;
  i=p->a;
  if(i)
    printf("*** M3ETRE07-01 *** O K ***\n");
  else
    printf("*** M3ETRE07-01 ***   N   G   ***\n");
}
{
  int ar[2];
  int i=0;
  ar[i]=1;
  if(ar[i])
    printf("*** M3ETRE07-02 *** O K ***\n");
  else
    printf("*** M3ETRE07-02 ***   N   G   ***\n");
}
{
  int i=1;
  struct tag {
               int a;
               char b;
             }c;
  c.a=i;
  if(c.a)
    printf("*** M3ETRE07-03 *** O K ***\n");
  else
    printf("*** M3ETRE07-03 ***   N   G   ***\n");
}
{
  int i=0,iii=1;
  i+=iii;
  if(i)
    printf("*** M3ETRE07-04 *** O K ***\n");
  else
    printf("*** M3ETRE07-04 ***   N   G   ***\n");
}
{
  int i=2,a=1;
  i-=a;
  if(i)
    printf("*** M3ETRE07-05 *** O K ***\n");
  else
    printf("*** M3ETRE07-05 ***   N   G   ***\n");
}
printf("*** M3ETRE07 *** MK3 TEST FOR X_TREEMK *** ENDED ***\n");
  }
int 
m3etre08 (void)
  {
printf("\n* M3ETRE08 *** MK3 TEST FOR X_TREEMK *** STARTED *\n");
{
  int a=0,b=1;
  a*=b;
  if(a==0)
    printf("*** M3ETRE08-01 *** O K ***\n");
  else
    printf("*** M3ETRE08-01 ***   N   G   ***\n");
}
{
  int a=4,b=4;
  a/=b;
  if(a==1)
    printf("*** M3ETRE08-02 *** O K ***\n");
  else
    printf("*** M3ETRE08-02 ***   N   G   ***\n");
}
{
  int a=3,b=2;
  a%=b;
  if(a==1)
    printf("*** M3ETRE08-03 *** O K ***\n");
  else
    printf("*** M3ETRE08-03 ***   N   G   ***\n");
}
{
  int a=2,b=1;
  a>>=b;
  if(a==1)
    printf("*** M3ETRE08-04 *** O K ***\n");
  else
    printf("*** M3ETRE08-04 ***   N   G   ***\n");
}
{
  int a=1,b=1;
  a<<=b;
  if(a==2)
    printf("*** M3ETRE08-05 *** O K ***\n");
  else
    printf("*** M3ETRE08-05 ***   N   G   ***\n");
}
{
  int a=3,b=1;
  a&=b;
  if(a==1)
    printf("*** M3ETRE08-06 *** O K ***\n");
  else
    printf("*** M3ETRE08-06 ***   N   G   ***\n");
}
{
  int a=2,b=1;
  a^=b;
  if(a==3)
    printf("*** M3ETRE08-07 *** O K ***\n");
  else
    printf("*** M3ETRE08-07 ***   N   G   ***\n");
}
{
  int a=2,b=1;
  a|=b;
  if(a==3)
    printf("*** M3ETRE08-08 *** O K ***\n");
  else
    printf("*** M3ETRE08-08 ***   N   G   ***\n");
}
{
  int a=2,b=1;
  a=b;
  if(a==1)
    printf("*** M3ETRE08-09 *** O K ***\n");
  else
    printf("*** M3ETRE08-09 ***   N   G   ***\n");
}
printf("*** M3ETRE08 *** MK3 TEST FOR X_TREEMK *** ENDED ***\n");
  }

 static char *okng ="OK";

int 
mptest08 (void)
 {
   char *func1(int *),*func2(int *),*func3(int *);

   static int exi=0;
   char      *str;

     printf("\n***** MPTEST08 START *****\n");
     printf("    * CALL func1 *\n");
     str = func1(&exi);
     if(!strcmp(str,"    * OUT func1 *")){
        if(exi==1){
           printf("     +++ OK exi=%d +++\n",exi);
        } else {
           printf("     +++ NG exi=%d +++\n",exi);
           strcpy(okng,"NG");
        }
     } else {
        printf("     +++ NG func1 STRING str=%s\n",str);
     }
     printf("    * CALL func2 *\n");
     str = func2(&exi);
     if(!strcmp(str,"    * OUT func2 *")){
        if(exi==3){
           printf("     +++ OK exi=%d +++\n",exi);
        } else {
           printf("     +++ NG exi=%d +++\n",exi);
           strcpy(okng,"NG");
        }
     } else {
        printf("     +++ NG func2 STRING str=%s\n",str);
     }
     printf("    * CALL func3 *\n");
     str = func3(&exi);
     if(!strcmp(str,"    * OUT func3 *")){
        if(exi==6){
           printf("     +++ OK exi=%d +++\n",exi);
        } else {
           printf("     +++ NG exi=%d +++\n",exi);
           strcpy(okng,"NG");
        }
     } else {
        printf("     +++ NG func3 STRING str=%s\n",str);
     }

     printf("   ** MPTEST08 %s %s %s ** \n",okng,okng,okng);
     printf("***** MPTEST08 END *****\n\n");
 }

 char *
func1 (int *p)
 {
     *p = *p+1;
     return("    * OUT func1 *");
 }

 char *
func2 (int *p)
 {
    static int i=0;

     if(++i <= 2){
        *p = *p+1;
        func2(p);
     }
     return("    * OUT func2 *");
 }

 char *
func3 (int *p)
 {
    static int i=0;

     if(++i <= 3){
        *p = *p+1;
        func3(p);
     }
     return("    * OUT func3 *");
 }

 struct ss {
    int   ss_i1;
    int   ss_i2;
    char  ss_c;
    struct ss *next;
 };
 int schk(struct ss *);
 int defi1(struct ss *);
 int sortss(struct ss *);
 int defn(struct ss *);
 int defc(struct ss *);
 int defi2(struct ss *,int);

int 
mptest09 (void)
 {
     int m_i;
     static struct ss ss_m[26],*m_ssp;
     static char *msgok = "OK",
                 *msgng = "NG";
            char *msg;

     printf("\n***** MPTEST09 START *****\n");
     for(m_i=0 ; m_i<26 ; m_i++){
       defi1(&ss_m[m_i]);
     }

     for(m_i=0 ; defi2(ss_m,m_i++) ; ) ;
     while(defc(ss_m)) ;
     while(defn(ss_m)) ;

     for(m_i=0;m_i<26;m_i++){
        m_ssp=&ss_m[m_i];
     }

     msg = sortss(ss_m) ? msgok : msgng ;
     printf("   ** SORTSS RETURN %s **\n",msg);
     goto label3;
 label4:
     msg = schk(ss_m) ? msgok : msgng ;
     printf("   ** SCHK   RETURN %s **\n",msg);
     goto label5;
 label1:
     printf("***** MPTEST09 NG NG NG *****\n\n");
     goto label0;
 label2:
     printf("***** MPTEST09 OK OK OK *****\n");
     goto label0;
 label3:
     switch(strcmp(msg,"OK")){
       case 0 :
         goto label4;
       default:
         goto label1;
     }
 label5:
     switch(strcmp(msg,"OK")){
       case 0 :
         goto label2;
       default:
         goto label1;
     }
 label0:
     printf("***** MPTEST09 END END *****\n");
 }

 int 
defi1 (struct ss *ssp)
 {
     static int d1_i=1;

     ssp->ss_i1 = d1_i++ ;
     return(0);
 }

 int 
defi2 (struct ss *ssp, int ei)
 {
      struct ss *d_sp;
      static int  i=0,
                  num[ ] ={20,13, 1, 7,23, 6, 2, 5,22, 3,
                              4 ,15, 8,21,24,14,17, 9,
                              26,11,19,16,18,25,10,12};

      d_sp=ssp+ei;
      d_sp->ss_i2=num[i++];
      return(i<26);
 }

 int 
defc (struct ss *ssp)
 {
     int i=0;
     char c='a';

     for( ;i<26 ;i++){
       ssp->ss_c = c;
       c++;
       switch(c){
         case 0x8a :
           c=0x91;
           break;
         case 0x9a :
           c=0xa2;
       }
       ssp++;
     }
     return(0);
 }

 int 
defn (struct ss *ssp)
 {
    int i;
    struct ss *np;

    for( np=ssp,i=0 ; i<26 ; np=np->next,i++){
       np->next=np+1;
    }
    (np-1)->next = NULL;
    return(0);
 }

 int 
sortss (struct ss *ssp)
 {
    struct ss ws,*wssp;
    int i,j,n;
    if(ssp == NULL) return(0);
    wssp=ssp;
    for(n=25,i=0;i<25;i++,n--){
      for(j=0;j<n;j++){
        if(ssp->ss_i2 > (ssp+1)->ss_i2){
          memcpy(&ws,(ssp+1),sizeof(struct ss));
          memcpy((ssp+1),ssp,sizeof(struct ss));
          memcpy(ssp,&ws,sizeof(struct ss));
        }
        ssp++;
      }
      ssp=wssp;
    }
    defn(wssp);
    return(1); 
 }

 int 
schk (struct ss *ssp)
 {
   struct ss *wssp;
   int i;

    if(ssp == NULL) return(0);
    for(i=0,wssp=ssp;ssp->next != NULL ; ssp=ssp->next,i++){
       if(ssp->ss_i2 < (ssp+1)->ss_i2)
          continue;
       else
          return(0); 
    }
    return(1); 
 }
int 
m3etre09 (void)
  {
printf("\n* M3ETRE09 *** MK3 TEST FOR X_TREEMK *** STARTED *\n");
{
  int *p;
  int a=1;
  int b;
  p=&a;
  b=*p;
  if(b==1)
    printf("*** M3ETRE09-01 *** O K ***\n");
  else
    printf("*** M3ETRE09-01 ***   N   G   ***\n");
}
{
  int *p;
  int a=1;
  int b;
  p=&a;
  b=*p;
  if(b==1)
    printf("*** M3ETRE09-02 *** O K ***\n");
  else
    printf("*** M3ETRE09-02 ***   N   G   ***\n");
}
{
  int a=1;
  int b=0;
  b= -a;
  if(b==(-1))
    printf("*** M3ETRE09-03 *** O K ***\n");
  else
    printf("*** M3ETRE09-03 ***   N   G   ***\n");
}
{
  int a=0;
  int b=0;
  b=!a;
  if(b==1)
    printf("*** M3ETRE09-04 *** O K ***\n");
  else
    printf("*** M3ETRE09-04 ***   N   G   ***\n");
}
{
  int a=1;
  int b=0;
  b=~a;
  if(b==(-2))
    printf("*** M3ETRE09-05 *** O K ***\n");
  else
    printf("*** M3ETRE09-05 ***   N   G   ***\n");
}
{
  char a=1;
  int b=0;
  b=(int)a;
  if(b==1)
    printf("*** M3ETRE09-06 *** O K ***\n");
  else
    printf("*** M3ETRE09-06 ***   N   G   ***\n");
}
{
  int a=2;
  int c=1;
  a=a<3?c:0;
  if(a==1)
    printf("*** M3ETRE09-07 *** O K ***\n");
  else
    printf("*** M3ETRE09-07 ***   N   G   ***\n");
}
{
  int a=2;
  int c=1;
  a=a>3?0:c;
  if(a==1)
    printf("*** M3ETRE09-08 *** O K ***\n");
  else
    printf("*** M3ETRE09-08 ***   N   G   ***\n");
}
{
  int a=2;
  int c=1;
  a=(c);
  if(a==1)
    printf("*** M3ETRE09-09 *** O K ***\n");
  else
    printf("*** M3ETRE09-09 ***   N   G   ***\n");
}
{
  int a=-2;
  int c=1;
  c=+a;
  if(a==-2)
    printf("*** M3ETRE09-10 *** O K ***\n");
  else
    printf("*** M3ETRE09-10 ***   N   G   ***\n");
}
printf("*** M3ETRE09 *** MK3 TEST FOR X_TREEMK *** ENDED ***\n");
  }
int 
m3etre10 (void)
  {
printf("\n* M3ETRE10 *** MK3 TEST FOR X_TREEMK *** STARTED *\n");
{
  int a=0;
  ++a;
  if(a==1)
    printf("*** M3ETRE10-01 *** O K ***\n");
  else
    printf("*** M3ETRE10-01 ***   N   G   ***\n");
}
{
  int a=2;
  --a;
  if(a==1)
    printf("*** M3ETRE10-02 *** O K ***\n");
  else
    printf("*** M3ETRE10-02 ***   N   G   ***\n");
}
{
  int a=2;
  a=0,a=1;
  if(a==1)
    printf("*** M3ETRE10-03 *** O K ***\n");
  else
    printf("*** M3ETRE10-03 ***   N   G   ***\n");
}
{
  int a=2;
  int b=0;
  b=1<a;
  if(b==1)
    printf("*** M3ETRE10-04 *** O K ***\n");
  else
    printf("*** M3ETRE10-04 ***   N   G   ***\n");
}
{
  int a=2;
  int b=0;
  b=a<3;
  if(b==1)
    printf("*** M3ETRE10-05 *** O K ***\n");
  else
    printf("*** M3ETRE10-05 ***   N   G   ***\n");
}
{
  int a=2;
  int b=0;
  b=a<3;
  if(b==1)
    printf("*** M3ETRE10-06 *** O K ***\n");
  else
    printf("*** M3ETRE10-06 ***   N   G   ***\n");
}
{
  int a=2;
  int b=0;
  b=a++<3;
  if(b==1)
    printf("*** M3ETRE10-07 *** O K ***\n");
  else
    printf("*** M3ETRE10-07 ***   N   G   ***\n");
}
{
  int a=2;
  int b=1;
  b=a--<2;
  if(b==0)
    printf("*** M3ETRE10-08 *** O K ***\n");
  else
    printf("*** M3ETRE10-08 ***   N   G   ***\n");
}
{
  int f();
  int a=0;
  int b=100;
  int c=50;
  a=f(b)<c;
  if(a==1)
    printf("*** M3ETRE10-09 *** O K ***\n");
  else
    printf("*** M3ETRE10-09 ***   N   G   ***\n");
}
{
  int a=0;
  int b=100;
  a=1<=b;
  if(a==1)
    printf("*** M3ETRE10-10 *** O K ***\n");
  else
    printf("*** M3ETRE10-10 ***   N   G   ***\n");
}
printf("*** M3ETRE10 *** MK3 TEST FOR X_TREEMK *** ENDED ***\n");
  }
int 
f (int a)
  {
    a=10;
    return(a);
  }
int 
scpsi04 (void)
{
          int   property,debt,total;

  printf("\n********** SCPSI04 TEST START **********\n");
          property=25000;
         debt=-3000;
         total=func001(property,debt);

  if ( total == 22000)
      printf("***** SCPSI04 - 01 ***** O   K *****\n");
  else
      printf("***** SCPSI04 - 01 ***** N   G *****\n");

  printf("********** SCPSI04 TEST  END  **********\n");
}
  int 
func001 (int x, int y)
{
     int   z;
     z=x+y;
 return(z);
}
int 
scpsi05 (void)
{
           int   a,b,c,x,y;

  printf("\n********** SCPSI05 TEST START **********\n");
                a=1;
                b=2;

  x=func01(a);
  y=func01(b);
          c=x+y;
  if ( c == 12)
      printf("***** SCPSI05 - 01 ***** O   K *****\n");
  else
      printf("***** SCPSI05 - 01 ***** N   G *****\n");

  printf("********** SCPSI05 TEST  END  **********\n");

}
  int 
func01 (int q)
{
          int   x;
          x=q*4;
  return (x);

}
  int 
func02 (int r)
{
          int   y;
          y=r*4;
  return (y);

}



#define TESTOK " *** CHECK OK ***\n"
#define TESTNG " *** CHECK NG ***\n"

  static int rdata[ ] ={2,3,5,7,11,13,17,19,23,29,31,37,41,43,
                           47,53,59,61,67,71,73,79,83,89,97};

  struct ssq {
       int  ssd;
       char atr[4];
       struct ssq *nxt;
  } ssq0[100];

 int chk1(struct ssq *,int *,int);
 int chk2(struct ssq *,int *,int);
 int chain(struct ssq *);
 int ckchain(struct ssq *);

int 
mptest10 (void)
 {
    int data ;
    int i,mm,rtncd;
    char  str[3];

    printf("\n***** MPTEST10 START *****\n");
    for( i=0 ; i<100 ; i++){
       ssq0[i].ssd=i+1;
       ssq0[i].atr[0]='o';
       ssq0[i].atr[1]='n';
       ssq0[i].atr[2]='\0';
    }
    ssq0[0].atr[1]='f';
    ssq0[0].atr[2]='f';
    ssq0[0].atr[3]='\0';

    for(data=1 ; data <= 100 ; data++ ){
       for( i=2 ; i<=data ; i++){
          mm = data%i;
          if(mm==0){
             if(i!=data){
                ssq0[data-1].atr[1]='f';
                ssq0[data-1].atr[2]='f';
                ssq0[data-1].atr[3]='\0';
                break;
             }
          }
       }
    }

    for(i=0;i<100;i++){
       printf("(%2d) d=%3d, atr=%3s",i,ssq0[i].ssd,ssq0[i].atr);
       (i+1)%3==0 ? printf("\n") : printf("  ");
    }
    printf("\n");

    switch(rtncd=chain(ssq0)){
      case 0:
        printf("  **  CHAIN OK **\n");
        break;
      case 1:
        printf("  **  CHAIN NG  CODE = %d **\n",rtncd);
        goto label1 ;
      case 2:
        printf("  **  CHAIN NG  CODE = %d **\n",rtncd);
        goto label1 ;
    }

    rtncd = chk();
 label1:
    if(rtncd==0){
       printf(TESTOK);
       strcpy(str,"OK");
    }else{
       printf(TESTNG);
       strcpy(str,"NG");
    }
    printf("***** MPTEST10 %s END *****\n",str);
 }

 int 
chk (void)
 {
    struct ssq *sp;
    int i,jg;

    sp=ssq0;
    for(i=0;i<100;i++){
       if(!strcmp(sp->atr,"on"))
          jg=chk1(sp,rdata,sizeof(rdata)/sizeof(rdata[0]));
       else
          jg=chk2(sp,rdata,sizeof(rdata)/sizeof(rdata[0]));
       if(jg!=0)
          return(-1);
    }
    return(0);
 }

 int 
chk1 (struct ssq *sp, int *data, int size)
 {
    int i;

    for(i=0;i<size;i++){
       if(sp->ssd == *data++)
          return(0);
    }
    printf("     in chk1  NG  number=%d\n",sp->ssd);
    return(-1);
 }

 int 
chk2 (struct ssq *sp, int *data, int sz)
 {
    int i;

    for(i=0;i<sz;i++){
       if(sp->ssd == *data++){
          printf("     in chk2  NG  number=%d\n",sp->ssd);
          return(-1);
       }
    }
    return(0);
 }

 int 
chain (struct ssq *ssp)
 {
    struct ssq *wssp,*bssp,*pssp;
    int i;

    for(i=0,wssp=ssp ; i<100 ; i++){
      if(wssp->atr[1]=='n'){
         pssp=bssp=wssp;
         break;
      }
      wssp++;
    }

    for( ; i<100 ; i++){
      if(wssp->atr[1]=='n'){
         bssp->nxt=wssp;
         bssp=wssp;
      }
      wssp++;
    }
    return(ckchain(pssp));
 }

 int 
ckchain (struct ssq *ssp)
 {
    int i;
    struct ssq *wssp;

     for(wssp=ssp,i=0;i<100;i++){
       if(wssp->ssd != rdata[i]){
         return(1);
       } else {
         wssp= wssp->nxt;
         if(wssp==NULL && i==sizeof(rdata)/sizeof(rdata[0])-1) return(0);
       }
     }
     return(2);
 }
int 
m3etre11 (void)
  {
printf("\n* M3ETRE11 *** MK3 TEST FOR X_TREEMK *** STARTED *\n");
{
  int a=0;
  int b=1;
  a=b<=1;
  if(a==1)
    printf("*** M3ETRE11-01 *** O K ***\n");
  else
    printf("*** M3ETRE11-01 ***   N   G   ***\n");
}
{
  int a=0;
  int b=1;
  a=1>0;
  if(a==1)
    printf("*** M3ETRE11-02 *** O K ***\n");
  else
    printf("*** M3ETRE11-02 ***   N   G   ***\n");
}
{
  int a=0;
  int b=1;
  a=b>0;
  if(a==1)
    printf("*** M3ETRE11-03 *** O K ***\n");
  else
    printf("*** M3ETRE11-03 ***   N   G   ***\n");
}
{
  int a=0;
  int b=1;
  a=1>=b;
  if(a==1)
    printf("*** M3ETRE11-04 *** O K ***\n");
  else
    printf("*** M3ETRE11-04 ***   N   G   ***\n");
}
{
  int a=0;
  int b=1;
  a=b>=1;
  if(a==1)
    printf("*** M3ETRE11-05 *** O K ***\n");
  else
    printf("*** M3ETRE11-05 ***   N   G   ***\n");
}
{
  int a=0;
  int b=1;
  a=1==b;
  if(a==1)
    printf("*** M3ETRE11-06 *** O K ***\n");
  else
    printf("*** M3ETRE11-06 ***   N   G   ***\n");
}
{
  int a=0;
  int b=1;
  a=b==1;
  if(a==1)
    printf("*** M3ETRE11-07 *** O K ***\n");
  else
    printf("*** M3ETRE11-07 ***   N   G   ***\n");
}
{
  int a=0;
  int b=1;
  a=1!=2;
  if(a==1)
    printf("*** M3ETRE11-08 *** O K ***\n");
  else
    printf("*** M3ETRE11-08 ***   N   G   ***\n");
}
{
  int a=0;
  int b=1;
  int c=2;
  a=b!=c;
  if(a==1)
    printf("*** M3ETRE11-09 *** O K ***\n");
  else
    printf("*** M3ETRE11-09 ***   N   G   ***\n");
}
{
  int a=0;
  int b=2;
  a=1&&b;
  if(a==1)
    printf("*** M3ETRE11-10 *** O K ***\n");
  else
    printf("*** M3ETRE11-10 ***   N   G   ***\n");
}
{
  int a=0;
  int b=2;
  a=b&&1;
  if(a==1)
    printf("*** M3ETRE11-11 *** O K ***\n");
  else
    printf("*** M3ETRE11-11 ***   N   G   ***\n");
}
{
  int a=0;
  int b=2;
  a=0||b;
  if(a==1)
    printf("*** M3ETRE11-12 *** O K ***\n");
  else
    printf("*** M3ETRE11-12 ***   N   G   ***\n");
}
{
  int a=0;
  int b=0;
  a=b||1;
  if(a==1)
    printf("*** M3ETRE11-13 *** O K ***\n");
  else
    printf("*** M3ETRE11-13 ***   N   G   ***\n");
}
{
  int a=0;
  a=2/1;
  if(a==2)
    printf("*** M3ETRE11-14 *** O K ***\n");
  else
    printf("*** M3ETRE11-14 ***   N   G   ***\n");
}
{
  int a=0;
  int b=2;
  a=b/1;
  if(a==2)
    printf("*** M3ETRE11-15 *** O K ***\n");
  else
    printf("*** M3ETRE11-15 ***   N   G   ***\n");
}
{
  int a=0;
  int b=2;
  a=3%b;
  if(a==1)
    printf("*** M3ETRE11-16 *** O K ***\n");
  else
    printf("*** M3ETRE11-16 ***   N   G   ***\n");
}
printf("*** M3ETRE11 *** MK3 TEST FOR X_TREEMK *** ENDED ***\n");
  }
