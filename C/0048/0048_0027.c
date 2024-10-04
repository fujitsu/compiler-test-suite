#include <stdio.h>
#include <stdlib.h>
#include <string.h>
int mp1fnc (int *j);
int m3edc060 (void);
int m3mprd06 (void);
int scobe10 (void);
int m3edc192 (void);
int mptest07 (void);
int scpbc02 (void);
int m3ecas12 (void);
int m3edc055 (void);
int scodv01 (void);
int scpa013 (void);
int m3edc116 (void);
int scpa012 (void);
int mptest41();


#define NULL  0
#define proc     {
#define endproc  }




#define      num      4

#define      bexnum   2
int main()
{

   printf("***  **** START ***\n");

   mptest41();  
   scpa012();   
   m3edc116();  
   scpa013();   
   scodv01();   
   m3edc055();  
   m3ecas12();  
   scpbc02();   
   mptest07();  
   m3edc192();  
   scobe10();   
   m3mprd06();  
   m3edc060();  

   printf("***  ****  END  ***\n");

}





int 
m3ecas12 (void)
{
  signed long int        a = 0;
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



  a = ( signed long int ) c;
#ifdef S_CHAR
#if INT64 || LONG64 || __x86_64__ || __aarch64__
  if ( a==0xffffffffffffff81 )
#else
  if ( a==0xffffff81 )
#endif
#else
  if ( a==0x00000081 )
#endif
    printf("TEST01 --> OK \n");
  else
    printf("TEST01 --> NG\na:%llx\n",a);
  a = 0;

  a = ( signed long int ) sc;
#if INT64 || LONG64 || __x86_64__ || __aarch64__
  if ( a==0xffffffffffffff81 )
#else
  if ( a==0xffffff81 )
#endif
    printf("TEST02 --> OK \n");
  else
    printf("TEST02 --> NG \n");
  a = 0;

  a = ( signed long int ) usc;
  if ( a==0x00000081 )
    printf("TEST03 --> OK \n");
  else
    printf("TEST03 --> NG \n");
  a = 0;

  a = ( signed long int ) shi;
  if ( a==1 )
    printf("TEST04 --> OK \n");
  else
    printf("TEST04 --> NG \n");
  a = 0;

  a = ( signed long int ) sshi;
  if ( a==1 )
    printf("TEST05 --> OK \n");
  else
    printf("TEST05 --> NG \n");
  a = 0;

  a = ( signed long int ) usshi;
  if ( a==1 )
    printf("TEST06 --> OK \n");
  else
    printf("TEST06 --> NG \n");
  a = 0;

  a = ( signed long int ) i;
  if ( a==1 )
    printf("TEST07 --> OK \n");
  else
    printf("TEST07 --> NG \n");
  a = 0;

  a = ( signed long int ) si;
  if ( a==1 )
    printf("TEST08 --> OK \n");
  else
    printf("TEST08 --> NG \n");
  a = 0;

  a = ( signed long int ) usi;
  if ( a==1 )
    printf("TEST09 --> OK \n");
  else
    printf("TEST09 --> NG \n");
  a = 0;

  a = ( signed long int ) li;
  if ( a==1 )
    printf("TEST10 --> OK \n");
  else
    printf("TEST10 --> NG \n");
  a = 0;

  a = ( signed long int ) sli;
  if ( a==1 )
    printf("TEST11 --> OK \n");
  else
    printf("TEST11 --> NG \n");
  a = 0;

  a = ( signed long int ) usli;
  if ( a==1 )
    printf("TEST12 --> OK \n");
  else
    printf("TEST12 --> NG \n");
  a = 0;

  a = ( signed long int ) p;
  i = ( int ) p;
#if LONG64 || __x86_64__ || __aarch64__
    printf("TEST13 --> OK \n");
#else
  if ( a==i )
    printf("TEST13 --> OK \n");
  else
    printf("TEST13 --> NG \n");
#endif
  a = 0;

  a = ( signed long int ) etag;
  if ( a==1 )
    printf("TEST14 --> OK \n");
  else
    printf("TEST14 --> NG \n");
  a = 0;

  a = ( signed long int ) ci;
  if ( a==1 )
    printf("TEST15 --> OK \n");
  else
    printf("TEST15 --> NG \n");
  a = 0;

  a = ( signed long int ) vi;
  if ( a==1 )
    printf("TEST16 --> OK \n");
  else
    printf("TEST16 --> NG \n");
  a = 0;
  return 0;
}



   struct  mp1st1 {
      int  st_a;
      int  st_b;
      int  st_c;
      struct mp1st1 *mp1st_nxt;
   };
   int  mp1vt(struct mp1st1 *,char);
   int  mp1ut(struct mp1st1 *);
   int  mp1ht(struct mp1st1 *);
   void mp1errpr(int);

