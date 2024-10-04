

#include <stdio.h>
#include <string.h>
int chk (void);
int m3ecas23 (void);
int mptest10 (void);
int mptest09 (void);
int scobe17 (void);
int scobe15 (void);
int scobe13 (void);
int scobe12 (void);

#define ml(x) ( ( ( ( ( ( ( ( ( ( ( ( ( ( ( ( ( ( x + 
#define m1(x) ( ( ( ( ( ( ( ( ( x ) ) ) ) ) ) ) ) )   
#define mr(x) + x ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) 
#define m2(x) ml(x) ml(x) m1(x) mr(x) mr(x)           
#define m3(x) m2(x) + m2(x) + m2(x) + m2(x) + m2(x)   
#define m4(x) m3(x) + m3(x)                           
int 
main (void)
{
   scobe12();   
   scobe13();   
   scobe15();   
   scobe17();   
   mptest09();  
   mptest10();  
   m3ecas23();  

}

int 
scobe12 (void)
{
   struct tag
   {
      unsigned char          b1 : 3;
      unsigned short int     b2 : 3;
      unsigned long int      b3 : 3;
   } ;

   struct tag a = { 1,1,1 };

   char          c1;
   short int     c2;
   long int      c3;

   c1 = a.b1;
   if (c1==1)
      printf ("***** OK *****\n");
   else
      printf ("***** NG *****\n");
   c1 = a.b2;
   if (c1==1)
      printf ("***** OK *****\n");
   else
      printf ("***** NG *****\n");
   c1 = a.b3;
   if (c1==1)
      printf ("***** OK *****\n");
   else
      printf ("***** NG *****\n");
   c2 = a.b1;
   if (c2==1)
      printf ("***** OK *****\n");
   else
      printf ("***** NG *****\n");
   c2 = a.b2;
   if (c2==1)
      printf ("***** OK *****\n");
   else
      printf ("***** NG *****\n");
   c2 = a.b3;
   if (c2==1)
      printf ("***** OK *****\n");
   else
      printf ("***** NG *****\n");
   c3 = a.b1;
   if (c3==1)
      printf ("***** OK *****\n");
   else
      printf ("***** NG *****\n");
   c3 = a.b2;
   if (c3==1)
      printf ("***** OK *****\n");
   else
      printf ("***** NG *****\n");
   c3 = a.b3;
   if (c3==1)
      printf ("***** OK *****\n");
   else
      printf ("***** NG *****\n");
}

int 
scobe13 (void)
{
   struct tag
   {
      signed char            b1 : 3;
      signed short int       b2 : 3;
      signed long int        b3 : 3;
      unsigned char          b4 : 3;
      unsigned short int     b5 : 3;
      unsigned long int      b6 : 3;
   } a;

   char  c1=1;


      printf ("**************\n");


   a.b1 = c1;
   if (a.b1==1)
      printf ("***** OK *****\n");
   else
      printf ("***** NG *****\n");
   a.b2 = c1;
   if (a.b2==1)
      printf ("***** OK *****\n");
   else
      printf ("***** NG *****\n");
   a.b3 = c1;
   if (a.b3==1)
      printf ("***** OK *****\n");
   else
      printf ("***** NG *****\n");
   a.b4 = c1;
   if (a.b4==1)
      printf ("***** OK *****\n");
   else
      printf ("***** NG *****\n");
   a.b5 = c1;
   if (a.b5==1)
      printf ("***** OK *****\n");
   else
      printf ("***** NG *****\n");
   a.b6 = c1;
   if (a.b6==1)
      printf ("***** OK *****\n");
   else
      printf ("***** NG *****\n");
}

