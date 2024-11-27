#include <math.h>
  
 
 
 
 
 
 

#include <stdio.h>
#include <string.h>
#include <stdlib.h>
int f94();
int f93();
int f92();
int mptest10();
int mptest09();
int mptest08();
int scrlc02();
int scrlc01();
int m3eva109();
int m3eva108();
int m3eva106();
int m3eva105();
int m3eva104();
int m3eva103();
int m3eva102();
int m3eva101();
int m3eva100();
int m3eva099();
int m3eva098();
int m3eva097();
int m3eva096();
int m3eva095();
int m3eva094();
int m3eva093();
int m3eva092();
int m3eva091();
int m3eva090();
int m3eva089();
int m3eva088();
int m3eva087();
int m3eva086();
int m3eva085();
int m3eva084();
int m3eva083();
int m3eva082();
int m3eva081();
int m3eva080();
int main()
{
    printf("*** \n");
    m3eva080();
    m3eva081();
    m3eva082();
    m3eva083();
    m3eva084();
    m3eva085();
    m3eva086();
    m3eva087();
    m3eva088();
    m3eva089();
    m3eva090();
    m3eva091();
    m3eva092();
    m3eva093();
    m3eva094();
    m3eva095();
    m3eva096();
    m3eva097();
    m3eva098();
    m3eva099();
    m3eva100();
    m3eva101();
    m3eva102();
    m3eva103();
    m3eva104();
    m3eva105();
    m3eva106();
    m3eva108();
    m3eva109();
    scrlc01();
    scrlc02();
    mptest08();
    mptest09();
    mptest10();
    printf("\n*** \n");
exit (0);
}

 
 
 
 
 
 
 
 
 
extern int a80;

 int m3eva080()
{
  int a80=5;
  if( a80==5 )
   printf("\nM3EVA080 TEST OK \n");
  else
   printf("M3EVA080 TEST NG = %d \n",a80);
}
 
 
 
 
 
 
 
 
 
extern int a81;

 int m3eva081()
{
  int a81;
  a81 = 5;
  if( a81==5 )
   printf("\nM3EVA081 TEST OK \n");
  else
   printf("M3EVA081 TEST NG = %d \n",a81);
}
 
 
 
 
 
 
 
 
 
extern int a82;

 int m3eva082()
{
  int a82=3;
  char x=0;
  {
    int a82=5;
    if( a82==5 )
       x=1;
    else
       printf("M3EVA082 TEST NG = %d \n",a82);
  }
  if( a82==3 && x==1 )
    printf("\nM3EVA082 TEST OK \n");
  else
    printf("M3EVA082 TEST NG = %d \n",a82);
}
 
 
 
 
 
 
 
 
 
extern int a83;

 int m3eva083()
{
  int a83=3;
  char x=0;
  {
    int a83;
    a83 = 5;
    if( a83==5 )
     x=1;
    else
     printf("M3EVA083 TEST NG = %d \n",a83);
  }
  if( a83==3 && x==1 )
    printf("\nM3EVA083 TEST OK \n");
  else
    printf("M3EVA083 TEST NG = %d \n",a83);
}
 
 
 
 
 
 
 
 
 
extern int a84;

 int m3eva084()
{
  struct {
           int a84;
           char b;
         }st;
  union  {
           int a84;
           char b;
         }un;
  a84=10;
  st.a84=20;
  un.a84=30;
  if( a84==10 && st.a84==20 && un.a84==30 )
    printf("\nM3EVA084 TEST OK \n");
  else
    printf("M3EVA084 TEST NG \n");
}
int a84;
 
 
 
 
 
 
 
 
 
extern int a85;

int f185( int a85 );
 int m3eva085()
{
  int f285( int a85 );
  int x=20;
  int y=30;
  if( f185(x) && f285(y) )
   printf("\nM3EVA085 TEST OK \n");
  else
   printf("M3EVA085 TEST NG \n");
}
 int f185( int a85 )
{
  if( a85==20 )
   return 1;
  else
   return 0;
}
 int f285( int a85 )
{
  if( a85==30 )
   return 1;
  else
   return 0;
}
 
 
 
 
 
 
 
 
 
extern int a86;

 int f186( a86 )