int 
mptest07 (void)
 {
    struct  mp1st1 st[10], *stp;
    int          i,totlv,totlva,totlvb,totlvc,totlu,totlh;

    printf("\n***** MPTEST07  START *****\n");
    for( i=0 ; i<10 ; i++ ){
       st[i].st_a = i;
       st[i].st_b = i+10;
       st[i].st_c = i*i;
       if(i==9)
         st[i].mp1st_nxt = 0;
       else
         st[i].mp1st_nxt = &st[i+1];
    }
    stp = st;
    totlva = mp1vt(stp,'a');
    totlvb = mp1vt(stp,'b');
    totlvc = mp1vt(stp,'c');
    totlv  = totlva + totlvb + totlvc;
    totlu = 0;
    for( i=0 ; i<10 ; i++)
        totlu =totlu + mp1ut(&st[i]);
    totlh = mp1ht(st);

    if((totlv == totlu) && (totlu == totlh)){
       printf("     TOTLV = %d \n",totlv);
       printf("          TOTLVA = %d \n",totlva);
       printf("          TOTLVB = %d \n",totlvb);
       printf("          TOTLVC = %d \n",totlvc);
       printf("     TOTLU = %d \n",totlu);
       printf("     TOTLH = %d \n",totlh);
       printf("***** MPTEST07  OK *****\n");
    } else {
       printf("   ** NG! NG! NG! **\n");
       printf("     TOTLV = %d \n",totlv);
       printf("          TOTLVA = %d \n",totlva);
       printf("          TOTLVB = %d \n",totlvb);
       printf("          TOTLVC = %d \n",totlvc);
       printf("     TOTLU = %d \n",totlu);
       printf("     TOTLH = %d \n",totlh);
       printf("***** MPTEST07  NG *****\n");
    }
    return 0;
}

  int mp1vt(struct mp1st1 *ptr,char c)
 {
    int h;

     if(ptr == 0) mp1errpr(1);
     switch(c){
       case 'a':
         for( h = 0 ; ptr != 0 ; ptr = ptr->mp1st_nxt )
            h = h + ptr->st_a;
         return(h);
       case 'b':
         for( h = 0 ; ptr != 0 ; ptr = ptr->mp1st_nxt )
            h = h + ptr->st_b;
         return(h);
       case 'c':
         for( h = 0 ; ptr != 0 ; ptr = ptr->mp1st_nxt )
            h = h + ptr->st_c;
         return(h);
       default:
         mp1errpr(2);
     }
     return 0;
}

 int 
mp1ut (struct mp1st1 *st)
{
    int total;

       if(st == 0) mp1errpr(3);
       total = st->st_a + st->st_b + st->st_c;
       return(total);
}

 int 
mp1ht (struct mp1st1 *st)
{
   int total,wt;
   struct mp1st1 *pp;

   if(st == 0) mp1errpr(4);
   total = 0;
   for(pp=st ; pp != 0 ; pp = pp->mp1st_nxt){
      wt = pp->st_a + pp->st_b + pp->st_c;
      total = total + wt;
   }
   return(total);
}

 void 
mp1errpr (int cd)
 {
      switch(cd){
        case 1:
        case 2:
          printf("  *** NG  IN 'mp1vt'''\n");
          break;
        case 3:
          printf("  *** NG  IN 'mp1ut'''\n");
          break;
        case 4:
          printf("  *** NG  IN 'mp1ht'''\n");
          break;
        default:
          cd = -1;
      }
      printf("***** MPTEST07 NG ***** code = %d",cd);
      exit(0);
 }