int 
scobe15 (void)
{
   struct tag
   {
      signed char            b1 : 3;
      signed short int       b2 : 3;
      signed long int        b3 : 3;
      unsigned char          b4 : 3;
      unsigned short int     b5 : 3;
      unsigned long int      b6 : 3;
   } a;

   char  c1=1;


      printf ("**************\n");


   a.b1 = c1;
   if (a.b1==1)
      printf ("***** OK *****\n");
   else
      printf ("***** NG *****\n");
   a.b2 = c1;
   if (a.b2==1)
      printf ("***** OK *****\n");
   else
      printf ("***** NG *****\n");
   a.b3 = c1;
   if (a.b3==1)
      printf ("***** OK *****\n");
   else
      printf ("***** NG *****\n");
   a.b4 = c1;
   if (a.b4==1)
      printf ("***** OK *****\n");
   else
      printf ("***** NG *****\n");
   a.b5 = c1;
   if (a.b5==1)
      printf ("***** OK *****\n");
   else
      printf ("***** NG *****\n");
   a.b6 = c1;
   if (a.b6==1)
      printf ("***** OK *****\n");
   else
      printf ("***** NG *****\n");
}

int 
scobe17 (void)
{
   int a;


      printf ("**************\n");


   a = -1;
   if (a< 0)
      printf ("***** OK *****\n");
   else
      printf ("***** NG *****\n");
   a = -1;
   if (a<=0)
      printf ("***** OK *****\n");
   else
      printf ("***** NG *****\n");
   a = 0;
   if (a==0)
      printf ("***** OK *****\n");
   else
      printf ("***** NG *****\n");
   a = 1;
   if (a> 0)
      printf ("***** OK *****\n");
   else
      printf ("***** NG *****\n");
   a = 1;
   if (a>=0)
      printf ("***** OK *****\n");
   else
      printf ("***** NG *****\n");
   a = 1;
   if (a!=0)
      printf ("***** OK *****\n");
   else
      printf ("***** NG *****\n");

   a = 1;
   if (0< a)
      printf ("***** OK *****\n");
   else
      printf ("***** NG *****\n");
   a = 1;
   if (0<=a)
      printf ("***** OK *****\n");
   else
      printf ("***** NG *****\n");
   a = 0;
   if (0==a)
      printf ("***** OK *****\n");
   else
      printf ("***** NG *****\n");
   a = -1;
   if (0> a)
      printf ("***** OK *****\n");
   else
      printf ("***** NG *****\n");
   a = -1;
   if (0>=a)
      printf ("***** OK *****\n");
   else
      printf ("***** NG *****\n");
   a = -1;
   if (0!=a)
      printf ("***** OK *****\n");
   else
      printf ("***** NG *****\n");

       a = -1;
       if (a< 0)
          goto x1;
       else
          printf ("***** NG *****\n");
   c1:
       a = -1;
       if (a<=0)
          goto x2;
       else
          printf ("***** NG *****\n");
   c2:
       a = 0;
       if (a==0)
          goto x3;
       else
          printf ("***** NG *****\n");
   c3:
       a = 1;
       if (a> 0)
          goto x4;
       else
          printf ("***** NG *****\n");
   c4:
       a = 1;
       if (a>=0)
          goto x5;
       else
          printf ("***** NG *****\n");
   c5:
       a = 1;
       if (a!=0)
          goto x6;
       else
          printf ("***** NG *****\n");
   c6:
       a = 1;
       if (0< a)
          goto x7;
       else
          printf ("***** NG *****\n");
   c7:
       a = 1;
       if (0<=a)
          goto x8;
       else
          printf ("***** NG *****\n");
   c8:
       a = 0;
       if (0==a)
          goto x9;
       else
          printf ("***** NG *****\n");
   c9:
       a = -1;
       if (0> a)
          goto x10;
       else
          printf ("***** NG *****\n");
   c10:
       a = -1;
       if (0>=a)
          goto x11;
       else
          printf ("***** NG *****\n");
   c11:
       a = -1;
       if (0!=a)
          goto x12;
       else
          printf ("***** NG *****\n");
          goto end;

   x1:
       printf ("***** OK *****\n");
       goto c1;
   x2:
       printf ("***** OK *****\n");
       goto c2;
   x3:
       printf ("***** OK *****\n");
       goto c3;
   x4:
       printf ("***** OK *****\n");
       goto c4;
   x5:
       printf ("***** OK *****\n");
       goto c5;
   x6:
       printf ("***** OK *****\n");
       goto c6;
   x7:
       printf ("***** OK *****\n");
       goto c7;
   x8:
       printf ("***** OK *****\n");
       goto c8;
   x9:
       printf ("***** OK *****\n");
       goto c9;
   x10:
       printf ("***** OK *****\n");
       goto c10;
   x11:
       printf ("***** OK *****\n");
       goto c11;
   x12:
       printf ("***** OK *****\n");
   end:
       printf ("***** END *****\n");
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
     char c='A';

     for( ;i<26 ;i++){
       ssp->ss_c = c;
       c++;
       switch(c){
         case 0x8a :
           c=0xd1;
           break;
         case 0x9a :
           c=0xe2;
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

  struct mp2ss {
       int  ssd;
       char atr[4];
       struct mp2ss *nxt;
  } mp2ss0[100];

 int chk1(struct mp2ss *,int *,int);
 int chk2(struct mp2ss *,int *,int);
 int chain(struct mp2ss *);
 int ckchain(struct mp2ss *);

int 
mptest10 (void)
 {
    int data ;
    int i,mm,rtncd;
    char  str[3];

    printf("\n***** MPTEST10 START *****\n");
    for( i=0 ; i<100 ; i++){
       mp2ss0[i].ssd=i+1;
       mp2ss0[i].atr[0]='O';
       mp2ss0[i].atr[1]='N';
       mp2ss0[i].atr[2]='\0';
    }
    mp2ss0[0].atr[1]='F';
    mp2ss0[0].atr[2]='F';
    mp2ss0[0].atr[3]='\0';

    for(data=1 ; data <= 100 ; data++ ){
       for( i=2 ; i<=data ; i++){
          mm = data%i;
          if(mm==0){
             if(i!=data){
                mp2ss0[data-1].atr[1]='F';
                mp2ss0[data-1].atr[2]='F';
                mp2ss0[data-1].atr[3]='\0';
                break;
             }
          }
       }
    }

    for(i=0;i<100;i++){
       printf("(%2d) D=%3d, ATR=%3s",
                                     i,mp2ss0[i].ssd,mp2ss0[i].atr);
       (i+1)%3==0 ? printf("\n") : printf("  ");
    }
    printf("\n");

    switch(rtncd=chain(mp2ss0)){
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
    struct mp2ss *sp;
    int i,jg;

    sp=mp2ss0;
    for(i=0;i<100;i++){
       if(!strcmp(sp->atr,"ON"))
          jg=chk1(sp,rdata,sizeof(rdata)/4);
       else
          jg=chk2(sp,rdata,sizeof(rdata)/4);
       if(jg!=0)
          return(-1);
    }
    return(0);
 }

 int 
chk1 (struct mp2ss *sp, int *data, int size)
 {
    int i;

    for(i=0;i<size;i++){
       if(sp->ssd == *data++)
          return(0);
    }
    printf("     IN CHK1  NG  NUMBER=%d\n",sp->ssd);
    return(-1);
 }

 int 
chk2 (struct mp2ss *sp, int *data, int sz)
 {
    int i;

    for(i=0;i<sz;i++){
       if(sp->ssd == *data++){
          printf("   IN CHK2    NG   NUMBER=%d\n",sp->ssd);
          return(-1);
       }
    }
    return(0);
 }

 int 
chain (struct mp2ss *mp2ssp)
 {
    struct mp2ss *wssp,*bssp,*pssp;
    int i;

    for(i=0,wssp=mp2ssp ; i<100 ; i++){
      if(wssp->atr[1]=='N'){
         pssp=bssp=wssp;
         break;
      }
      wssp++;
    }

    for( ; i<100 ; i++){
      if(wssp->atr[1]=='N'){
         bssp->nxt=wssp;
         bssp=wssp;
      }
      wssp++;
    }
    return(ckchain(pssp));
 }

 int 
ckchain (struct mp2ss *mp2ssp)
 {
    int i;
    struct mp2ss *wssp;

     for(wssp=mp2ssp,i=0;i<100;i++){
       if(wssp->ssd != rdata[i]){
         return(1);
       } else {
         wssp= wssp->nxt;
#if INT64
         if(wssp==NULL && i==sizeof(rdata)/8-1) return(0);
#else
         if(wssp==NULL && i==sizeof(rdata)/4-1) return(0);
#endif
       }
     }
     return(2);
 }

int 
m3ecas23 (void)
{
  int                    a;
  char                   c   = 0x71;
  signed char            sc  = 0x81;
  unsigned char          usc = 0x71;
  short int              shi   = 1;
  signed short int       sshi  = 1;
  unsigned short int     usshi = 1;
  int                    i   = 1;
  signed int             si  = 1;
  unsigned int           usi = 1;
  long int               li   = 1;
  signed long int        sli  = 1;
  unsigned long int      usli = 1;
  int                   *p;
  enum etag { e1, e2, e3, e4 } etag;
  const int              ci = 1;
  volatile int           vi = 1;

  p = &i;
  etag = 1;
  a = 0;



  a = ( volatile int ) c;
  if ( a==0x00000071 )
    printf("TEST01 --> OK \n");
  else
    printf("TEST01 --> NG \n");
  a = 0;

  a = ( volatile int ) sc;
#if INT64
  if ( a==0xffffffffffffff81 )
#else
  if ( a==0xffffff81 )
#endif
    printf("TEST02 --> OK \n");
  else
    printf("TEST02 --> NG \n");
  a = 0;

  a = ( volatile int ) usc;
  if ( a==0x00000071 )
    printf("TEST03 --> OK \n");
  else
    printf("TEST03 --> NG \n");
  a = 0;

  a = ( volatile int ) shi;
  if ( a==1 )
    printf("TEST04 --> OK \n");
  else
    printf("TEST04 --> NG \n");
  a = 0;

  a = ( volatile int ) sshi;
  if ( a==1 )
    printf("TEST05 --> OK \n");
  else
    printf("TEST05 --> NG \n");
  a = 0;

  a = ( volatile int ) usshi;
  if ( a==1 )
    printf("TEST06 --> OK \n");
  else
    printf("TEST06 --> NG \n");
  a = 0;

  a = ( volatile int ) i;
  if ( a==1 )
    printf("TEST07 --> OK \n");
  else
    printf("TEST07 --> NG \n");
  a = 0;

  a = ( volatile int ) si;
  if ( a==1 )
    printf("TEST08 --> OK \n");
  else
    printf("TEST08 --> NG \n");
  a = 0;

  a = ( volatile int ) usi;
  if ( a==1 )
    printf("TEST09 --> OK \n");
  else
    printf("TEST09 --> NG \n");
  a = 0;

  a = ( volatile int ) li;
  if ( a==1 )
    printf("TEST10 --> OK \n");
  else
    printf("TEST10 --> NG \n");
  a = 0;

  a = ( volatile int ) sli;
  if ( a==1 )
    printf("TEST11 --> OK \n");
  else
    printf("TEST11 --> NG \n");
  a = 0;

  a = ( volatile int ) usli;
  if ( a==1 )
    printf("TEST12 --> OK \n");
  else
    printf("TEST12 --> NG \n");
  a = 0;

  a = ( volatile int ) p;
  i = ( int ) p;
  if ( a==i )
    printf("TEST13 --> OK \n");
  else
    printf("TEST13 --> NG \n");
  a = 0;

  a = ( volatile int ) etag;
  if ( a==1 )
    printf("TEST14 --> OK \n");
  else
    printf("TEST14 --> NG \n");
  a = 0;

  a = ( volatile int ) ci;
  if ( a==1 )
    printf("TEST15 --> OK \n");
  else
    printf("TEST15 --> NG \n");
  a = 0;

  a = ( volatile int ) vi;
  if ( a==1 )
    printf("TEST16 --> OK \n");
  else
    printf("TEST16 --> NG \n");
  a = 0;

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
}
