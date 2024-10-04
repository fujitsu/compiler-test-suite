#include <stdio.h>
#include <string.h>
int m1fnc (int *j);
int scood01 (void);
int m3mprd07 (void);
int m3mptr04 (void);
int scobe19 (void);
int m3ermv06 (void);
int mptest15 (void);
int scpbc01 (void);
int m3ecns01 (void);
int mptest25 (void);
int m3echg04 (void);
int scosh01 (void);
int m3ecas23 (void);

int 
main (void)
{

   printf("***  **** START ***\n");

   m3ecas23();  
   scosh01();   
   m3echg04();  
   mptest25();  
   m3ecns01();  
   scpbc01();   
   mptest15();  
   m3ermv06();  
   scobe19();   
   m3mptr04();  
   m3mprd07();  
   scood01();   

   printf("***  ****  END  ***\n");

}



int m1fnc(int *);
int m3mprd07()
   { struct mpt3 {
    int mpt3a;
    int mpt3aa[61];
   };
   struct mpt3 st,*stp;
   int a,b,c,*p;
   stp=0;
   a=b=c=0;
   p=0;
   stp=&st;
   p=&st.mpt3aa[0];
   *p=10;
   a=st.mpt3aa[0];
   p=&(stp->mpt3aa[0]);
   p+=5;
   *p=30;
   m1fnc(&c);
   b=stp->mpt3aa[c];
   st.mpt3aa[1]=40;
   stp->mpt3aa[c]=b; 
   stp->mpt3aa[c]=b*2; 
   if(a==10) b=stp->mpt3aa[c];
   else b=stp->mpt3aa[c];
   if(a==10 && b==60)
   printf("M3MPRD07 OK\n");
   else printf("M3MPRD07 NG A=%d b=%d\n",a,b);
   stp->mpt3aa[b]=b; 
  }
  int m1fnc(j)
  int *j;
  {
  *j=5;
  return 0;
  }


