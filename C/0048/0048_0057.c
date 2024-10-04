
#include <stdio.h>
#include <string.h>
#include <stdlib.h>
int f176 (void);
int scqih10 (void);
int scqih09 (void);
int scqih08 (void);
int scqih07 (void);
int scqih06 (void);
int scqih03 (void);
int scqih01 (void);
int m3eva179 (void);
int m3eva178 (void);
int m3eva177 (void);
int m3eva176 (void);
int m3eva175 (void);
int m3eva174 (void);
int m3eva173 (void);
int m3eva172 (void);
int m3eva169 (void);
int m3eva168 (void);
int m3eva167 (void);
int m3eva166 (void);
int m3eva163 (void);
int m3eva162 (void);
int m3eva159 (void);
int m3eva158 (void);
int m3eva157 (void);
int m3eva156 (void);
int m3eva155 (void);
int m3eva154 (void);
int m3eva153 (void);
int m3eva152 (void);
int m3eva151 (void);
int m3eva150 (void);
int m3eva149 (void);
int m3eva148 (void);
int m3eva147 (void);
int m3eva146 (void);
int m3eva145 (void);
int m3eva141 (void);
int m3eva140 (void);
int mptest20 (void);
int mptest19 (void);
int mptest18 (void);
int mptest16 (void);
int mptest15 (void);
int mptest14 (void);
int mptest13 (void);
int mptest12 (void);
int mptest10 (void);
int mptest09 (void);
int mptest08 (void);
int main()
{
    printf("***  *** TEST FOR COMMON *** STARTED ***\n");
    mptest08();
    mptest09();
    mptest10();
    mptest12();
    mptest13();
    mptest14();
    mptest15();
    mptest16();
    mptest18();
    mptest19();
    mptest20();
    m3eva140();
    m3eva141();
    m3eva145();
    m3eva146();
    m3eva147();
    m3eva148();
    m3eva149();
    m3eva150();
    m3eva151();
    m3eva152();
    m3eva153();
    m3eva154();
    m3eva155();
    m3eva156();
    m3eva157();
    m3eva158();
    m3eva159();
    m3eva162();
    m3eva163();
    m3eva166();
    m3eva167();
    m3eva168();
    m3eva169();
    m3eva172();
    m3eva173();
    m3eva174();
    m3eva175();
    m3eva176();
    m3eva177();
    m3eva178();
    m3eva179();
    scqih01();
    scqih03();
    scqih06();
    scqih07();
    scqih08();
    scqih09();
    scqih10();
    printf("\n***  *** TEST FOR COMMON *** ENDED ***\n");
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

 static int aaa[5]={1,2,3,4,5};
 struct st {
        int sti;
        char stc;
     };

int 
mptest12 (void)
 {
     int func112( int *i );
     struct st stfunc();
     static int bbb[5]={0,1,2,3,4};
     struct st sss;
     int i;
     sss.sti=0;
     sss.stc='a';
     sss = stfunc(sss,1);
     if((sss.sti!=1)||(sss.stc!='b')) {
        printf(" *** SSS - (1) NG *** SSS.STI=%d, SSS.STC=%c\n",
               sss.sti,sss.stc);
     } else {
        printf(" *** SSS - (1) OK *** \n");
     }
     if(!func112(bbb))
        printf(" *** BBB - OK ***\n");
     else{
        printf(" *** BBB - NG ***\n");
        for(i=0;i<5;printf("     BBB(%d)=%d,",i,bbb[i++]));
     }
     printf("\n ***** MPTEST12 END *****\n");
 }
 int 
func112 (int *ccc)
 {
    int i=0;
    for( ; i<5 ; i++,ccc++) *ccc=*ccc+1;
    for(i=4 ; i>=0 ; i--)
       if(*(--ccc) != aaa[i]) return(1);
    return(0);
 }
 struct st 
stfunc (struct st s, int i)
 {
    s.sti += i;
    s.stc += i;
    return(s);
 }
   void errcheck();
   int *a[5],b,subr1(int b),c,err=0;
int 
mptest13 (void)
     {
        printf("\n*** MPTEST13 -- START ***\n") ;
        b=400 ;
        a[0]=&b ;
        subr1(b);
        c=*a[0] ;
        if(c==400) printf("*** OK c = %d ***\n",c) ;
        else  {   printf("*** NG c = %d ***\n",c) ;
                   err++;
              }
        errcheck();
        printf("\n*** MPTEST13 -- END   ***\n") ;
     }
   int 
subr1 (int d)
     {
        int e ;
        d=d+200;
        a[1]=&d ;
        e=*a[1] ;
        if(e==600) printf("*** OK e = %d ***\n",e) ;
        else  {   printf("*** NG e = %d ***\n",e) ;
                   err++;
              }
     }
 void 
errcheck (void)
 {
      if(err==0)
       {
         printf("***    OK         ***\n");
       }
      else
       {
         printf("***    NG         ***\n");
       }
 }

int 
mptest14 (void)
{
    struct st func(),st0;
    int chk14(struct st st0);
    st0 = func();
    if(chk14(st0))
      printf(" *** CHK OK ***\n");
    else
      printf(" *** CHK NG ***\n");
    printf(" *****  MPTEST14  END  *****\n");
}
 struct st 
func (void)
{
  struct st s;
    s.sti=1;
    s.stc='a';
    return(s);
}
 int 
chk14 (struct st s)
{
   if(s.sti!=1)return(0);
   if(s.stc!='a')return(0);
   return(1);
}
   void subr2(int);
   int *a[5],b,c;
int 
mptest15 (void)
     {
        printf("\n*** MPTEST15 -- START ***\n") ;
        b=400 ;
        a[0]=&b ;
        subr2(b);
        c=*a[0] ;
        if(c==400)
         printf("*** MPTEST15 CHECK01 OK ***\n");
        else
         printf("*** MPTEST15 CHECK01 NG ***\n");
        printf("\n*** MPTEST15 -- END   ***\n") ;
     }
   void subr2(int d)
     {
        int e;
        d=d+200;
        a[1]=&d;
        e=*a[1];
        if(e==600)
         printf("*** MPTEST15 CHECK02 OK ***\n");
        else
         printf("*** MPTEST15 CHECK02 NG ***\n");
     }
   int bbb,*subr3(int *),*ggg;
int 
mptest16 (void)
     {
        bbb=10 ;
        ggg=subr3(&bbb) ;
        if(*ggg == 20)
          printf("*** MPTEST16  OK  ***\n") ;
        else
          printf("*** MPTEST16  NG  ***\n") ;
     }
   int *subr3(int *ddd)
     {
         struct  t1  {
            int **aaa[7][5][3]  ;
                     } ccc[4] ;
         *ddd = *ddd + 10 ;
         ccc[0].aaa[0][0][0] = &ddd ;
         ccc[3].aaa[6][4][2] = ccc[0].aaa[0][0][0] ;
         return(*ccc[3].aaa[6][4][2]) ;
     }
   struct  t1  {
     int  a ;
     char b ;
               } ;
   int 
func1aa (struct t1 q)
   {
       q.a=q.a+1;
       return(q.a);
   }
int 
mptest18 (void)
   {
       struct t1 p ; int i;
       int func1aa();
       p.a=3 ;
       p.b='9' ;
       i = func1aa(p) ;
       if(i==4)
        printf("\n*** MPTEST18 OK ***\n") ;
       else
        printf("*** MPTEST18 NG ***\n") ;
   }
   static char ok_msg[] = {"*** MPTEST19 *** OK ***"}  ;
   static char ng_msg[] = {"*** MPTEST19 *** NG ***"}  ;
   struct t {
     int  a  ;
     int  b  ;
     } z ,funcaa()  ;
int 
mptest19 (void)
     {
        z=funcaa()  ;
        if(z.a==5 && z.b==7)
          printf("\n%s\n",ok_msg) ;
        else
          printf("%s\n",ng_msg) ;
     }
   struct t 
funcaa (void)
     {
       struct t s ;
       s.a=5  ;
       s.b=7  ;
       return(s) ;
     }
int 
mptest20 (void)
{
   int a[10],b[10],i,j,func320(int i);

   for(i=0;i<10;a[i]=i++);
   for(i=0;i<10;i++){
      b[i]=func320(a[i]);
      if(b[i]+a[i]!=10)
         printf("\n*** MPTEST20 <%2d> NG ***\n",i);
      else
         printf("\n*** MPTEST20 <%2d> OK ***\n",i);
   }
}
 int func320(int i)
{
   return(10-i);
}
int 
f140 (void)
{
  int a140;
  a140=10;
  if( a140==10 )
   return 1;
  else
   return 0;
}

extern int a140=20;

int 
m3eva140 (void)
{
  if( a140==20 && f140() )
    printf("\nM3EVA140 TEST OK \n");
  else
    printf("M3EVA140 TEST NG = %d \n",a140);
}
int 
f141 (void)
{
  int a141;
  a141=10;
  if( a141==10 )
   return 1;
  else
   return 0;
}

extern int a141;

int 
m3eva141 (void)
{
  if( a141==5 && f141() )
    printf("\nM3EVA141 TEST OK \n");
  else
    printf("M3EVA141 TEST NG = %d \n",a141);
}
int a141=5;
int 
m3eva145 (void)
{
  int a;
  int i=0;
  a=10;
  {
    register int a=1;
    if( a==1 )
      i = 1;
    else
      printf("M3EVA145 TEST NG = %d \n",a);
  }
  if( a==10 && i==1 )
    printf("\nM3EVA145 TEST OK \n");
  else
    printf("M3EVA145 TEST NG = %d \n",a);
}
int 
m3eva146 (void)
{
  int a;
  int i=0;
  a=10;
  {
    register int a;
    a =1 ;
    if( a==1 )
      i = 1;
    else
      printf("M3EVA146 TEST NG = %d \n",a);
  }
  if( a==10 && i==1 )
    printf("\nM3EVA146 TEST OK \n");
  else
    printf("M3EVA146 TEST NG = %d \n",a);
}
int 
m3eva147 (void)
{
  int a;
  int f147( register int a );
  a=10;
  if( f147(a) )
    printf("\nM3EVA147 TEST OK \n");
  else
    printf("M3EVA147 TEST NG = %d \n",a);
}
 int f147( register int a )
{
  if( a==10 )
   return 1;
  else
   return 0;
}
int 
f148 (void)
{
  static int a148;
  a148=10;
  if( a148==10 )
   return 1;
  else
   return 0;
}

int a148=20;

int 
m3eva148 (void)
{
  if( a148==20 && f148() )
    printf("\nM3EVA148 TEST OK \n");
  else
    printf("M3EVA148 TEST NG = %d \n",a148);
}
int 
f149 (void)
{
  static int a149;
  a149=10;
  if( a149==10 )
   return 1;
  else
   return 0;
}

int a149;

int 
m3eva149 (void)
{
  if( a149==0 && f149() )
    printf("\nM3EVA149 TEST OK \n");
  else
    printf("M3EVA149 TEST NG = %d \n",a149);
}
int 
m3eva150 (void)
{
  static int a;
  int i=0;
  a=10;
  {
    int a=20;
    if( a==20 )
      i = 1;
    else
      printf("M3EVA150 TEST NG = %d \n",a);
  }
  if( a==10 && i==1 )
    printf("\nM3EVA150 TEST OK \n");
  else
    printf("M3EVA150 TEST NG = %d \n",a);
}
int 
m3eva151 (void)
{
  static int a;
  int i=0;
  a=10;
  {
    int a;
    a = 20;
    if( a==20 )
      i = 1;
    else
      printf("M3EVA151 TEST NG = %d \n",a);
  }
  if( a==10 && i==1 )
    printf("\nM3EVA151 TEST OK \n");
  else
    printf("M3EVA151 TEST NG = %d \n",a);
}
int 
m3eva152 (void)
{
  static int a;
  struct {
           int a;
           int b;
         }st;
  st.a=20;
  a=10;
  if( a==10 && st.a==20 )
    printf("\nM3EVA152 TEST OK \n");
  else
    printf("M3EVA152 TEST NG = %d \n",a);
}
int 
m3eva153 (void)
{
  static int a;
  int f153( int a );
  a=10;
  if( f153(a) )
    printf("\nM3EVA153 TEST OK \n");
  else
    printf("M3EVA153 TEST NG = %d \n",a);
}
 int f153( int a )
{
  if( a==10 )
   return 1;
  else
   return 0;
}
int 
f154 (void)
{
  static int a154;
  a154=10;
  if( a154==10 )
   return 1;
  else
   return 0;
}

static int a154=20;

int 
m3eva154 (void)
{
  if( a154==20 && f154() )
    printf("\nM3EVA154 TEST OK \n");
  else
    printf("M3EVA154 TEST NG = %d \n",a154);
}
int 
f155 (void)
{
  static int a155;
  a155=10;
  if( a155==10 )
   return 1;
  else
   return 0;
}

static int a155;

int 
m3eva155 (void)
{
  if( a155==0 && f155() )
    printf("\nM3EVA155 TEST OK \n");
  else
    printf("M3EVA155 TEST NG = %d \n",a155);
}
int 
m3eva156 (void)
{
  static int a;
  int i=0;
  a=10;
  {
    static int a=20;
    if( a==20 )
      i = 1;
    else
      printf("M3EVA156 TEST NG = %d \n",a);
  }
  if( a==10 && i==1 )
    printf("\nM3EVA156 TEST OK \n");
  else
    printf("M3EVA156 TEST NG = %d \n",a);
}
int 
m3eva157 (void)
{
  static int a;
  int i=0;
  a=10;
  {
    static int a;
    a = 20;
    if( a==20 )
      i = 1;
    else
      printf("M3EVA157 TEST NG = %d \n",a);
  }
  if( a==10 && i==1 )
    printf("\nM3EVA157 TEST OK \n");
  else
    printf("M3EVA157 TEST NG = %d \n",a);
}
int 
f158 (void)
{
  static int a158;
  a158=10;
  if( a158==10 )
   return 1;
  else
   return 0;
}

extern int a158=20;

int 
m3eva158 (void)
{
  if( a158==20 && f158() )
    printf("\nM3EVA158 TEST OK \n");
  else
    printf("M3EVA158 TEST NG = %d \n",a158);
}
int 
f159 (void)
{
  static int a159;
  a159=10;
  if( a159==10 )
   return 1;
  else
   return 0;
}

extern int a159;

int 
m3eva159 (void)
{
  if( a159==5 && f159() )
    printf("\nM3EVA159 TEST OK \n");
  else
    printf("M3EVA159 TEST NG = %d \n",a159);
}
int a159=5;
int 
f162 (void)
{
  extern int a162;
  if( a162==20 )
   return 1;
  else
   return 0;
}

int a162=20;

int 
m3eva162 (void)
{
  if( a162==20 && f162() )
    printf("\nM3EVA162 TEST OK \n");
  else
    printf("M3EVA162 TEST NG = %d \n",a162);
}
int 
f163 (void)
{
  extern int a163;
  a163=10;
  if( a163==10 )
   return 1;
  else
   return 0;
}

int a163;

int 
m3eva163 (void)
{
  if( f163() && a163==10 )
    printf("\nM3EVA163 TEST OK \n");
  else
    printf("M3EVA163 TEST NG = %d \n",a163);
}
int 
m3eva166 (void)
{
  extern int a166;
  int i=0;
  {
    int a166=20;
    if( a166==20 )
      i = 1;
    else
      printf("M3EVA166 TEST NG = %d \n",a166);
  }
  if( a166==10 && i==1 )
    printf("\nM3EVA166 TEST OK \n");
  else
    printf("M3EVA166 TEST NG = %d \n",a166);
}
int a166=10;
int 
m3eva167 (void)
{
  extern int a167;
  int i=0;
  {
    int a167;
    a167=20;
    if( a167==20 )
      i = 1;
    else
      printf("M3EVA167 TEST NG = %d \n",a167);
  }
  if( a167==10 && i==1 )
    printf("\nM3EVA167 TEST OK \n");
  else
    printf("M3EVA167 TEST NG = %d \n",a167);
}
int a167=10;
int 
m3eva168 (void)
{
  extern int a168;
  struct {
           int a168;
           int b;
         }st;
  st.a168=20;
  if( a168==10 && st.a168==20 )
    printf("\nM3EVA168 TEST OK \n");
  else
    printf("M3EVA168 TEST NG = %d \n",a168);
}
int a168=10;
int 
m3eva169 (void)
{
  extern int a169;
  int f169( int a169 );
  if( f169(a169) )
    printf("\nM3EVA169 TEST OK \n");
  else
    printf("M3EVA169 TEST NG = %d \n",a169);
}
 int f169( int a169 )
{
  if( a169==10 )
   return 1;
  else
   return 0;
}
int a169=10;
int 
m3eva172 (void)
{
  extern int a172;
  int i=0;
  {
    static int a172=20;
    if( a172==20 )
      i = 1;
    else
      printf("M3EVA172 TEST NG = %d \n",a172);
  }
  if( a172==10 && i==1 )
    printf("\nM3EVA172 TEST OK \n");
  else
    printf("M3EVA172 TEST NG = %d \n",a172);
}
int a172=10;
int 
m3eva173 (void)
{
  extern int a173;
  int i=0;
  {
    static int a173;
    a173=20;
    if( a173==20 )
      i = 1;
    else
      printf("M3EVA173 TEST NG = %d \n",a173);
  }
  if( a173==10 && i==1 )
    printf("\nM3EVA173 TEST OK \n");
  else
    printf("M3EVA173 TEST NG = %d \n",a173);
}
int a173=10;
int 
f174 (void)
{
  extern int a174;
  if( a174==20 ) {
   a174 += 10;
   return 1; }
  else
   return 0;
}

extern int a174=20;

int 
m3eva174 (void)
{
  if( f174() && a174==30 )
    printf("\nM3EVA174 TEST OK \n");
  else
    printf("M3EVA174 TEST NG = %d \n",a174);
}
int 
f175 (void)
{
  extern int a175;
  a175 += 10;
  if( a175==30 )
   return 1;
  else
   return 0;
}

extern int a175;

int 
m3eva175 (void)
{
  int  c;
  a175 += 10;
  if(c=f175() && a175==30 )
    printf("\nM3EVA175 TEST OK \n");
  else
    printf("M3EVA175 TEST NG = %d \n",a175);
}
int a175=10;
int a176=20;
int 
m3eva176 (void)
{
  extern int a176;
  extern int a176;
  if( f176() && a176==30 )
    printf("\nM3EVA176 TEST OK \n");
  else
    printf("M3EVA176 TEST NG = %d \n",a176);
}
int 
f176 (void)
{
  a176 += 10;
  if( a176==30 )
   return 1;
  else
   return 0;
}
int 
m3eva177 (void)
{
  extern int a177;
  {
    extern int a177;
    a177 += 10;
  }
  if( a177==20 )
    printf("\nM3EVA177 TEST OK \n");
  else
    printf("M3EVA177 TEST NG = %d \n",a177);
}
int a177=10;
int 
f178 (void)
{
  register int a178;
  a178 = 10;
  if( a178==10 )
   return 1;
  else
   return 0;
}

extern int a178=20;

int 
m3eva178 (void)
{
  if( f178() && a178==20 )
    printf("\nM3EVA178 TEST OK \n");
  else
    printf("M3EVA178 TEST NG = %d \n",a178);
}
int 
f179 (void)
{
  register int a179;
  a179 = 20;
  if( a179==20 )
   return 1;
  else
   return 0;
}

extern int a179;

int 
m3eva179 (void)
{
  if( f179() && a179==10 )
    printf("\nM3EVA179 TEST OK \n");
  else
    printf("M3EVA179 TEST NG = %d \n",a179);
}
int a179=10;

#define GRDMAX    20

struct  GRDTYP {
    int                ref;
    struct  GRDTYP    *grdtp;
} ggrd[GRDMAX];

int 
scqih01 (void)
{
    int             i;
    struct  GRDTYP    *wgrdtp;

    wgrdtp = ggrd;
    for ( i = 0; i < GRDMAX - 1; i++) {
        wgrdtp->ref = i+1;
        wgrdtp->grdtp = wgrdtp++;
    }
    wgrdtp->ref = 0;
    wgrdtp->grdtp = 0;

    for ( i = 0; i < GRDMAX; i++) {
        if(( ggrd[i].ref != (i + 1)) && ( ggrd[i].ref != 0 )){
                printf("SCQIH01  ERROR\n");
                return 0;
        }
    }
    printf("\nSCQIH01  PASS\n");
}

#define BSIZE 20

#define ns_1     1
#define ns_2     3
#define ns_3     7
#define ns_4    15
#define ns_5    31
#define ns_6    63
#define ns_7   127
#define ns_r    15

struct  BITFIELD {
#if _WIN32 || __i386__ || __i386 || __x86_64__ || __aarch64__
    unsigned int    bitr:4;
    unsigned int    bit7:7;
    unsigned int    bit6:6;
    unsigned int    bit5:5;
    unsigned int    bit4:4;
    unsigned int    bit3:3;
    unsigned int    bit2:2;
    unsigned int    bit1:1;
#else
    unsigned int    bit1:1;
    unsigned int    bit2:2;
    unsigned int    bit3:3;
    unsigned int    bit4:4;
    unsigned int    bit5:5;
    unsigned int    bit6:6;
    unsigned int    bit7:7;
    unsigned int    bitr:4;
#endif
};

static  unsigned int    ans_setary [BSIZE] = {
    0x00000000, 0xa4420811, 0x48841022, 0xecc61833, 0x11082044,
    0xb54a2855, 0x598c3066, 0xfdce3877, 0x02104088, 0xa6524899,
    0x4a9450aa, 0xeed658bb, 0x131860cc, 0xb75a68dd, 0x5b9c70ee,
    0xffde78ff, 0x00208100, 0xa4628911, 0x48a49122, 0xece69933
};

static unsigned int ans_all = 0xece69933;

void setary();

int 
scqih03 (void)
{
    int i;
    void *tp1;
    unsigned int *tp2;
    struct  BITFIELD    bf, bfary[BSIZE];

    bf.bit1 = ns_1;
    bf.bit2 = ns_2;
    bf.bit3 = ns_3;
    bf.bit4 = ns_4;
    bf.bit5 = ns_5;
    bf.bit6 = ns_6;
    bf.bit7 = ns_7;
    bf.bitr = ns_r;

    setary(bfary);
    for (i = 0; i < BSIZE; i++){
        if ((i % 2) == 0){
            bf.bit1 |= bfary[i].bit1;
            bf.bit2 |= bfary[i].bit2;
            bf.bit3 |= bfary[i].bit3;
            bf.bit4 |= bfary[i].bit4;
            bf.bit5 |= bfary[i].bit5;
            bf.bit6 |= bfary[i].bit6;
            bf.bit7 |= bfary[i].bit7;
            bf.bitr |= bfary[i].bitr;
        }
        else{
            bf.bit1 &= bfary[i].bit1;
            bf.bit2 &= bfary[i].bit2;
            bf.bit3 &= bfary[i].bit3;
            bf.bit4 &= bfary[i].bit4;
            bf.bit5 &= bfary[i].bit5;
            bf.bit6 &= bfary[i].bit6;
            bf.bit7 &= bfary[i].bit7;
            bf.bitr &= bfary[i].bitr;
        }
    }
    tp1 = (void *)&bf;
    tp2 = (unsigned int *)tp1;
    if (*tp2 != ans_all)
        printf("SCQIH03  NG.\n");
    else
        printf("\nSCQIH03  PASS.\n");
}


void 
setary (struct BITFIELD *arpt)
{
    int i;
    void *tp1;
    unsigned int *tp2;

    for ( i = 0; i < BSIZE; i++){
        arpt->bit1 = (i % (ns_1 + 1));
        arpt->bit2 = (i % (ns_2 + 1));
        arpt->bit3 = (i % (ns_3 + 1));
        arpt->bit4 = (i % (ns_4 + 1));
        arpt->bit5 = (i % (ns_5 + 1));
        arpt->bit6 = (i % (ns_6 + 1));
        arpt->bit7 = (i % (ns_7 + 1));
        arpt->bitr = (i % (ns_r + 1));
        tp1 = (void *)arpt;
        tp2 = (unsigned int *)tp1;
        if (*tp2 != ans_setary[i])
            printf("SCQIH03  NG.(in setary(): i=%d)\n", i);
        arpt++;
    }
}

#define A_SIZE 256
#define TRUEA  1
#define FALSEA 0

typedef int BOOL;

struct  R_CODE{
    unsigned char   er_1:1;
    unsigned char   er_2:1;
    unsigned char   er_3:1;
    unsigned char   er_x:5;
};

void cp1(int *);
void cp2(int *);
BOOL check1(struct R_CODE *, int *);
BOOL check2(struct R_CODE *, int *);

int *exv1;  
int *exv2;  
int *pcnv;  

int 
scqih06 (void)
{
    int             elt_count = A_SIZE;
    int             elt_size  = sizeof(int);
    int             array[256];
    int             i;
    struct R_CODE r_code;

    r_code.er_1 = r_code.er_2 = r_code.er_3 = FALSEA;

    if ((exv1 = (int *)calloc( elt_count, elt_size)) == NULL){
        printf("exv1 : calloc error.\n");
        exit(0);
    }
    if ((exv2 = (int *)calloc( elt_count, elt_size)) == NULL){
        printf("exv2 : calloc error.\n");
        exit(0);
    }
    if ((pcnv = (int *)calloc( elt_count, elt_size)) == NULL){
        printf("pcnv : calloc error.\n");
        exit(0);
    }

    for ( i = 0; i < A_SIZE; ++i)
        array[i] = i;
    cp1(array);

    switch( check1(&r_code, array) ){
    case TRUEA:
        break;
    case FALSEA:
        if (r_code.er_1 == TRUEA)
            printf("exv1 : check1 error.\n");
        if (r_code.er_2 == TRUEA)
            printf("exv2 : check1 error.\n");
        if (r_code.er_3 == TRUEA)
            printf("pcnv : check1 error.\n");
        exit(0);
        break;
    }
    cp2(array);

    switch( check2(&r_code, array) ){
    case TRUEA:
        break;
    case FALSEA:
        if (r_code.er_1 == TRUEA)
            printf("exv1 : check2 error.\n");
        if (r_code.er_2 == TRUEA)
            printf("exv2 : check2 error.\n");
        if (r_code.er_3 == TRUEA)
            printf("pcnv : check2 error.\n");
        exit(0);
        break;
    }
    printf("SCQIH06 PASS.\n");
}


void cp1(int *apt)
{
    extern int  *exv1, *exv2, *pcnv;
    int i;

    for ( i = 0; i < A_SIZE; ++i)
        *(exv1+i) = *(exv2+i) = *(pcnv+i) = *(apt+i);
}

void cp2(int *apt)
{
    extern int  *exv1, *exv2, *pcnv;
    int i;

    for ( i = 0; i < A_SIZE; ++i){
        *(apt+i) = *(exv1+i);
        *(apt+i) = *(exv2+i);
        *(apt+i) = *(pcnv+i);
    }
}

BOOL check1(struct R_CODE *rcdpt, int *apt)
{
    extern int  *exv1, *exv2, *pcnv;
    int         i;
    BOOL     e_flag = TRUEA;

    rcdpt->er_1 = rcdpt->er_2 = rcdpt->er_3 = FALSEA;

    for (i = 0; i < A_SIZE; ++i){
        if ( (*apt+i) != *(exv1+i) ){
            e_flag = FALSEA;
            rcdpt->er_1 = TRUEA;
        }
        if ( (*apt+i) != *(exv2+i) ){
            e_flag = FALSEA;
            rcdpt->er_2 = TRUEA;
        }
        if ( (*apt+i) != *(pcnv+i) ){
            e_flag = FALSEA;
            rcdpt->er_3 = TRUEA;
        }
    }
    return (e_flag);
}

BOOL check2(struct R_CODE *rcdpt, int *apt)
{
    extern int  *exv1, *exv2, *pcnv;
    int         i;
    BOOL     e_flag = TRUEA;

    rcdpt->er_1 = rcdpt->er_2 = rcdpt->er_3 = FALSEA;

    for (i = 0; i < A_SIZE; ++i){
        if ( (*apt+i) != *(exv1+i) ){
            e_flag = FALSEA;
            rcdpt->er_1 = TRUEA;
        }
        if ( (*apt+i) != *(exv2+i) ){
            e_flag = FALSEA;
            rcdpt->er_2 = TRUEA;
        }
        if ( (*apt+i) != *(pcnv+i) ){
            e_flag = FALSEA;
            rcdpt->er_3 = TRUEA;
        }
    }
    return (e_flag);
}

#define TRUEB 1
#define FALSEB 0

#define FUNC_N 9

typedef int BOOLL;

int x_func0(), x_func1(), x_func2(),
    x_func3(), x_func4(), x_func5(),
    x_func6(), x_func7(), x_func8() ;

int 
scqih07 (void)
{
    int i, j, k, l, m, n;
    BOOLL flag;
    static int (*ftbl[])() = {x_func0, x_func1, x_func2,
                              x_func3, x_func4, x_func5,
                              x_func6, x_func7, x_func8};

    flag = TRUEB;
    for (i = 0; i < FUNC_N; ++i){
        j = i;
        k = i;
        l = i;
        m = i;
        n = i;
        if((*ftbl[i])() != i){
            printf("SCQIH07-%d NG.\n", i);
            flag = FALSEB;
        }
    }
    if (flag == TRUEB)
        printf("SCQIH07 PASS.\n");
    else
        printf("SCQIH07 NG.\n");
}

int 
x_func0 (void)
{
    return (0);
}

int 
x_func1 (void)
{
    return (1);
}

int 
x_func2 (void)
{
    return (2);
}

int 
x_func3 (void)
{
    return (3);
}

int 
x_func4 (void)
{
    return (4);
}

int 
x_func5 (void)
{
    return (5);
}

int 
x_func6 (void)
{
    return (6);
}

int 
x_func7 (void)
{
    return (7);
}

int 
x_func8 (void)
{
    return (8);
}
#define TRUEC     1
#define FALSEC    0

typedef int BOOLC;

#define WLONG_INT TRUEC

int 
scqih08 (void)
{
    BOOLC flag;
    int i;
#if WLONG_INT
    long long int lli;
#endif
    long int      li;
    short int     si;
    signed char   c;
#if WLONG_INT
    unsigned long long int ulli;
#endif
    unsigned  long int     uli;
    unsigned  short int    usi;
    unsigned  char         uc;

    flag = TRUEC;
#if WLONG_INT
    lli = 1;
    lli = lli << 1;
#endif

    li = 1;
    li = li << 1;

    si = 1;
    si = si << 1;

    c = 1;
    c = c << 1;

#if WLONG_INT
    ulli = 1;
    ulli = ulli << 1;
#endif

    uli = 1;
    uli = uli << 1;

    usi = 1;
    usi = usi << 1;

    uc = 1;
    uc = uc << 1;

#if WLONG_INT
    if (lli  != 2){
        printf("lli  shift error. :%d\n", lli );
        flag = FALSEC;
    }
#endif
    if (li   != 2){
        printf("li   shift error. :%d\n", li );
        flag = FALSEC;
    }
    if (si   != 2){
        printf("si   shift error. :%d\n", si );
        flag = FALSEC;
    }
    if (c    != 2){
        printf("c    shift error. :%d\n", c  );
        flag = FALSEC;
    }
#if WLONG_INT
    if (ulli != 2){
        printf("ulli shift error. :%d\n", ulli);
        flag = FALSEC;
    }
#endif
    if (uli  != 2){
        printf("uli  shift error. :%d\n", uli );
        flag = FALSEC;
    }
    if (usi  != 2){
        printf("usi  shift error. :%d\n", usi );
        flag = FALSEC;
    }
    if (uc   != 2){
        printf("uc   shift error. :%d\n", uc );
        flag = FALSEC;
    }
    if (flag != TRUEC)
        printf("SCQIH08 NG.\n");
    else
        printf("SCQIH08 PASS.\n");
}
#define TRUED     1
#define FALSED    0

#define ASFT2    TRUED

#define I8_CON 4611686018427387904LL
#define I4_CON 1073741824
#define I2_CON 16384
#define I1_CON 64
#define U8_CON 9223372036854775808LL
#define U4_CON 2147483648
#define U2_CON 32768
#define U1_CON 128

typedef int BOOLD;

BOOLD shftchk1(), shftchk2(), shftchk3(), shftchk4(),
     shftchk5(), shftchk6(), shftchk7(), shftchk8();

int 
scqih09 (void)
{
    int flag;

    flag = TRUED;

    if (shftchk1() != TRUED){
        printf("SCQIH09 #1 NG.\n\n");
        flag = FALSED;
    }
    if (shftchk2() != TRUED){
        printf("SCQIH09 #2 NG.\n\n");
        flag = FALSED;
    }
    if (shftchk3() != TRUED){
        printf("SCQIH09 #3 NG.\n\n");
        flag = FALSED;
    }
    if (shftchk4() != TRUED){
        printf("SCQIH09 #4 NG.\n\n");
        flag = FALSED;
    }
    if (shftchk5() != TRUED){
        printf("SCQIH09 #5 NG.\n\n");
        flag = FALSED;
    }
    if (shftchk6() != TRUED){
        printf("SCQIH09 #6 NG.\n\n");
        flag = FALSED;
    }
    if (shftchk7() != TRUED){
        printf("SCQIH09 #7 NG.\n\n");
        flag = FALSED;
    }
    if (shftchk8() != TRUED){
        printf("SCQIH09 #8 NG.\n\n");
        flag = FALSED;
    }

    if (flag == TRUED)
        printf("SCQIH09 PASS.\n");
    else
        printf("SCQIH09 NG.\n");
}


BOOLD 
shftchk1 (void)
{
    BOOLD flag;
    long int shli;
    int i;

    long long int lli;
    long int      li;
    short int     si;
    signed char   c;
    unsigned long long int ulli;
    unsigned long int      uli;
    unsigned short int     usi;
    unsigned char          uc;

    flag = TRUED;
#if ASFT2
    lli = 1;
    shli = sizeof(lli) * 8 - 2;
    lli = lli << shli;
#endif

    li = 1;
    shli = sizeof(li) * 8 - 2;
    li = li << shli;

    si = 1;
    shli = sizeof(si) * 8 - 2;
    si = si << shli;

    c = 1;
    shli = sizeof(c) * 8 - 2;
    c = c << shli;

#if ASFT2
    ulli = 1;
    shli = sizeof(ulli) * 8 - 1;
    ulli = ulli << shli;
#endif

    uli = 1;
    shli = sizeof(uli) * 8 - 1;
    uli = uli << shli;

    usi = 1;
    shli = sizeof(usi) * 8 - 1;
    usi = usi << shli;

    uc = 1;
    shli = sizeof(uc) * 8 - 1;
    uc = uc << shli;

#if ASFT2
    if (lli  != I8_CON){
        printf("lli  shli error. :%d\n", lli );
        flag = FALSED;
    }
#endif
#if INT64 || LONG64 || __x86_64__ || __aarch64__
    if (li   != I8_CON){
#else
    if (li   != I4_CON){
#endif
        printf("li   shli error. :%d\n", li );
        flag = FALSED;
    }
    if (si   != I2_CON){
        printf("si   shli error. :%d\n", si );
        flag = FALSED;
    }
    if (c    != I1_CON){
        printf("c    shli error. :%d\n", c  );
        flag = FALSED;
    }
#if ASFT2
    if (ulli != U8_CON){
        printf("ulli shli error. :%d\n", ulli);
        flag = FALSED;
    }
#endif
#if INT64 || LONG64 || __x86_64__ || __aarch64__
    if (uli  != U8_CON){
#else
    if (uli  != U4_CON){
#endif
        printf("uli  shli error. :%d\n", uli );
        flag = FALSED;
    }
    if (usi  != U2_CON){
        printf("usi  shli error. :%d\n", usi );
        flag = FALSED;
    }
    if (uc   != U1_CON){
        printf("uc   shli error. :%d\n", uc );
        flag = FALSED;
    }
    return (flag);
}


BOOLD shftchk2()
{
    BOOLD flag;
    short int shsi;
    int i;

    long long int lli;
    long int      li;
    short int     si;
    signed char   c;
    unsigned long long int ulli;
    unsigned long int      uli;
    unsigned short int     usi;
    unsigned char          uc;

    flag = TRUED;
#if ASFT2
    lli = 1;
    shsi = sizeof(lli) * 8 - 2;
    lli = lli << shsi;
#endif

    li = 1;
    shsi = sizeof(li) * 8 - 2;
    li = li << shsi;

    si = 1;
    shsi = sizeof(si) * 8 - 2;
    si = si << shsi;

    c = 1;
    shsi = sizeof(c) * 8 - 2;
    c = c << shsi;

#if ASFT2
    ulli = 1;
    shsi = sizeof(ulli) * 8 - 1;
    ulli = ulli << shsi;
#endif

    uli = 1;
    shsi = sizeof(uli) * 8 - 1;
    uli = uli << shsi;

    usi = 1;
    shsi = sizeof(usi) * 8 - 1;
    usi = usi << shsi;

    uc = 1;
    shsi = sizeof(uc) * 8 - 1;
    uc = uc << shsi;

#if ASFT2
    if (lli  != I8_CON){
        printf("lli  shsi error. :%d\n", lli );
        flag = FALSED;
    }
#endif
#if INT64 || LONG64 || __x86_64__ || __aarch64__
    if (li   != I8_CON){
#else
    if (li   != I4_CON){
#endif
        printf("li   shsi error. :%d\n", li );
        flag = FALSED;
    }
    if (si   != I2_CON){
        printf("si   shsi error. :%d\n", si );
        flag = FALSED;
    }
    if (c    != I1_CON){
        printf("c    shsi error. :%d\n", c  );
        flag = FALSED;
    }
#if ASFT2
    if (ulli != U8_CON){
        printf("ulli shsi error. :%d\n", ulli);
        flag = FALSED;
    }
#endif
#if INT64|| LONG64 || __x86_64__ || __aarch64__
    if (uli  != U8_CON){
#else
    if (uli  != U4_CON){
#endif
        printf("uli  shsi error. :%d\n", uli );
        flag = FALSED;
    }
    if (usi  != U2_CON){
        printf("usi  shsi error. :%d\n", usi );
        flag = FALSED;
    }
    if (uc   != U1_CON){
        printf("uc   shsi error. :%d\n", uc );
        flag = FALSED;
    }
    return (flag);
}


BOOLD shftchk3()
{
    BOOLD flag;
    signed char shc;
    int i;

    long long int lli;
    long int      li;
    short int     si;
    signed char   c;
    unsigned long long int ulli;
    unsigned long int      uli;
    unsigned short int     usi;
    unsigned char          uc;

    flag = TRUED;
#if ASFT2
    lli = 1;
    shc = sizeof(lli) * 8 - 2;
    lli = lli << shc;
#endif

    li = 1;
    shc = sizeof(li) * 8 - 2;
    li = li << shc;

    si = 1;
    shc = sizeof(si) * 8 - 2;
    si = si << shc;

    c = 1;
    shc = sizeof(c) * 8 - 2;
    c = c << shc;

#if ASFT2
    ulli = 1;
    shc = sizeof(ulli) * 8 - 1;
    ulli = ulli << shc;
#endif

    uli = 1;
    shc = sizeof(uli) * 8 - 1;
    uli = uli << shc;

    usi = 1;
    shc = sizeof(usi) * 8 - 1;
    usi = usi << shc;

    uc = 1;
    shc = sizeof(uc) * 8 - 1;
    uc = uc << shc;

#if ASFT2
    if (lli  != I8_CON){
        printf("lli  shc error. :%d\n", lli );
        flag = FALSED;
    }
#endif
#if INT64||LONG64 || __x86_64__ || __aarch64__
    if (li   != I8_CON){
#else
    if (li   != I4_CON){
#endif
        printf("li   shc error. :%d\n", li );
        flag = FALSED;
    }
    if (si   != I2_CON){
        printf("si   shc error. :%d\n", si );
        flag = FALSED;
    }
    if (c    != I1_CON){
        printf("c    shc error. :%d\n", c  );
        flag = FALSED;
    }
#if ASFT2
    if (ulli != U8_CON){
        printf("ulli shc error. :%d\n", ulli);
        flag = FALSED;
    }
#endif
#if INT64||LONG64 || __x86_64__ || __aarch64__
    if (uli  != U8_CON){
#else
    if (uli  != U4_CON){
#endif
        printf("uli  shc error. :%d\n", uli );
        flag = FALSED;
    }
    if (usi  != U2_CON){
        printf("usi  shc error. :%d\n", usi );
        flag = FALSED;
    }
    if (uc   != U1_CON){
        printf("uc   shc error. :%d\n", uc );
        flag = FALSED;
    }
    return (flag);
}


BOOLD shftchk4()
{
    BOOLD flag;
    long long int shlli;
    int i;

    long long int lli;
    long int      li;
    short int     si;
    signed char   c;
    unsigned long long int ulli;
    unsigned long int      uli;
    unsigned short int     usi;
    unsigned char          uc;

    flag = TRUED;
#if ASFT2
    lli = 1;
    shlli = sizeof(lli) * 8 - 2;
    lli = lli << shlli;
#endif

    li = 1;
    shlli = sizeof(li) * 8 - 2;
    li = li << shlli;

    si = 1;
    shlli = sizeof(si) * 8 - 2;
    si = si << shlli;

    c = 1;
    shlli = sizeof(c) * 8 - 2;
    c = c << shlli;

#if ASFT2
    ulli = 1;
    shlli = sizeof(ulli) * 8 - 1;
    ulli = ulli << shlli;
#endif

    uli = 1;
    shlli = sizeof(uli) * 8 - 1;
    uli = uli << shlli;

    usi = 1;
    shlli = sizeof(usi) * 8 - 1;
    usi = usi << shlli;

    uc = 1;
    shlli = sizeof(uc) * 8 - 1;
    uc = uc << shlli;

#if ASFT2
    if (lli  != I8_CON){
        printf("lli  shlli error. :%d\n", lli );
        flag = FALSED;
    }
#endif
#if INT64|| LONG64 || __x86_64__ || __aarch64__
    if (li   != I8_CON){
#else
    if (li   != I4_CON){
#endif
        printf("li   shlli error. :%d\n", li );
        flag = FALSED;
    }
    if (si   != I2_CON){
        printf("si   shlli error. :%d\n", si );
        flag = FALSED;
    }
    if (c    != I1_CON){
        printf("c    shlli error. :%d\n", c  );
        flag = FALSED;
    }
#if ASFT2
    if (ulli != U8_CON){
        printf("ulli shlli error. :%d\n", ulli);
        flag = FALSED;
    }
#endif
#if INT64||LONG64 || __x86_64__ || __aarch64__
    if (uli  != U8_CON){
#else
    if (uli  != U4_CON){
#endif
        printf("uli  shlli error. :%d\n", uli );
        flag = FALSED;
    }
    if (usi  != U2_CON){
        printf("usi  shlli error. :%d\n", usi );
        flag = FALSED;
    }
    if (uc   != U1_CON){
        printf("uc   shlli error. :%d\n", uc );
        flag = FALSED;
    }
    return (flag);
}


BOOLD shftchk5()
{
    BOOLD flag;
    signed char shlli;
    unsigned long int shuli;
    int i;

    long long int lli;
    long int      li;
    short int     si;
    signed char          c;
    unsigned long long int ulli;
    unsigned long int      uli;
    unsigned short int     usi;
    unsigned char          uc;

    flag = TRUED;
#if ASFT2
    lli = 1;
    shuli = sizeof(lli) * 8 - 2;
    lli = lli << shuli;
#endif

    li = 1;
    shuli = sizeof(li) * 8 - 2;
    li = li << shuli;

    si = 1;
    shuli = sizeof(si) * 8 - 2;
    si = si << shuli;

    c = 1;
    shuli = sizeof(c) * 8 - 2;
    c = c << shuli;

#if ASFT2
    ulli = 1;
    shuli = sizeof(ulli) * 8 - 1;
    ulli = ulli << shuli;
#endif

    uli = 1;
    shuli = sizeof(uli) * 8 - 1;
    uli = uli << shuli;

    usi = 1;
    shuli = sizeof(usi) * 8 - 1;
    usi = usi << shuli;

    uc = 1;
    shuli = sizeof(uc) * 8 - 1;
    uc = uc << shuli;

#if ASFT2
    if (lli  != I8_CON){
        printf("lli  shuli error. :%d\n", lli );
        flag = FALSED;
    }
#endif
#if INT64||LONG64 || __x86_64__ || __aarch64__
    if (li   != I8_CON){
#else
    if (li   != I4_CON){
#endif
        printf("li   shuli error. :%d\n", li );
        flag = FALSED;
    }
    if (si   != I2_CON){
        printf("si   shuli error. :%d\n", si );
        flag = FALSED;
    }
    if (c    != I1_CON){
        printf("c    shuli error. :%d\n", c  );
        flag = FALSED;
    }
#if ASFT2
    if (ulli != U8_CON){
        printf("ulli shuli error. :%d\n", ulli);
        flag = FALSED;
    }
#endif
#if INT64||LONG64 || __x86_64__ || __aarch64__
    if (uli  != U8_CON){
#else
    if (uli  != U4_CON){
#endif
        printf("uli  shuli error. :%d\n", uli );
        flag = FALSED;
    }
    if (usi  != U2_CON){
        printf("usi  shuli error. :%d\n", usi );
        flag = FALSED;
    }
    if (uc   != U1_CON){
        printf("uc   shuli error. :%d\n", uc );
        flag = FALSED;
    }
    return (flag);
}


BOOLD shftchk6()
{
    BOOLD flag;
    unsigned short int shusi;
    int i;

    long long int lli;
    long int      li;
    short int     si;
    signed char   c;
    unsigned long long int ulli;
    unsigned long int      uli;
    unsigned short int     usi;
    unsigned char          uc;

    flag = TRUED;
#if ASFT2
    lli = 1;
    shusi = sizeof(lli) * 8 - 2;
    lli = lli << shusi;
#endif

    li = 1;
    shusi = sizeof(li) * 8 - 2;
    li = li << shusi;

    si = 1;
    shusi = sizeof(si) * 8 - 2;
    si = si << shusi;

    c = 1;
    shusi = sizeof(c) * 8 - 2;
    c = c << shusi;

#if ASFT2
    ulli = 1;
    shusi = sizeof(ulli) * 8 - 1;
    ulli = ulli << shusi;
#endif

    uli = 1;
    shusi = sizeof(uli) * 8 - 1;
    uli = uli << shusi;

    usi = 1;
    shusi = sizeof(usi) * 8 - 1;
    usi = usi << shusi;

    uc = 1;
    shusi = sizeof(uc) * 8 - 1;
    uc = uc << shusi;

#if ASFT2
    if (lli  != I8_CON){
        printf("lli  shusi error. :%d\n", lli );
        flag = FALSED;
    }
#endif
#if INT64||LONG64 || __x86_64__ || __aarch64__
    if (li   != I8_CON){
#else
    if (li   != I4_CON){
#endif
        printf("li   shusi error. :%d\n", li );
        flag = FALSED;
    }
    if (si   != I2_CON){
        printf("si   shusi error. :%d\n", si );
        flag = FALSED;
    }
    if (c    != I1_CON){
        printf("c    shusi error. :%d\n", c  );
        flag = FALSED;
    }
#if ASFT2
    if (ulli != U8_CON){
        printf("ulli shusi error. :%d\n", ulli);
        flag = FALSED;
    }
#endif
#if INT64||LONG64 || __x86_64__ || __aarch64__
    if (uli  != U8_CON){
#else
    if (uli  != U4_CON){
#endif
        printf("uli  shusi error. :%d\n", uli );
        flag = FALSED;
    }
    if (usi  != U2_CON){
        printf("usi  shusi error. :%d\n", usi );
        flag = FALSED;
    }
    if (uc   != U1_CON){
        printf("uc   shusi error. :%d\n", uc );
        flag = FALSED;
    }
    return (flag);
}


BOOLD shftchk7()
{
    BOOLD flag;
    unsigned char shuc;
    int i;

    long long int lli;
    long int      li;
    short int     si;
    signed char   c;
    unsigned long long int ulli;
    unsigned long int      uli;
    unsigned short int     usi;
    unsigned char          uc;

    flag = TRUED;
#if ASFT2
    lli = 1;
    shuc = sizeof(lli) * 8 - 2;
    lli = lli << shuc;
#endif

    li = 1;
    shuc = sizeof(li) * 8 - 2;
    li = li << shuc;

    si = 1;
    shuc = sizeof(si) * 8 - 2;
    si = si << shuc;

    c = 1;
    shuc = sizeof(c) * 8 - 2;
    c = c << shuc;

#if ASFT2
    ulli = 1;
    shuc = sizeof(ulli) * 8 - 1;
    ulli = ulli << shuc;
#endif

    uli = 1;
    shuc = sizeof(uli) * 8 - 1;
    uli = uli << shuc;

    usi = 1;
    shuc = sizeof(usi) * 8 - 1;
    usi = usi << shuc;

    uc = 1;
    shuc = sizeof(uc) * 8 - 1;
    uc = uc << shuc;

#if ASFT2
    if (lli  != I8_CON){
        printf("lli  shuc error. :%d\n", lli );
        flag = FALSED;
    }
#endif
#if INT64||LONG64 || __x86_64__ || __aarch64__
    if (li   != I8_CON){
#else
    if (li   != I4_CON){
#endif
        printf("li   shuc error. :%d\n", li );
        flag = FALSED;
    }
    if (si   != I2_CON){
        printf("si   shuc error. :%d\n", si );
        flag = FALSED;
    }
    if (c    != I1_CON){
        printf("c    shuc error. :%d\n", c  );
        flag = FALSED;
    }
#if ASFT2
    if (ulli != U8_CON){
        printf("ulli shuc error. :%d\n", ulli);
        flag = FALSED;
    }
#endif
#if INT64||LONG64 || __x86_64__ || __aarch64__
    if (uli  != U8_CON){
#else
    if (uli  != U4_CON){
#endif
        printf("uli  shuc error. :%d\n", uli );
        flag = FALSED;
    }
    if (usi  != U2_CON){
        printf("usi  shuc error. :%d\n", usi );
        flag = FALSED;
    }
    if (uc   != U1_CON){
        printf("uc   shuc error. :%d\n", uc );
        flag = FALSED;
    }
    return (flag);
}


BOOLD shftchk8()
{
    BOOLD flag;
    unsigned long long int shulli;
    int i;

    long long int lli;
    long int      li;
    short int     si;
    signed char   c;
    unsigned long long int ulli;
    unsigned long int      uli;
    unsigned short int     usi;
    unsigned char          uc;

    flag = TRUED;
#if ASFT2
    lli = 1;
    shulli = sizeof(lli) * 8 - 2;
    lli = lli << shulli;
#endif

    li = 1;
    shulli = sizeof(li) * 8 - 2;
    li = li << shulli;

    si = 1;
    shulli = sizeof(si) * 8 - 2;
    si = si << shulli;

    c = 1;
    shulli = sizeof(c) * 8 - 2;
    c = c << shulli;

#if ASFT2
    ulli = 1;
    shulli = sizeof(ulli) * 8 - 1;
    ulli = ulli << shulli;
#endif

    uli = 1;
    shulli = sizeof(uli) * 8 - 1;
    uli = uli << shulli;

    usi = 1;
    shulli = sizeof(usi) * 8 - 1;
    usi = usi << shulli;

    uc = 1;
    shulli = sizeof(uc) * 8 - 1;
    uc = uc << shulli;

#if ASFT2
    if (lli  != I8_CON){
        printf("lli  shulli error. :%d\n", lli );
        flag = FALSED;
    }
#endif
#if INT64||LONG64 || __x86_64__ || __aarch64__
    if (li   != I8_CON){
#else
    if (li   != I4_CON){
#endif
        printf("li   shulli error. :%d\n", li );
        flag = FALSED;
    }
    if (si   != I2_CON){
        printf("si   shulli error. :%d\n", si );
        flag = FALSED;
    }
    if (c    != I1_CON){
        printf("c    shulli error. :%d\n", c  );
        flag = FALSED;
    }
#if ASFT2
    if (ulli != U8_CON){
        printf("ulli shulli error. :%d\n", ulli);
        flag = FALSED;
    }
#endif
#if INT64 || LONG64 || __x86_64__ || __aarch64__
    if (uli  != U8_CON){
#else
    if (uli  != U4_CON){
#endif
        printf("uli  shulli error. :%d\n", uli );
        flag = FALSED;
    }
    if (usi  != U2_CON){
        printf("usi  shulli error. :%d\n", usi );
        flag = FALSED;
    }
    if (uc   != U1_CON){
        printf("uc   shulli error. :%d\n", uc );
        flag = FALSED;
    }
    return (flag);
}
#define TRUEE     1
#define FALSEE    0

#define ASFTE2   TRUEE

#define I8_CON 4611686018427387904LL
#define I4_CON 1073741824
#define I2_CON 16384
#define I1_CON 64
#define U8_CON 9223372036854775808LL
#define U4_CON 2147483648
#define U2_CON 32768
#define U1_CON 128

typedef int BOOLE;

BOOLE shftchk1(), shftchk2(), shftchk3(), shftchk4(),
     shftchk5(), shftchk6(), shftchk7(), shftchk8();
 BOOLE shftch8();
 BOOLE shftch7();
 BOOLE shftch6();
 BOOLE shftch5();
 BOOLE shftch4();
 BOOLE shftch3();
 BOOLE shftch2();
 BOOLE shftch1();

 int scqih10()
{
    int flag;

    flag = TRUEE;

    if (shftch1() != TRUEE){
        printf("SCQIH10 #1 NG.\n");
        flag = FALSEE;
    }
    if (shftch2() != TRUEE){
        printf("SCQIH10 #2 NG.\n");
        flag = FALSEE;
    }
    if (shftch3() != TRUEE){
        printf("SCQIH10 #3 NG.\n");
        flag = FALSEE;
    }
    if (shftch4() != TRUEE){
        printf("SCQIH10 #4 NG.\n");
        flag = FALSEE;
    }
    if (shftch5() != TRUEE){
        printf("SCQIH10 #5 NG.\n");
        flag = FALSEE;
    }
    if (shftch6() != TRUEE){
        printf("SCQIH10 #6 NG.\n");
        flag = FALSEE;
    }
    if (shftch7() != TRUEE){
        printf("SCQIH10 #7 NG.\n");
        flag = FALSEE;
    }
    if (shftch8() != TRUEE){
        printf("SCQIH10 #8 NG.\n");
        flag = FALSEE;
    }

    if (flag == TRUEE)
        printf("SCQIH10 PASS.\n");
    else
        printf("SCQIH10 NG.\n");
}


BOOLE shftch1()
{
    BOOLE flag;
    int i;
    int bit;

    long long int lli;
    long int      li;
    short int     si;
    signed char   c;
    unsigned long long int ulli;
    unsigned  long int     uli;
    unsigned  short int    usi;
    unsigned  char         uc;

    bit = 8;
    flag = TRUEE;
#if ASFTE2
    lli = 1;
    lli = lli << (long int)(sizeof(lli) * bit - 2);
#endif

    li = 1;
    li = li << (long int)(sizeof(li) * bit - 2);

    si = 1;
    si = si << (long int)(sizeof(si) * bit - 2);

    c = 1;
    c = c << (long int)(sizeof(c) * bit - 2);

#if ASFTE2
    ulli = 1;
    ulli = ulli << (long int)(sizeof(ulli) * bit - 1);
#endif

    uli = 1;
    uli = uli << (long int)(sizeof(uli) * bit - 1);

    usi = 1;
    usi = usi << (long int)(sizeof(usi) * bit - 1);

    uc = 1;
    uc = uc << (long int)(sizeof(uc) * bit - 1);

#if ASFTE2
    if (lli  != I8_CON){
        printf("lli  shli error. :%d\n", lli );
        flag = FALSEE;
    }
#endif
#if INT64||LONG64 || __x86_64__ || __aarch64__
    if (li   != I8_CON){
#else
    if (li   != I4_CON){
#endif
        printf("li   shli error. :%d\n", li );
        flag = FALSEE;
    }
    if (si   != I2_CON){
        printf("si   shli error. :%d\n", si );
        flag = FALSEE;
    }
    if (c    != I1_CON){
        printf("c    shli error. :%d\n", c  );
        flag = FALSEE;
    }
#if ASFTE2
    if (ulli != U8_CON){
        printf("ulli shli error. :%d\n", ulli);
        flag = FALSEE;
    }
#endif
#if INT64||LONG64 || __x86_64__ || __aarch64__
    if (uli  != U8_CON){
#else
    if (uli  != U4_CON){
#endif
        printf("uli  shli error. :%d\n", uli );
        flag = FALSEE;
    }
    if (usi  != U2_CON){
        printf("usi  shli error. :%d\n", usi );
        flag = FALSEE;
    }
    if (uc   != U1_CON){
        printf("uc   shli error. :%d\n", uc );
        flag = FALSEE;
    }
    return (flag);
}


BOOLE shftch2()
{
    BOOLE flag;
    short int shsi;
    int i;
    int bit;

    long long int lli;
    long int      li;
    short int     si;
    signed char   c;
    unsigned long long int ulli;
    unsigned  long int     uli;
    unsigned  short int    usi;
    unsigned  char         uc;

    bit = 8;
    flag = TRUEE;
#if ASFTE2
    lli = 1;
    lli = lli << (short int)(sizeof(lli) * bit - 2);
#endif

    li = 1;
    li = li << (short int)(sizeof(li) * bit - 2);

    si = 1;
    si = si << (short int)(sizeof(si) * bit - 2);

    c = 1;
    c = c << (short int)(sizeof(c) * bit - 2);

#if ASFTE2
    ulli = 1;
    ulli = ulli << (short int)(sizeof(ulli) * bit - 1);
#endif

    uli = 1;
    uli = uli << (short int)(sizeof(uli) * bit - 1);

    usi = 1;
    usi = usi << (short int)(sizeof(usi) * bit - 1);

    uc = 1;
    uc = uc << (short int)(sizeof(uc) * bit - 1);

#if ASFTE2
    if (lli  != I8_CON){
        printf("lli  shsi error. :%d\n", lli );
        flag = FALSEE;
    }
#endif
#if INT64||LONG64 || __x86_64__ || __aarch64__
    if (li   != I8_CON){
#else
    if (li   != I4_CON){
#endif
        printf("li   shsi error. :%d\n", li );
        flag = FALSEE;
    }
    if (si   != I2_CON){
        printf("si   shsi error. :%d\n", si );
        flag = FALSEE;
    }
    if (c    != I1_CON){
        printf("c    shsi error. :%d\n", c  );
        flag = FALSEE;
    }
#if ASFTE2
    if (ulli != U8_CON){
        printf("ulli shsi error. :%d\n", ulli);
        flag = FALSEE;
    }
#endif
#if INT64||LONG64 || __x86_64__ || __aarch64__
    if (uli  != U8_CON){
#else
    if (uli  != U4_CON){
#endif
        printf("uli  shsi error. :%d\n", uli );
        flag = FALSEE;
    }
    if (usi  != U2_CON){
        printf("usi  shsi error. :%d\n", usi );
        flag = FALSEE;
    }
    if (uc   != U1_CON){
        printf("uc   shsi error. :%d\n", uc );
        flag = FALSEE;
    }
    return (flag);
}


BOOLE shftch3()
{
    BOOLE flag;
    int i;
    int bit;

    long long int lli;
    long int      li;
    short int     si;
    signed char   c;
    unsigned long long int ulli;
    unsigned  long int     uli;
    unsigned  short int    usi;
    unsigned  char         uc;

    bit = 8;
    flag = TRUEE;
#if ASFTE2
    lli = 1;
    lli = lli << (signed char)(sizeof(lli) * bit - 2);
#endif

    li = 1;
    li = li << (signed char)(sizeof(li) * bit - 2);

    si = 1;
    si = si << (signed char)(sizeof(si) * bit - 2);

    c = 1;
    c = c << (signed char)(sizeof(c) * bit - 2);

#if ASFTE2
    ulli = 1;
    ulli = ulli << (signed char)(sizeof(ulli) * bit - 1);
#endif

    uli = 1;
    uli = uli << (signed char)(sizeof(uli) * bit - 1);

    usi = 1;
    usi = usi << (signed char)(sizeof(usi) * bit - 1);

    uc = 1;
    uc = uc << (signed char)(sizeof(uc) * bit - 1);

#if ASFTE2
    if (lli  != I8_CON){
        printf("lli  shc error. :%d\n", lli );
        flag = FALSEE;
    }
#endif
#if INT64||LONG64 || __x86_64__ || __aarch64__
    if (li   != I8_CON){
#else
    if (li   != I4_CON){
#endif
        printf("li   shc error. :%d\n", li );
        flag = FALSEE;
    }
    if (si   != I2_CON){
        printf("si   shc error. :%d\n", si );
        flag = FALSEE;
    }
    if (c    != I1_CON){
        printf("c    shc error. :%d\n", c  );
        flag = FALSEE;
    }
#if ASFTE2
    if (ulli != U8_CON){
        printf("ulli shc error. :%d\n", ulli);
        flag = FALSEE;
    }
#endif
#if INT64||LONG64 || __x86_64__ || __aarch64__
    if (uli  != U8_CON){
#else
    if (uli  != U4_CON){
#endif
        printf("uli  shc error. :%d\n", uli );
        flag = FALSEE;
    }
    if (usi  != U2_CON){
        printf("usi  shc error. :%d\n", usi );
        flag = FALSEE;
    }
    if (uc   != U1_CON){
        printf("uc   shc error. :%d\n", uc );
        flag = FALSEE;
    }
    return (flag);
}


BOOLE shftch4()
{
    BOOLE flag;
    int i;
    int bit;

    long long int lli;
    long int      li;
    short int     si;
    signed char   c;
    unsigned long long int ulli;
    unsigned  long int     uli;
    unsigned  short int    usi;
    unsigned  char         uc;

    bit = 8;
    flag = TRUEE;
#if ASFTE2
    lli = 1;
    lli = lli << (long long int)(sizeof(lli) * bit - 2);
#endif

    li = 1;
    li = li << (long long int)(sizeof(li) * bit - 2);

    si = 1;
    si = si << (long long int)(sizeof(si) * bit - 2);

    c = 1;
    c = c << (long long int)(sizeof(c) * bit - 2);

#if ASFTE2
    ulli = 1;
    ulli = ulli << (long long int)(sizeof(ulli) * bit - 1);
#endif

    uli = 1;
    uli = uli << (long long int)(sizeof(uli) * bit - 1);

    usi = 1;
    usi = usi << (long long int)(sizeof(usi) * bit - 1);

    uc = 1;
    uc = uc << (long long int)(sizeof(uc) * bit - 1);

#if ASFTE2
    if (lli  != I8_CON){
        printf("lli  shlli error. :%d\n", lli );
        flag = FALSEE;
    }
#endif
#if INT64||LONG64 || __x86_64__ || __aarch64__
    if (li   != I8_CON){
#else
    if (li   != I4_CON){
#endif
        printf("li   shlli error. :%d\n", li );
        flag = FALSEE;
    }
    if (si   != I2_CON){
        printf("si   shlli error. :%d\n", si );
        flag = FALSEE;
    }
    if (c    != I1_CON){
        printf("c    shlli error. :%d\n", c  );
        flag = FALSEE;
    }
#if ASFTE2
    if (ulli != U8_CON){
        printf("ulli shlli error. :%d\n", ulli);
        flag = FALSEE;
    }
#endif
#if INT64||LONG64 || __x86_64__ || __aarch64__
    if (uli  != U8_CON){
#else
    if (uli  != U4_CON){
#endif
        printf("uli  shlli error. :%d\n", uli );
        flag = FALSEE;
    }
    if (usi  != U2_CON){
        printf("usi  shlli error. :%d\n", usi );
        flag = FALSEE;
    }
    if (uc   != U1_CON){
        printf("uc   shlli error. :%d\n", uc );
        flag = FALSEE;
    }
    return (flag);
}


BOOLE shftch5()
{
    BOOLE flag;
    int i;
    int bit;

    long long int lli;
    long int      li;
    short int     si;
    signed char   c;
    unsigned long long int ulli;
    unsigned  long int     uli;
    unsigned  short int    usi;
    unsigned  char         uc;

    bit = 8;
    flag = TRUEE;
#if ASFTE2
    lli = 1;
    lli = lli << (unsigned long int)(sizeof(lli) * bit - 2);
#endif

    li = 1;
    li = li << (unsigned long int)(sizeof(li) * bit - 2);

    si = 1;
    si = si << (unsigned long int)(sizeof(si) * bit - 2);

    c = 1;
    c = c << (unsigned long int)(sizeof(c) * bit - 2);

#if ASFTE2
    ulli = 1;
    ulli = ulli << (unsigned long int)(sizeof(ulli) * bit - 1);
#endif

    uli = 1;
    uli = uli << (unsigned long int)(sizeof(uli) * bit - 1);

    usi = 1;
    usi = usi << (unsigned long int)(sizeof(usi) * bit - 1);

    uc = 1;
    uc = uc << (unsigned long int)(sizeof(uc) * bit - 1);

#if ASFTE2
    if (lli  != I8_CON){
        printf("lli  shuli error. :%d\n", lli );
        flag = FALSEE;
    }
#endif
#if INT64||LONG64 || __x86_64__ || __aarch64__
    if (li   != I8_CON){
#else
    if (li   != I4_CON){
#endif
        printf("li   shuli error. :%d\n", li );
        flag = FALSEE;
    }
    if (si   != I2_CON){
        printf("si   shuli error. :%d\n", si );
        flag = FALSEE;
    }
    if (c    != I1_CON){
        printf("c    shuli error. :%d\n", c  );
        flag = FALSEE;
    }
#if ASFTE2
    if (ulli != U8_CON){
        printf("ulli shuli error. :%d\n", ulli);
        flag = FALSEE;
    }
#endif
#if INT64||LONG64 || __x86_64__ || __aarch64__
    if (uli  != U8_CON){
#else
    if (uli  != U4_CON){
#endif
        printf("uli  shuli error. :%d\n", uli );
        flag = FALSEE;
    }
    if (usi  != U2_CON){
        printf("usi  shuli error. :%d\n", usi );
        flag = FALSEE;
    }
    if (uc   != U1_CON){
        printf("uc   shuli error. :%d\n", uc );
        flag = FALSEE;
    }
    return (flag);
}


BOOLE shftch6()
{
    BOOLE flag;
    int i;
    int bit;

    long long int lli;
    long int      li;
    short int     si;
    signed char   c;
    unsigned long long int ulli;
    unsigned  long int     uli;
    unsigned  short int    usi;
    unsigned  char         uc;

    bit = 8;
    flag = TRUEE;
#if ASFTE2
    lli = 1;
    lli = lli << (unsigned short int)(sizeof(lli) * bit - 2);
#endif

    li = 1;
    li = li << (unsigned short int)(sizeof(li) * bit - 2);

    si = 1;
    si = si << (unsigned short int)(sizeof(si) * bit - 2);

    c = 1;
    c = c << (unsigned short int)(sizeof(c) * bit - 2);

#if ASFTE2
    ulli = 1;
    ulli = ulli << (unsigned short int)(sizeof(ulli) * bit - 1);
#endif

    uli = 1;
    uli = uli << (unsigned short int)(sizeof(uli) * bit - 1);

    usi = 1;
    usi = usi << (unsigned short int)(sizeof(usi) * bit - 1);

    uc = 1;
    uc = uc << (unsigned short int)(sizeof(uc) * bit - 1);

#if ASFTE2
    if (lli  != I8_CON){
        printf("lli  shusi error. :%d\n", lli );
        flag = FALSEE;
    }
#endif
#if INT64||LONG64 || __x86_64__ || __aarch64__
    if (li   != I8_CON){
#else
    if (li   != I4_CON){
#endif
        printf("li   shusi error. :%d\n", li );
        flag = FALSEE;
    }
    if (si   != I2_CON){
        printf("si   shusi error. :%d\n", si );
        flag = FALSEE;
    }
    if (c    != I1_CON){
        printf("c    shusi error. :%d\n", c  );
        flag = FALSEE;
    }
#if ASFTE2
    if (ulli != U8_CON){
        printf("ulli shusi error. :%d\n", ulli);
        flag = FALSEE;
    }
#endif
#if INT64||LONG64 || __x86_64__ || __aarch64__
    if (uli  != U8_CON){
#else
    if (uli  != U4_CON){
#endif
        printf("uli  shusi error. :%d\n", uli );
        flag = FALSEE;
    }
    if (usi  != U2_CON){
        printf("usi  shusi error. :%d\n", usi );
        flag = FALSEE;
    }
    if (uc   != U1_CON){
        printf("uc   shusi error. :%d\n", uc );
        flag = FALSEE;
    }
    return (flag);
}


BOOLE shftch7()
{
    BOOLE flag;
    int i;
    int bit;

    long long int lli;
    long int      li;
    short int     si;
    signed char   c;
    unsigned long long int ulli;
    unsigned  long int     uli;
    unsigned  short int    usi;
    unsigned  char         uc;

    bit = 8;
    flag = TRUEE;
#if ASFTE2
    lli = 1;
    lli = lli << (unsigned char)(sizeof(lli) * bit - 2);
#endif

    li = 1;
    li = li << (unsigned char)(sizeof(li) * bit - 2);

    si = 1;
    si = si << (unsigned char)(sizeof(si) * bit - 2);

    c = 1;
    c = c << (unsigned char)(sizeof(c) * bit - 2);

#if ASFTE2
    ulli = 1;
    ulli = ulli << (unsigned char)(sizeof(ulli) * bit - 1);
#endif

    uli = 1;
    uli = uli << (unsigned char)(sizeof(uli) * bit - 1);

    usi = 1;
    usi = usi << (unsigned char)(sizeof(usi) * bit - 1);

    uc = 1;
    uc = uc << (unsigned char)(sizeof(uc) * bit - 1);

#if ASFTE2
    if (lli  != I8_CON){
        printf("lli  shuc error. :%d\n", lli );
        flag = FALSEE;
    }
#endif
#if INT64||LONG64 || __x86_64__ || __aarch64__
    if (li   != I8_CON){
#else
    if (li   != I4_CON){
#endif
        printf("li   shuc error. :%d\n", li );
        flag = FALSEE;
    }
    if (si   != I2_CON){
        printf("si   shuc error. :%d\n", si );
        flag = FALSEE;
    }
    if (c    != I1_CON){
        printf("c    shuc error. :%d\n", c  );
        flag = FALSEE;
    }
#if ASFTE2
    if (ulli != U8_CON){
        printf("ulli shuc error. :%d\n", ulli);
        flag = FALSEE;
    }
#endif
#if INT64||LONG64 || __x86_64__ || __aarch64__
    if (uli  != U8_CON){
#else
    if (uli  != U4_CON){
#endif
        printf("uli  shuc error. :%d\n", uli );
        flag = FALSEE;
    }
    if (usi  != U2_CON){
        printf("usi  shuc error. :%d\n", usi );
        flag = FALSEE;
    }
    if (uc   != U1_CON){
        printf("uc   shuc error. :%d\n", uc );
        flag = FALSEE;
    }
    return (flag);
}


BOOLE shftch8()
{
    BOOLE flag;
    int i;
    int bit;

    long long int lli;
    long int      li;
    short int     si;
    signed char   c;
    unsigned long long int ulli;
    unsigned  long int     uli;
    unsigned  short int    usi;
    unsigned  char         uc;

    bit = 8;
    flag = TRUEE;
#if ASFTE2
    lli = 1;
    lli = lli << (unsigned long long int)(sizeof(lli) * bit - 2);
#endif

    li = 1;
    li = li << (unsigned long long int)(sizeof(li) * bit - 2);

    si = 1;
    si = si << (unsigned long long int)(sizeof(si) * bit - 2);

    c = 1;
    c = c << (unsigned long long int)(sizeof(c) * bit - 2);

#if ASFTE2
    ulli = 1;
    ulli = ulli << (unsigned long long int)(sizeof(ulli) * bit - 1);
#endif

    uli = 1;
    uli = uli << (unsigned long long int)(sizeof(uli) * bit - 1);

    usi = 1;
    usi = usi << (unsigned long long int)(sizeof(usi) * bit - 1);

    uc = 1;
    uc = uc << (unsigned long long int)(sizeof(uc) * bit - 1);

#if ASFTE2
    if (lli  != I8_CON){
        printf("lli  shulli error. :%d\n", lli );
        flag = FALSEE;
    }
#endif
#if INT64||LONG64 || __x86_64__ || __aarch64__
    if (li   != I8_CON){
#else
    if (li   != I4_CON){
#endif
        printf("li   shulli error. :%d\n", li );
        flag = FALSEE;
    }
    if (si   != I2_CON){
        printf("si   shulli error. :%d\n", si );
        flag = FALSEE;
    }
    if (c    != I1_CON){
        printf("c    shulli error. :%d\n", c  );
        flag = FALSEE;
    }
#if ASFTE2
    if (ulli != U8_CON){
        printf("ulli shulli error. :%d\n", ulli);
        flag = FALSEE;
    }
#endif
#if INT64||LONG64 || __x86_64__ || __aarch64__
    if (uli  != U8_CON){
#else
    if (uli  != U4_CON){
#endif
        printf("uli  shulli error. :%d\n", uli );
        flag = FALSEE;
    }
    if (usi  != U2_CON){
        printf("usi  shulli error. :%d\n", usi );
        flag = FALSEE;
    }
    if (uc   != U1_CON){
        printf("uc   shulli error. :%d\n", uc );
        flag = FALSEE;
    }
    return (flag);
}