int a86;
{
  if( a86==20 )
   return 1;
  else
   return 0;
}
 int f286( a86 )
int a86;
{
  if( a86==30 )
   return 1;
  else
   return 0;
}
 int m3eva086()
{
  int x=20;
  int y=30;
  if( f186(x) && f286(y) )
   printf("\nM3EVA086 TEST OK \n");
  else
   printf("M3EVA086 TEST NG \n");
}
 
 
 
 
 
 
 
 
 
extern int a87;

 int m3eva087()
{
  static int a87=20;
  if( a87==20 )
   printf("\nM3EVA087 TEST OK \n");
  else
   printf("M3EVA087 TEST NG \n");
}
 
 
 
 
 
 
 
 
 
extern int a88;

 int m3eva088()
{
  static int a88;
  a88 = 20;
  if( a88==20 )
   printf("\nM3EVA088 TEST OK \n");
  else
   printf("M3EVA088 TEST NG \n");
}
 
 
 
 
 
 
 
 
 
extern int a89;

 int m3eva089()
{
  char x=0;
  {
    static int a89=5;
    if( a89==5 )
       x=1;
    else
       printf("M3EVA089 TEST NG = %d \n",a89);
  }
  if( x==1 )
    printf("\nM3EVA089 TEST OK \n");
  else
    printf("M3EVA089 TEST NG = %d \n",a89);
}
int a89;
 
 
 
 
 
 
 
 
 
extern int a90;

 int m3eva090()
{
  char x=0;
  {
    static int a90;
    a90 = 5;
    if( a90==5 )
       x=1;
    else
       printf("M3EVA090 TEST NG = %d \n",a90);
  }
  if( x==1 )
    printf("\nM3EVA090 TEST OK \n");
  else
    printf("M3EVA090 TEST NG = %d \n",a90);
}
int a90;
 
 
 
 
 
 
 
 
 
extern int a91[3];
extern int a91[3]={10,10,10};

 int m3eva091()
{
  if( a91[2]==10 )
    printf("\nM3EVA091 TEST OK \n");
  else
    printf("M3EVA091 TEST NG = %d \n",a91[2]);
}
 
 
 
 
 
 
 
 
 
extern int a92[3];
extern int a92[3]={1,2,3};

 int m3eva092()
{
  a92[2]=10;
  if( f92() )
    printf("\nM3EVA092 TEST OK \n");
  else
    printf("M3EVA092 TEST NG = %d \n",a92[2]);
}
 int f92()
{
  if( a92[2]==10 )
   return 1;
  else
   return 0;
}
 
 
 
 
 
 
 
 
 
int x93=10;
extern int *a93;

 int m3eva093()
{
  extern int *a93;
  a93 = &x93;
  if( f93() )
    printf("\nM3EVA093 TEST OK \n");
  else
    printf("M3EVA093 TEST NG = %d \n",*a93);
}
 int f93()
{
  if( *a93==10 )
   return 1;
  else
   return 0;
}
int *a93;
 
 
 
 
 
 
 
 
 
extern int a94[3];

 int m3eva094()
{
  {
    extern int a94[3];
    a94[2]=10;
    if( f94() )
      printf("\nM3EVA094 TEST OK \n");
    else
      printf("M3EVA094 TEST NG = %d \n",a94[2]);
  }
}
 int f94()
{
  if( a94[2]==10 )
   return 1;
  else
   return 0;
}
int a94[3];
 
 
 
 
 
 
 
 
 
 int f95()
{
  int a95=10;
  if( a95==10 )
   return 1;
  else
   return 0;
}

int a95=20;

 int m3eva095()
{
  if( a95==20 && f95() )
    printf("\nM3EVA095 TEST OK \n");
  else
    printf("M3EVA095 TEST NG = %d \n",a95);
}
 
 
 
 
 
 
 
 
 
 int f96()
{
  int a96=10;
  if( a96==10 )
   return 1;
  else
   return 0;
}