int 
scobe10 (void)
{
   struct tag
   {
      unsigned char       b1 : 3;
      unsigned short int  b2 : 3;
      unsigned long int   b3 : 3;
   } a;

   a.b1 = 0;
   if (a.b1==0)
      printf ("***** OK *****\n");
   else
      printf ("***** NG *****\n");
   if (a.b1==1)
      printf ("***** NG *****\n");
   else
      printf ("***** OK *****\n");
   if (a.b1==127)
      printf ("***** NG *****\n");
   else
      printf ("***** OK *****\n");

   a.b2 = 0;
   if (a.b2==0)
      printf ("***** OK *****\n");
   else
      printf ("***** NG *****\n");
   if (a.b2==1)
      printf ("***** NG *****\n");
   else
      printf ("***** OK *****\n");
   if (a.b2==127)
      printf ("***** NG *****\n");
   else
      printf ("***** OK *****\n");

   a.b3 = 0;
   if (a.b3==0)
      printf ("***** OK *****\n");
   else
      printf ("***** NG *****\n");
   if (a.b3==1)
      printf ("***** NG *****\n");
   else
      printf ("***** OK *****\n");
   if (a.b3==127)
      printf ("***** NG *****\n");
   else
      printf ("***** OK *****\n");
   return 0;
}




 extern const short int signed fe9a4[2]={7,8};
 volatile int signed short fe9a5;
 typedef const int short unsigned fe9tp1,fe9tp2;

int 
m3edc055 (void)
{
   const signed short int *addrcs;
   const unsigned short int *addrcu;
   volatile signed short int *addrvs;
   volatile unsigned short int *addrvu;

   auto const signed short int a1;
   register volatile signed int short a2=0,b2=-1;
   static const short unsigned int a3[2];
   extern const short int signed fe9a4[2];
   extern volatile int signed short fe9a5;
   fe9tp1 a6;
   fe9tp2 a7=1;

   printf("*** M3EDC055 ** MK3 TEST FOR DCL ** STARTED ***\n");

   addrcs = &a1;
   if (a1!=*addrcs)
       printf(" *** M3EDC055 TEST-01 ERROR ***\n");
   else
       printf(" *** M3EDC055 TEST-01 OK ***\n");

   if (a2 || b2!=-1)
       printf(" *** M3EDC055 TEST-02 ERROR ***\n");
   else
       printf(" *** M3EDC055 TEST-02 OK ***\n");

   if (a3[0] || a3[1])
       printf(" *** M3EDC055 TEST-03 ERROR ***\n");
   else
       printf(" *** M3EDC055 TEST-03 OK ***\n");

   if (fe9a4[0]!=7 || fe9a4[1]!=8)
       printf(" *** M3EDC055 TEST-04 ERROR ***\n");
   else
       printf(" *** M3EDC055 TEST-04 OK ***\n");

   if (fe9a5!=0)
       printf(" *** M3EDC055 TEST-05 ERROR ***\n");
   else
       printf(" *** M3EDC055 TEST-05 OK ***\n");

   addrcu = &a6;
   if (a6!=*addrcu || a7!=1)
       printf(" *** M3EDC055 TEST-06 ERROR ***\n");
   else
       printf(" *** M3EDC055 TEST-06 OK ***\n");

   printf("*** M3EDC055 TEST ENDED ***\n");
   return 0;
}




 volatile long unsigned feca4;
 const signed long feca5;

int 
m3edc060 (void)
{

   const signed long *addrcs1,*addrcs2;
   const unsigned long *addrcu1,*addrcu2;
   volatile signed long *addrvs1,*addrvs2;
   volatile unsigned long *addrvu1,*addrvu2;

   printf("*** M3EDC060 ** MK3 TEST FOR DCL ** STARTED ***\n");

   {
     auto const signed long a1=0;
     register volatile unsigned long a2=0,b2=1;
     static const long signed a3[2]={2,3};
     extern volatile long unsigned feca4;
     extern const signed long   feca5;
     typedef volatile unsigned long type1;
     type1  a6=0;


     addrcs1 = &a1;
     if (a1!=*addrcs1)
         printf(" *** M3EDC060 TEST-01 ERROR ***\n");
     else
         printf(" *** M3EDC060 TEST-01 OK ***\n");

     if (a2!=0 || b2!=1)
         printf(" *** M3EDC060 TEST-02 ERROR ***\n");
     else
         printf(" *** M3EDC060 TEST-02 OK ***\n");

     if (a3[0]!=2 || a3[1]!=3)
         printf(" *** M3EDC060 TEST-03 ERROR ***\n");
     else
         printf(" *** M3EDC060 TEST-03 OK ***\n");

     if (feca4!=0)
         printf(" *** M3EDC060 TEST-04 ERROR ***\n");
     else
         printf(" *** M3EDC060 TEST-04 OK ***\n");

     if (feca5!=0)
         printf(" *** M3EDC060 TEST-05 ERROR ***\n");
     else
         printf(" *** M3EDC060 TEST-05 OK ***\n");

     addrvu1 = &a6;
     if (a6!=*addrvu1)
         printf(" *** M3EDC060 TEST-06 ERROR ***\n");
     else
         printf(" *** M3EDC060 TEST-06 OK ***\n");
   }

   printf("*** M3EDC060 TEST ENDED ***\n");
   return 0;
}



  int *mp1fnc2(),mp1fnc4();