int 
m3ecas23 (void)
{
  int                    a;
  char                   c   = 0x81;
  signed char            sc  = 0x81;
  unsigned char          usc = 0x81;
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
#if INT64
  if ( a==0xffffffffffffff81 )
#else
  if ( a==0xffffff81 )
#endif
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
  if ( a==0x00000081 )
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
m3ecns01 (void)
{
  static int array[5] = { 1, 2, 3, 4, 5 };
  int fefnc();
  struct tag {
               int t1;
               int t2;
             };
  static struct tag tag1 = { 1, 2 };
  static struct tag *tag2 = &tag1;
  int one = 1;
  int four = 4;
  int *point = &one;

  int a = array[2];
  int b = fefnc();
  int c = tag1.t1;
  int d = tag2->t2;
  int e = one++;
  int f = one--;
  int g = *point;
  int h = +one;
  int i = -one;
  int j = ~one;
  int k = !one;
  int m = 2*3;
  int n = 8/2;
  int o = 8%3;
  int p = 1+2;
  int q = 5-3;
  int r = one<<3;
  int s = four>>1;
  int t = one<5;
  int u = four<=4;
  int v = four>2;
  int w = one>=1;



    printf("************* \n");



  if ( a==3 )
    printf("TEST01 --> OK \n");
  else
    printf("TEST01 --> NG \n");

  if ( b==3 )
    printf("TEST02 --> OK \n");
  else
    printf("TEST02 --> NG \n");

  if ( c==1 )
    printf("TEST03 --> OK \n");
  else
    printf("TEST03 --> NG \n");

  if ( d==2 )
    printf("TEST04 --> OK \n");
  else
    printf("TEST04 --> NG \n");

  if ( e==1 )
    printf("TEST05 --> OK \n");
  else
    printf("TEST05 --> NG \n");

  if ( f==2 )
    printf("TEST06 --> OK \n");
  else
    printf("TEST06 --> NG \n");

  if ( g==1 )
    printf("TEST07 --> OK \n");
  else
    printf("TEST07 --> NG \n");

  if ( h==1 )
    printf("TEST08 --> OK \n");
  else
    printf("TEST08 --> NG \n");

  if ( i==-1 )
    printf("TEST09 --> OK \n");
  else
    printf("TEST09 --> NG \n");

  if ( j==-2 )
    printf("TEST10 --> OK \n");
  else
    printf("TEST10 --> NG \n");

  if ( k==0 )
    printf("TEST11 --> OK \n");
  else
    printf("TEST11 --> NG \n");

  if ( m==6 )
    printf("TEST12 --> OK \n");
  else
    printf("TEST12 --> NG \n");

  if ( n==4 )
    printf("TEST13 --> OK \n");
  else
    printf("TEST13 --> NG \n");

  if ( o==2 )
    printf("TEST14 --> OK \n");
  else
    printf("TEST14 --> NG \n");

  if ( p==3 )
    printf("TEST15 --> OK \n");
  else
    printf("TEST15 --> NG \n");

  if ( q==2 )
    printf("TEST16 --> OK \n");
  else
    printf("TEST16 --> NG \n");

  if ( r==8 )
    printf("TEST17 --> OK \n");
  else
    printf("TEST17 --> NG \n");

  if ( s==2 )
    printf("TEST18 --> OK \n");
  else
    printf("TEST18 --> NG \n");

  if ( t==1 )
    printf("TEST19 --> OK \n");
  else
    printf("TEST19 --> NG \n");

  if ( u==1 )
    printf("TEST20 --> OK \n");
  else
    printf("TEST20 --> NG \n");

  if ( v==1 )
    printf("TEST21 --> OK \n");
  else
    printf("TEST21 --> NG \n");

  if ( w==1 )
    printf("TEST22 --> OK \n");
  else
    printf("TEST22 --> NG \n");


    printf("************* \n");



}

int 
fefnc (void)
{
  return 3;
}




struct mp2tag
{
        int       a ;
        int       b ;
        char      c ;
        char      d ;
        short int e ;
        char      x ;
} ;
        static void   mp2fnc1(struct mp2tag *x,struct mp2tag *y) ;
        static int    mp2fnc2(struct mp2tag *x,struct mp2tag *y) ;


int 
mptest25 (void)
{
        struct mp2tag  aa ;
        struct mp2tag  bb ;
        struct mp2tag *cc ;
        int            aaa,bbb ;
        cc    = &aa ;
        cc->a = 1 ;
        cc->b = 2 ;
        cc->c = 3 ;
        cc->d = 0 ;
        memset(cc,0,sizeof(struct mp2tag)) ;
        if (cc->a != 0) {
         printf("*** MPTEST25 NG *** %d \n",cc->a) ;
         }
        bb.a = cc->a++ ;
        bb.b = cc->b+2 ;
        bb.c = cc->c+3 ;
        bb.d = cc->d   ;
        aa.d = 4 ;
        aa.e = 5 ;
        mp2fnc1(&aa,&bb) ;
        aaa = mp2fnc2(&bb,&aa) ;
        if (aaa==strlen(&bb)
        && (bbb=memcmp(&bb,&aa,sizeof(struct mp2tag)))==0) {
         printf("*** MPTEST25 OK ***\n") ;
        } else {
         printf("*** MPTEST25 NG *** %d \n",aaa) ;
         printf("                    %d \n",bbb) ;
        }
}
static void 
mp2fnc1 (struct mp2tag *x, struct mp2tag *y)
{
        x->a=1 ;
        strcpy (x,y);
        x->a+=1 ;
}
static int 
mp2fnc2 (struct mp2tag *x, struct mp2tag *y)
{
        y->a=x->a ;
        memcpy (y,x,sizeof(struct mp2tag));
        x->a=y->a ;
        return strlen(y) ;
}


int 
scood01 (void)
{
    int    i,k                                                ;



    printf("********** SCOOD01 STARTED *********\n");

    i = 1                                                     ;
    k = 2                                                     ;

    switch (i) {
    case 1:
        printf("********** SCOOD01 -01 OK **********\n")  ;
        break                                                 ;
    case 2:
        printf("********** SCOOD01 -01 NG **********\n")  ;
        break                                                 ;
    case 3:
        printf("********** SCOOD01 -01 NG **********\n")  ;
        break                                                 ;
    case 4:
        printf("********** SCOOD01 -01 NG **********\n")  ;
        break                                                 ;
    case 5:
        printf("********** SCOOD01 -01 NG **********\n")  ;
        break                                                 ;
    default:
        printf("********** SCOOD01 -01 NG **********\n")  ;
        break                                                 ;
    }



    if ( i<k || ((k>i)==(i<k)) )
        printf("********** SCOOD01 -02 OK **********\n")  ;
    else
        printf("********** SCOOD01 -02 NG **********\n")  ;

    printf("********** SCOOD01 ENDED **********\n")  ;

}




int 
m3ermv06 (void)
{
  printf("********** M3ERMV06 TEST START **********\n");
  {
    int a,b = 1,c = 2,d = 3;

    a = b + 1 + ( c * d );
    if (a == 8)
        printf("***** M3ERMV06 - 01 ***** O K *****\n");
      else
        printf("***** M3ERMV06 - 01 ***** N G *****\n");
  }
  {
    int a,b = 1,c = 2,d = 3;

    a = b + 1 - ( c * d );
    if (a == -4)
        printf("***** M3ERMV06 - 02 ***** O K *****\n");
      else
        printf("***** M3ERMV06 - 02 ***** N G *****\n");
  }
  {
    int a,b = 1,c = 2,d = 3;

    a = b - 1 + ( c * d );
    if (a == 6)
        printf("***** M3ERMV06 - 03 ***** O K *****\n");
      else
        printf("***** M3ERMV06 - 03 ***** N G *****\n");
  }
  {
    int a,b = 1,c = 2,d = 3;

    a = b - 1 - ( c * d );
    if (a == -6)
        printf("***** M3ERMV06 - 04 ***** O K *****\n");
      else
        printf("***** M3ERMV06 - 04 ***** N G *****\n");
  }
  {
    int a,b = 1,c = 2;

    a = b + 1 + ( c * 2 );
    if (a == 6)
        printf("***** M3ERMV06 - 05 ***** O K *****\n");
      else
        printf("***** M3ERMV06 - 05 ***** N G *****\n");
  }
  {
    int a,b = 1,c = 2;

    a = b + 1 - ( c * 2 );
    if (a == -2)
        printf("***** M3ERMV06 - 06 ***** O K *****\n");
      else
        printf("***** M3ERMV06 - 06 ***** N G *****\n");
  }
  {
    int a,b = 1,c = 2;

    a = b - 1 + ( c * 2 );
    if (a == 4)
        printf("***** M3ERMV06 - 07 ***** O K *****\n");
      else
        printf("***** M3ERMV06 - 07 ***** N G *****\n");
  }
  {
    int a,b = 1,c = 2;

    a = b - 1 - ( c * 2 );
    if (a == -4)
        printf("***** M3ERMV06 - 08 ***** O K *****\n");
      else
        printf("***** M3ERMV06 - 08 ***** N G *****\n");
  }
  {
    int a,b = 1,c = 2;

    a = b + 1 + ( 2 * c );
    if (a == 6)
        printf("***** M3ERMV06 - 09 ***** O K *****\n");
      else
        printf("***** M3ERMV06 - 09 ***** N G *****\n");
  }
  {
    int a,b = 1,c = 2;

    a = b + 1 - ( 2 * c );
    if (a == -2)
        printf("***** M3ERMV06 - 10 ***** O K *****\n");
      else
        printf("***** M3ERMV06 - 10 ***** N G *****\n");
  }
  {
    int a,b = 1,c = 2;

    a = b - 1 + ( 2 * c );
    if (a == 4)
        printf("***** M3ERMV06 - 11 ***** O K *****\n");
      else
        printf("***** M3ERMV06 - 11 ***** N G *****\n");
  }
  {
    int a,b = 1,c = 2;

    a = b - 1 - ( 2 * c );
    if (a == -4)
        printf("***** M3ERMV06 - 12 ***** O K *****\n");
      else
        printf("***** M3ERMV06 - 12 ***** N G *****\n");
  }
  {
    int a,b = 1;

    a = b + 1 + ( 2 * 3 );
    if (a == 8)
        printf("***** M3ERMV06 - 13 ***** O K *****\n");
      else
        printf("***** M3ERMV06 - 13 ***** N G *****\n");
  }
  {
    int a,b = 1;

    a = b + 1 - ( 2 * 3 );
    if (a == -4)
        printf("***** M3ERMV06 - 14 ***** O K *****\n");
      else
        printf("***** M3ERMV06 - 14 ***** N G *****\n");
  }
  {
    int a,b = 1;

    a = b - 1 + ( 2 * 3 );
    if (a == 6)
        printf("***** M3ERMV06 - 15 ***** O K *****\n");
      else
        printf("***** M3ERMV06 - 15 ***** N G *****\n");
  }
  {
    int a,b = 1;

    a = b - 1 - ( 2 * 3 );
    if (a == -6)
        printf("***** M3ERMV06 - 16 ***** O K *****\n");
      else
        printf("***** M3ERMV06 - 16 ***** N G *****\n");
  }
  printf("********** M3ERMV06 TEST  END  **********\n");
}





int 
m3mptr04 (void)
{
  int flag=0;
  int i,c,a,b;
  a=20;
  b=53;
  a=3;
  b=1;
  c=60;
  c=3;
  i=0;
  while(1){
    if(i==2){
      printf("** OK ** \n");
      flag=1;
      goto switches ;
    }
    i++;
  }
  switches:;
  for(i=0 ; i<5 ; i++){
    if(i<4){
      printf("** OK **\n");
      continue;
    }
    flag++;
  }
  printf("** OK **\n");
  flag++;
  switch(c){
    case 0:
           printf("** CASE2 **\n");
           b=a;
           break;
    case 1:
           printf("** CASE1 **\n");
           if(b>10)
             printf("** CASE1 **\n");
           break;
    case 2:
           printf("** CASE2 **\n");
           break;
    case 3:
           printf("** CASE3 **\n");
           flag++;
           if(c<120){
             printf("** CASE1 **\n");
             flag++;
           }
           break;
    }
  if(b<3){
    flag++;
    if(flag>10){
      printf("** FLAG  : TRUE **\n");
    }
    else {
      printf("** FLAG  : FALSE **\n");
      flag++;
    }
  }
  a=2;
  b=50;
  c=333;
  if(flag==7)
    printf("***** OK *****\n");
  else
    printf("***** NG *****\n");
}



int 
scosh01 (void)
{
  #define iosi 0x00000002
  #define sosi 0x00004000
  #define ioi  0x00008000
  #define soi  0x40000000
  #define ooi  0x80000000

  short int      si  = 3                                         ;
  short int      tsi                                             ;

  int            i   = 3                                         ;
  int            ti                                              ;


  printf("********** SCOSH01 TEST STARTED **********\n")     ;


  tsi = si * iosi                                                ;
  if  (tsi == 6)
    printf("********** SCOSH01 -01 OK **********\n")         ;
  else
    printf("********** SCOSH01 -01 NG **********\n")         ;

  ti = si * sosi                                                 ;
  if  (ti == 0x0000c000)
    printf("********** SCOSH01 -02 OK **********\n")         ;
  else
    printf("********** SCOSH01 -02 NG **********\n")         ;

  ti = i * ioi                                                   ;
  if  (ti == 0x00018000)
    printf("********** SCOSH01 -03 OK **********\n")         ;
  else
    printf("********** SCOSH01 -03 NG **********\n")         ;

  ti = i * soi                                                   ;
  if  (ti == 0xc0000000)
    printf("********** SCOSH01 -04 OK **********\n")         ;
  else
    printf("********** SCOSH01 -04 NG **********\n")         ;

  ti = i * ooi                                                   ;
#if INT64
  if  (ti == 0x180000000)
#else
  if  (ti == 0x80000000)
#endif
    printf("********** SCOSH01 -05 OK **********\n")         ;
  else
    printf("********** SCOSH01 -05 NG ********** %llx\n",ti)         ;




  tsi = iosi * si                                                ;
  if  (tsi == 6)
    printf("********** SCOSH01 -06 OK **********\n")         ;
  else
    printf("********** SCOSH01 -06 NG **********\n")         ;

  ti = sosi * si                                                 ;
  if  (ti == 0x0000c000)
    printf("********** SCOSH01 -07 OK **********\n")         ;
  else
    printf("********** SCOSH01 -07 NG **********\n")         ;

  ti = ioi * i                                                   ;
  if  (ti == 0x00018000)
    printf("********** SCOSH01 -08 OK **********\n")         ;
  else
    printf("********** SCOSH01 -08 NG **********\n")         ;

  ti = soi * i                                                   ;
  if  (ti == 0xc0000000)
    printf("********** SCOSH01 -09 OK **********\n")         ;
  else
    printf("********** SCOSH01 -09 NG **********\n")         ;

  ti = ooi * i                                                   ;
#if INT64
  if  (ti == 0x180000000)
#else
  if  (ti == 0x80000000)
#endif
    printf("********** SCOSH01 -10 OK **********\n")         ;
  else
    printf("********** SCOSH01 -10 NG ********** %llx\n",ti)         ;


  printf("********** SCOSH01 TEST ENDED **********\n")       ;

}


int fe1fnc1();

int 
m3echg04 (void)
{
   int wk=0;

   printf("*** M3ECHG04 ** MK3 TEST FOR X_CHGTRE ** STARTED ***\n");

     {
       int    ib=1;
       int    wk2;

       wk = ib < 2;
       wk2= ib < 'a';
       if(wk)
       {
           if(wk2)
           {
               printf("*** M3ECHG04-01 *** O     K ***\n");
           }
           else
           {
               printf("*** M3ECHG04-01 **** N   G ****\n");
           }
       }
       else
           printf("*** M3ECHG04-01 **** N   G ****\n");
     }
     {
       int  *p;
       int  a=1;
       p=&a;

       wk = 0;
       if(wk)
           printf("*** M3ECHG04-02 **** N   G ****\n");
       else
           printf("*** M3ECHG04-02 *** O     K ***\n");
     }
     {
       static int  arr[3];

       wk = 0;
       if(wk)
           printf("*** M3ECHG04-03 **** N   G ****\n");
       else
           printf("*** M3ECHG04-03 *** O     K ***\n");
     }
     {
       wk = 0;
       if(wk)
           printf("*** M3ECHG04-04 **** N   G ****\n");
       else
           printf("*** M3ECHG04-04 *** O     K ***\n");
     }

   printf("*** M3ECHG04 ** MK3 TEST FOR X_CHGTRE ** ENDED ***\n");
}

int 
fe1fnc1 (void)
{  ;;;;;;;;;;;;;;;;;;;;;; }



   void mpafnc1(int);
   int *mpaa[5],mpab,mpac;
int 
mptest15 (void)
     {
        printf("\n*** MPTEST15 -- START ***\n") ;
        mpab=400 ;
        mpaa[0]=&mpab ;
        mpafnc1(mpab);
        mpac=*mpaa[0] ;
        if(mpac==400)
         printf("*** MPTEST15 CHECK01 OK ***\n");
        else
         printf("*** MPTEST15 CHECK01 NG ***\n");
        printf("\n*** MPTEST15 -- END   ***\n") ;
     }
   void mpafnc1(int d)
     {
        int e;
        d=d+200;
        mpaa[1]=&d;
        e=*mpaa[1];
        if(e==600)
         printf("*** MPTEST15 CHECK02 OK ***\n");
        else
         printf("*** MPTEST15 CHECK02 NG ***\n");
     }

int 
scobe19 (void)
{
   static long int a[6]={ 1,1,1,1,1,1 };
   static float    b[2]={ 1.0,1.0 };

   long int c=1;
   long int d;
   long int e;
   double      f=1.0;
   long double g=1.0;

   d = a[0] + c;
   if (d==2)
      printf ("***** OK *****\n");
   else
      printf ("***** NG *****\n");
   d = a[1] - c;
   if (d==0)
      printf ("***** OK *****\n");
   else
      printf ("***** NG *****\n");
   d = a[2] * c;
   if (d==1)
      printf ("***** OK *****\n");
   else
      printf ("***** NG *****\n");
   d = a[3] / c;
   if (d==1)
      printf ("***** OK *****\n");
   else
      printf ("***** NG *****\n");
   d = a[4] % c;
   if (d==0)
      printf ("***** OK *****\n");
   else
      printf ("***** NG *****\n");

   e = a[0] & 1;
   if (e==1)
      printf ("***** OK *****\n");
   else
      printf ("***** NG *****\n");
   e = a[1] | 1;
   if (e==1)
      printf ("***** OK *****\n");
   else
      printf ("***** NG *****\n");

   f = (double) b[0];
   if (f==1.0)
      printf ("***** OK *****\n");
   else
      printf ("***** NG *****\n");
   g = (long double) b[1];
   if (g==1.0)
      printf ("***** OK *****\n");
   else
      printf ("***** NG *****\n");
}