int a96;

 int m3eva096()
{
  if( a96==0 && f96() )
    printf("\nM3EVA096 TEST OK \n");
  else
    printf("M3EVA096 TEST NG = %d \n",a96);
}
 
 
 
 
 
 
 
 
 
 int m3eva097()
{
  int a=10;
  int i=0;
  {
    int a=20;
    if( a==20 )
      i = 1;
    else
      printf("M3EVA097 TEST NG = %d \n",a);
  }
  if( a==10 && i==1 )
    printf("\nM3EVA097 TEST OK \n");
  else
    printf("M3EVA097 TEST NG = %d \n",a);
}
 
 
 
 
 
 
 
 
 
 int m3eva098()
{
  int a=10;
  int i=0;
  {
    int a;
    a = 20;
    if( a==20 )
      i = 1;
    else
      printf("M3EVA098 TEST NG = %d \n",a);
  }
  if( a==10 && i==1 )
    printf("\nM3EVA098 TEST OK \n");
  else
    printf("M3EVA098 TEST NG = %d \n",a);
}
 
 
 
 
 
 
 
 
 
 int m3eva099()
{
  int a=10;
  struct {
           int a;
           int b;
         }st;
  st.a=20;
  if( a==10 && st.a==20 )
    printf("\nM3EVA099 TEST OK \n");
  else
    printf("M3EVA099 TEST NG = %d \n",a);
  return 0;
}
 
 
 
 
 
 
 
 
 
 int m3eva100()
{
  int a=10;
  int f100( int a );
  if( f100(a) )
    printf("\nM3EVA100 TEST OK \n");
  else
    printf("M3EVA100 TEST NG = %d \n",a);
  return 0;
}
 int f100( int a )
{
  if( a==10 )
   return 1;
  else
   return 0;
}
 
 
 
 
 
 
 
 
 
 int f101()
{
  int a101=10;
  if( a101==10 )
   return 1;
  else
   return 0;
}

static int a101=20;

 int m3eva101()
{
  if( a101==20 && f101() )
    printf("\nM3EVA101 TEST OK \n");
  else
    printf("M3EVA101 TEST NG = %d \n",a101);
}
 
 
 
 
 
 
 
 
 
 int f102()
{
  int a102=10;
  if( a102==10 )
   return 1;
  else
   return 0;
}

static int a102;

 int m3eva102()
{
  if( a102==0 && f102() )
    printf("\nM3EVA102 TEST OK \n");
  else
    printf("M3EVA102 TEST NG = %d \n",a102);
}
 
 
 
 
 
 
 
 
 
 int m3eva103()
{
  int a=10;
  int i=0;
  {
    static int a=20;
    if( a==20 )
      i = 1;
    else
      printf("M3EVA103 TEST NG = %d \n",a);
  }
  if( a==10 && i==1 )
    printf("\nM3EVA103 TEST OK \n");
  else
    printf("M3EVA103 TEST NG = %d \n",a);
}
 
 
 
 
 
 
 
 
 
 int m3eva104()
{
  int a=10;
  int i=0;
  {
    static int a;
    a = 20;
    if( a==20 )
      i = 1;
    else
      printf("M3EVA104 TEST NG = %d \n",a);
  }
  if( a==10 && i==1 )
    printf("\nM3EVA104 TEST OK \n");
  else
    printf("M3EVA104 TEST NG = %d \n",a);
}
 
 
 
 
 
 
 
 
 
 int f105()
{
  int a105=10;
  if( a105==10 )
   return 1;
  else
   return 0;
}

extern int a105=20;

 int m3eva105()
{
  if( a105==20 && f105() )
    printf("\nM3EVA105 TEST OK \n");
  else
    printf("M3EVA105 TEST NG = %d \n",a105);
}
 
 
 
 
 
 
 
 
 
 int f106()
{
  int a106=10;
  if( a106==10 )
   return 1;
  else
   return 0;
}