int  mp1fnc4(a)
      int *a ;
proc
      *a=1 ;
      return 0;
endproc

  void mp1fnc1(),mp1fnc3(),mp1fnc5();
  int mptest41()
  {
       mp1fnc1();
       mp1fnc3();
       mp1fnc5();
       return 0;
  }
  void 
mp1fnc1 (void)
  {
       static int *(*eee)()=mp1fnc2;
       if(*(*eee)() == 10)
        printf("*** MPTEST41 CHECK01 OK ***\n");
       else
        printf("*** MPTEST41 CHECK01 NG ***\n");
  }
  int *
mp1fnc2 (void)
  {
       static int ooo=0;
       ooo=ooo+10;
       return(&ooo);
  }
  void 
mp1fnc3 (void)
  {
       int    ccc;
       static int aaa=20,(*bbb)()=mp1fnc4;
       static int *ddd=&aaa;
       *ddd=*ddd+30;
       if(*ddd==50)
        printf("*** MPTEST41 CHECK02 OK ***\n");
       else
        printf("*** MPTEST41 CHECK02 NG ***\n");
       ccc=(*bbb)(&ccc);
  }
  void 
mp1fnc5 (void)
  {
       void   mp1fnc6();
       static int b=20,*e;
       e=&b;
       mp1fnc6(e);
  }
  void 
mp1fnc6 (
    int *a
)
  {
       int    c=5;
       c=c+*a;
       if(c==25)
        printf("*** MPTEST41 CHECK3 OK ***\n");
       else
        printf("*** MPTEST41 CHECK3 NG ***\n");
  }





int 
scpa012 (void)
{
    static char            cha0[6] = "12345";
    static char            cha1[6] = "54321";
    static char            cha2[6];
    int             i;

    printf("---- SCPA012 START ---- \n");

    for (i=0; i<5; i++) {
        switch (cha1[i]) {
            case '1':  memcpy(&cha2[0], &cha1[i], 1);
                       break;
            case '2':  memcpy(&cha2[1], &cha1[i], 1);
                       break;
            case '3':  memcpy(&cha2[2], &cha1[i], 1);
                       break;
            case '4':  memcpy(&cha2[3], &cha1[i], 1);
                       break;
            case '5':  memcpy(&cha2[4], &cha1[i], 1);
                       break;
            default :  printf (" --- ERROR ---\n");
                       break;
         }
    }
    cha2[5] = NULL;

    if ( !memcmp(cha2, cha0, 6) )
        printf ("   ***  OK  *** \n");
    else {
        printf ("   ???  ng  ??? \n");
        printf ("     ans = %s\n", cha0);
        printf ("     cal = %s\n", cha2);
    }

    printf("---- SCPA012  END  ---- \n");
    return 0;
}




 long  fe1a7;
 signed           fe1a8;

int 
m3edc116 (void)
{

   {
     auto void *a1;
     auto char  a2,b2;
     register int a3=1,b3=a3;
     static short a6[2]={-1,0},b6=1;
     extern long  fe1a7;
     extern signed fe1a8;
     typedef unsigned type1;
     type1   a9;


     printf("*** M3EDC116 ** MK3 TEST FOR DCL ** STARTED ***\n");

     a1 = (void *)0;
     if ((int)a1!=0)
         printf(" *** M3EDC116 TEST-01 ERROR ***\n");
     else
         printf(" *** M3EDC116 TEST-01 OK ***\n");

     a2 = 0x7f;  b2 = 0;
     if (a2!=127 || b2!=0)
         printf(" *** M3EDC116 TEST-02 ERROR ***\n");
     else
         printf(" *** M3EDC116 TEST-02 OK ***\n");

     if (a3!=1 || b3!=1)
         printf(" *** M3EDC116 TEST-03 ERROR ***\n");
     else
         printf(" *** M3EDC116 TEST-03 OK ***\n");
     if (a6[0]!=-1 || a6[1]!=0 || b6!=1)
         printf(" *** M3EDC116 TEST-04 ERROR ***\n");
     else
         printf(" *** M3EDC116 TEST-04 OK ***\n");

     if (fe1a7)
         printf(" *** M3EDC116 TEST-05 ERROR ***\n");
     else
         printf(" *** M3EDC116 TEST-05 OK ***\n");

     fe1a8 = -1;
     if (fe1a8!=-1)
         printf(" *** M3EDC116 TEST-06 ERROR ***\n");
     else
         printf(" *** M3EDC116 TEST-06 OK ***\n");

     a9 = 1;
     if (a9!=1)
         printf(" *** M3EDC116 TEST-07 ERROR ***\n");
     else
         printf(" *** M3EDC116 TEST-07 OK ***\n");
   }

   printf("*** M3EDC116 TEST ENDED ***\n");
   return 0;
}




 int 
m3edc192 (void)
 {

   auto volatile const char  c,c2;
   volatile const short s;
   volatile int   i;
   long  l;


   printf("*** M3EDC192 ** MK3 TEST FOR DCL ** STARTED ***\n");

       printf(" *** M3EDC192 TEST OK ***\n");

   printf("*** M3EDC192 TEST ENDED ***\n");
   return 0;
}




int 
m3mprd06 (void)
{ struct t3 {
   int t3a;
   int t3aa[30];
   };
   struct t3 st,*stp;
   int a,b,c,*p;
   stp=0;
   a=b=c=0;
   p=0;
   stp=&st;
   p=&st.t3aa[0];
   *p=10;
   a=st.t3aa[0];
   p=&(stp->t3aa[0]);
   p+=5;
   *p=20;
   mp1fnc(&c);
   b=stp->t3aa[c];
   st.t3aa[1]=40;
   stp->t3aa[c]=b;
   if(a==10 && b==20)
        printf("M3MPRD06 OK\n");
   else printf("M3MPRD06 NG A=%d B=%d\n",a,b);
   return 0;
}
int mp1fnc(j)
int *j;
{
*j=5;
return 0;
}



int 
scodv01 (void)
{
  volatile signed   char  be1i1_1,be1i1_2,be1i1_3                ;
  volatile unsigned char  be1ui1_1,be1ui1_2,be1ui1_3             ;
  volatile unsigned short int be1ui2_1,be1ui2_2,be1ui2_3         ;

  printf("*** SCODV01  STRT ***\n")                    ;


  be1i1_2 = 7                                                    ;
  be1i1_3 = 5                                                    ;

  be1i1_1 = be1i1_2 * be1i1_3                    ;
  if (be1i1_1 == 35)
    printf("*** OK  1 ***\n")                      ;
  else
    printf("*** NG  1 ***\n")                      ;

  be1i1_1 = be1i1_2 - be1i1_3                    ;
  if (be1i1_1 == 2)
    printf("*** OK  2 ***\n")                      ;
  else
    printf("*** NG  2 ***\n")                      ;

  be1i1_1 = be1i1_2 / be1i1_3                    ;
  if (be1i1_1 == 1)
    printf("*** OK  3 ***\n")                      ;
  else
    printf("*** NG  3 ***\n")                      ;

  be1i1_1 = be1i1_2 % be1i1_3                    ;
  if (be1i1_1 == 2)
    printf("*** OK  4 ***\n")                      ;
  else
    printf("*** NG  4 ***\n")                      ;



  be1ui1_2 = 7                                                ;
  be1ui1_3 = 5                                                   ;

  be1ui1_1 = be1ui1_2 * be1ui1_3                 ;
  if (be1ui1_1 == 35)
    printf("*** OK  5 ***\n")                      ;
  else
    printf("*** NG  5 ***\n")                      ;

  be1ui1_1 = be1ui1_2 - be1ui1_3                 ;
  if (be1ui1_1 == 2)
    printf("*** OK  6 ***\n")                      ;
  else
    printf("*** NG  6 ***\n")                      ;

  be1ui1_1 = be1ui1_2 / be1ui1_3                 ;
  if (be1ui1_1 == 1)
    printf("*** OK  7 ***\n")                      ;
  else
    printf("*** NG  7 ***\n")                      ;

  be1ui1_1 = be1ui1_2 % be1ui1_3                 ;
  if (be1ui1_1 == 2)
    printf("*** OK  8 ***\n")                      ;
  else
    printf("*** NG  8 ***\n")                      ;



  be1ui2_2 = 7                                                   ;
  be1ui2_3 = 5                                                   ;

  be1ui2_1 = be1ui2_2 * be1ui2_3                 ;
  if (be1ui2_1 == 35)
    printf("*** OK  9 ***\n")                      ;
  else
    printf("*** NG  9 ***\n")                      ;

  be1ui2_1 = be1ui2_2 - be1ui2_3                 ;
  if (be1ui2_1 == 2)
    printf("*** OK 10 ***\n")                      ;
  else
    printf("*** NG 10 ***\n")                      ;

  be1ui2_1 = be1ui2_2 / be1ui2_3                 ;
  if (be1ui2_1 == 1)
    printf("*** OK 11 ***\n")                      ;
  else
    printf("*** NG 11 ***\n")                      ;

  be1ui2_1 = be1ui2_2 % be1ui2_3                 ;
  if (be1ui2_1 == 2)
    printf("*** OK 12 ***\n")                      ;
  else
    printf("*** NG 12 ***\n")                      ;


  printf("*** SCODV01  END ***\n")                     ;
  return 0;
}