extern int a106;

 int m3eva106()
{
  if( a106==5 && f106() )
    printf("\nM3EVA106 TEST OK \n");
  else
    printf("M3EVA106 TEST NG = %d \n",a106);
}
int a106=5;
 
 
 
 
 
 
 
 
 
 int m3eva108()
{
  int a108=10;
  {
    extern int a108;
    if( a108==20 )
      printf("\nM3EVA108 TEST OK \n");
    else
      printf("M3EVA108 TEST NG = %d \n",a108);
  }
}
int a108=20;
 
 
 
 
 
 
 
 
 
 int m3eva109()
{
  int a=10;
  int i=0;
  {
    register int a=1;
    if( a==1 )
      i = 1;
    else
      printf("M3EVA109 TEST NG = %d \n",a);
  }
  if( a==10 && i==1 )
    printf("\nM3EVA109 TEST OK \n");
  else
    printf("M3EVA109 TEST NG = %d \n",a);
}
 
 
 

 int scrlc01()
{
register int i;
register float j;
register short int k;
i=1;
j=2;
k=3;
i=i+1;
j=j+1;
k=k+1;
i=i+i;
if(i==4 && j==3 && k==4) printf(" ----- ok ----- \n");
else                     printf(" ----- ng ----- \n");
}
 
 
 
 
int  a;
 int scrlc02()
{
        int  b,*p1;
        int  i,j=0;

  for(i=0;i<3;i++)
    {
          b=i+3;
          a=i+b;
          j=i+a;

          p1=&b;
         *p1=j-i;
          if(b==*p1) printf("--------- ok -------- \n");
          else       printf("--------- ng -------- \n");
          j=a+b;

    }
}
  
  

 static char *okng ="OK";

 int mptest08()
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

 char * func1(p)
   int *p;
 {
     *p = *p+1;
     return("    * OUT func1 *");
 }

 char * func2(p)
   int *p;
 {
    static int i=0;

     if(++i <= 2){
        *p = *p+1;
        func2(p);
     }
     return("    * OUT func2 *");
 }

 char * func3(p)
   int *p;
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

 int mptest09()
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

 int  defi1(ssp)
   struct ss *ssp;
 {
     static int d1_i=1;

     ssp->ss_i1 = d1_i++ ;
     return(0);
 }

 int  defi2(ssp,ei)
   struct ss *ssp;
   int ei;
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

 int  defc(ssp)
   struct ss *ssp;
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

 int  defn(ssp)
   struct ss *ssp;
 {
    int i;
    struct ss *np;

    for( np=ssp,i=0 ; i<26 ; np=np->next,i++){
       np->next=np+1;
    }
    (np-1)->next = NULL;
    return(0);
 }

 int  sortss(ssp)
   struct ss *ssp;
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

 int  schk(ssp)
   struct ss *ssp;
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
  
  


#define TESTOK " *** CHECK OK ***\n"
#define TESTNG " *** CHECK NG ***\n"

  static int rdata[ ] ={2,3,5,7,11,13,17,19,23,29,31,37,41,43,
                           47,53,59,61,67,71,73,79,83,89,97};

  struct ssq {
       int  ssd;
       char atr[4];
       struct ssq *nxt;
  } ssq0[100];

 int chk(void);
 int chk1(struct ssq *,int *,int);
 int chk2(struct ssq *,int *,int);
 int chain(struct ssq *);
 int ckchain(struct ssq *);

 int mptest10()
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

 int  chk()
 {
    struct ssq *sp;
    int i,jg;

    sp=ssq0;
    for(i=0;i<100;i++){
       if(!strcmp(sp->atr,"on"))
          jg=chk1(sp,rdata,sizeof(rdata)/4);
       else
          jg=chk2(sp,rdata,sizeof(rdata)/4);
       if(jg!=0)
          return(-1);
    }
    return(0);
 }

 int  chk1(sp,data,size)
    struct ssq *sp;
    int       *data;
    int        size;
 {
    int i;

    for(i=0;i<size;i++){
       if(sp->ssd == *data++)
          return(0);
    }
    printf("     in chk1  NG  number=%d\n",sp->ssd);
    return(-1);
 }

 int  chk2(sp,data,sz)
    struct ssq *sp;
    int       *data;
    int        sz;
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

 int  chain(ssp)
   struct ssq *ssp;
 {
    struct ssq *wssp,*bssp,*pssp;
    int i;

    for(i=0,wssp=ssp ; i<100 ; i++){
      if(wssp->atr[1]=='n'){
         pssp=bssp=wssp++;
	 i++;
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

 int  ckchain(ssp)
   struct ssq *ssp;
 {
    int i;
    struct ssq *wssp;

     for(wssp=ssp,i=0;i<100;i++){
       if(wssp->ssd != rdata[i]){
         return(1);
       } else {
         wssp= wssp->nxt;
         if(wssp==NULL && i==sizeof(rdata)/4-1) return(0);
       }
     }
     return(2);
 }