struct beatag1 {
    char             t1_ch1;
    short int        t1_si1;
};
struct beatag2 {
    struct beatag1   t2_st11;
    char             t2_cha1[10];
    long long int    t2_ll1;
};
union ubeatag1 {
    struct beatag1   ut1_st11;
    char             ut1_ch1;
    short int        ut1_si1;
    long int         ut1_li1;
    long long int    ut1_ll1;
};
struct beatag3 {
    union ubeatag1   t3_u11;
    struct beatag1   t3_st11;
    char             t3_ch1;
};

long int       be1cal[num], be1ans[num] = { 3, 33, 25, 9 };

int 
scpa013 (void)
{
    struct beatag1         t1_st1 = { 1, 2 };
    struct beatag2         t2_st1 = { { 2, 3 }, "987", 4 };
    struct beatag3         t3_st1 = { { 3, 4 }, { 5, 6 }, 7 };
    union ubeatag1         ut1_u1 = { 4, 5 };
    int                    i, tmp;

    printf("---- SCPA013 START ---- \n");

    be1cal[0] = t1_st1.t1_ch1 + t1_st1.t1_si1;

    for (tmp=0, i=0; t2_st1.t2_cha1[i]!=NULL; i++)
         tmp += t2_st1.t2_cha1[i]-'0';
    be1cal[1] = t2_st1.t2_st11.t1_ch1 + t2_st1.t2_st11.t1_si1 +
               t2_st1.t2_ll1 + tmp;

    be1cal[2] = t3_st1.t3_u11.ut1_st11.t1_ch1 +
               t3_st1.t3_u11.ut1_st11.t1_si1 +
               t3_st1.t3_st11.t1_ch1 + t3_st1.t3_st11.t1_si1 +
               t3_st1.t3_ch1;

    be1cal[3] = ut1_u1.ut1_st11.t1_ch1 +
               ut1_u1.ut1_st11.t1_si1;

    for (i=0; i<num; i++) {
        if (be1cal[i] == be1ans[i])
            printf ("  %d: ***  OK  *** \n", i+1);
        else {
            printf ("  %d: ???  NG  ??? \n", i+1);
            printf ("       BE1ANS = %d\n", be1ans[i]);
            printf ("       BE1CAL = %d\n", be1cal[i]);
        }
    }

    printf("---- SCPA013  END  ---- \n");
    return 0;
}




 int exv;
 int 
scpbc02 (void) {
   int    a,b,z,beafun1();
   char   c[3],d[5];
   void   beaok(),beang();
     a=0xa;
     z=1000;
     b=beafun1(z);
     memcpy(c,"aoh",3);
     memcpy(d,"12aoh",5);
     exv=1;
     if(a==b)
       {
         beaok();
       }
     else
       {
         beang();
       }
     exv=2;
     if(memcmp(c,&d[2],3)==0)
       {
         beaok();
       }
     else
       {
         beang();
       }
     return 0;
}
 int 
beafun1 (int a)
{
     a=a/10;
     a=a-95;
     a=a*2;
     return (a);
 }
 void 
beaok (void) {
   static char c1[]={"ITEM1 OK"};
   static char c2[]={"ITEM2 OK"};
     if(exv==1)
       {
           printf("%s\n",c1);
       }
     else
       {
           printf("%s\n",c2);
       }
 }
 void 
beang (void) {
   static char c1[]={"ITEM1 NG"};
   static char c2[]={"ITEM2 NG"};
     if(exv==1)
       {
           printf("%s\n",c1);
       }
     else
       {
           printf("%s\n",c2);
       }
 }
