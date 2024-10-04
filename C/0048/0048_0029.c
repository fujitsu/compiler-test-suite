#include <string.h>
#include<stdio.h>
int m3egct09 (void);
int mptest09 (void);
int m3edc106 (void);
int mptest20 (void);
int scodv02 (void);
int m3echg14 (void);
int scocv03 (void);
int m3ecas08 (void);
int m3mpcm03 (void);
int scpba01 (void);
int main()
{

   printf("***  **** START ***\n");

   scpba01();   
   m3mpcm03();  
   m3ecas08();  
   scocv03();   
   m3echg14();  
   scodv02();   
   mptest20();  
   m3edc106();  
   mptest09();  
   m3egct09();  

   printf("***  ****  END  ***\n");

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


int 
m3ecas08 (void)
{
  int                    a = 0;
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



  a = ( int ) c;
#ifdef S_CHAR
#if INT64
  if ( a==0xffffffffffffff81 )
#else
  if ( a==0xffffff81 )
#endif
#else
  if ( a==0x00000081 )
#endif
    printf("TEST01 --> OK \n");
  else
    printf("TEST01 --> NG \n");
  a = 0;

  a = ( int ) sc;
#if INT64
  if ( a==0xffffffffffffff81 )
#else
  if ( a==0xffffff81 )
#endif
    printf("TEST02 --> OK \n");
  else
    printf("TEST02 --> NG \n");
  a = 0;

  a = ( int ) usc;
  if ( a==0x00000081 )
    printf("TEST03 --> OK \n");
  else
    printf("TEST03 --> NG \n");
  a = 0;

  a = ( int ) shi;
  if ( a==1 )
    printf("TEST04 --> OK \n");
  else
    printf("TEST04 --> NG \n");
  a = 0;

  a = ( int ) sshi;
  if ( a==1 )
    printf("TEST05 --> OK \n");
  else
    printf("TEST05 --> NG \n");
  a = 0;

  a = ( int ) usshi;
  if ( a==1 )
    printf("TEST06 --> OK \n");
  else
    printf("TEST06 --> NG \n");
  a = 0;

  a = ( int ) i;
  if ( a==1 )
    printf("TEST07 --> OK \n");
  else
    printf("TEST07 --> NG \n");
  a = 0;

  a = ( int ) si;
  if ( a==1 )
    printf("TEST08 --> OK \n");
  else
    printf("TEST08 --> NG \n");
  a = 0;

  a = ( int ) usi;
  if ( a==1 )
    printf("TEST09 --> OK \n");
  else
    printf("TEST09 --> NG \n");
  a = 0;

  a = ( int ) li;
  if ( a==1 )
    printf("TEST10 --> OK \n");
  else
    printf("TEST10 --> NG \n");
  a = 0;

  a = ( int ) sli;
  if ( a==1 )
    printf("TEST11 --> OK \n");
  else
    printf("TEST11 --> NG \n");
  a = 0;

  a = ( int ) usli;
  if ( a==1 )
    printf("TEST12 --> OK \n");
  else
    printf("TEST12 --> NG \n");
  a = 0;

  a = ( int ) p;
  si = ( signed int ) p;
  if ( a==si )
    printf("TEST13 --> OK \n");
  else
    printf("TEST13 --> NG \n");
  a = 0;

  a = ( int ) etag;
  if ( a==1 )
    printf("TEST14 --> OK \n");
  else
    printf("TEST14 --> NG \n");
  a = 0;

  a = ( int ) ci;
  if ( a==1 )
    printf("TEST15 --> OK \n");
  else
    printf("TEST15 --> NG \n");
  a = 0;

  a = ( int ) vi;
  if ( a==1 )
    printf("TEST16 --> OK \n");
  else
    printf("TEST16 --> NG \n");
  a = 0;

}


int 
scodv02 (void)
{
  signed         char i1_1                                      ;
  signed         char i1_2  = 2u                                ;
  signed         char i1_3  = 3u                                ;

  unsigned       char ui1_1                                     ;
  unsigned       char ui1_2 = 2u                                ;
  unsigned       char ui1_3 = 3u                                ;

  unsigned short int  ui2_1                                     ;
  unsigned short int  ui2_2 = 2u                                ;
  unsigned short int  ui2_3 = 3u                                ;

  printf("*** SCODV2  STARTED ***\n")                   ;


  i1_1 = i1_2 < i1_3                                   ;
  if (i1_1 != 0)        
    printf("*** OK  1 ***\n")                     ;
  else
    printf("*** NG  1 ***\n")                     ;

  i1_1 = i1_2 <= i1_3                                  ;
  if (i1_1 != 0)         
    printf("*** OK  2 ***\n")                     ;
  else
    printf("*** NG  2 ***\n")                     ;

  i1_1 = i1_2 == i1_3                                ;
  if (i1_1 == 0)         
    printf("*** OK  3 ***\n")                     ;
  else
    printf("*** NG  3 ***\n")                     ;

  i1_1 = i1_2 >= i1_3                                  ;
  if (i1_1 == 0)         
    printf("*** OK  4 ***\n")                     ;
  else
    printf("*** NG  4 ***\n")                     ;

  i1_1 = i1_2 >  i1_3                                  ;
  if (i1_1 == 0)         
    printf("*** OK  5 ***\n")                     ;
  else
    printf("*** NG  5 ***\n")                     ;

  i1_1 = i1_2 != i1_3                                  ;
  if (i1_1 != 0)         
    printf("*** OK  6 ***\n")                     ;
  else
    printf("*** NG  6 ***\n")                     ;


  printf("*** SCODV2  END ***\n")                     ;

}




 static char be4o1[]={"**** ITEM1 OK ****"};
 static char be4n1[]={"**** ITEM1 NG ****"};
 int 
scpba01 (void) {
   int    a,b,z,be4fnc1();
   char   c[3],d[5];
   void   be4ok(),be4ng();
     a=0xa;
     z=1000;
     b=be4fnc1(z);
     memcpy(c,"aoh",3);
     memcpy(d,"12aoh",5);
     if(a==b)
       {
         be4ok(1);
       }
     else
       {
         be4ng(1);
       }
     if(memcmp(c,&d[2],3)==0)
       {
         be4ok(2);
       }
     else
       {
         be4ng(2);
       }
}
 int 
be4fnc1 (int a)
 {
     a=a/10;
     a=a-95;
     a=a*2;
     return (a);
 }
 void 
be4ok (int a)
 {
     if(a==1)
       {
           printf("%s\n",be4o1);
       }
     else
       {
           be4o1[9]='2';
           printf("%s\n",be4o1);
       }
 }
 void 
be4ng (int a)
 {
     if(a==1)
       {
           printf("%s\n",be4n1);
       }
     else
       {
           be4n1[4]='2';
           printf("%s\n",be4n1);
       }
 }



 extern long int signed fe1a4[2]={7,8};
 int signed long fe1a5;

int 
m3edc106 (void)
{
   signed long int *addr11;
   unsigned long int *addr21;

   printf("*** M3EDC106 ** MK3 TEST FOR DCL ** STARTED ***\n");

   {
     auto signed long int a1=0;
     register signed int long a2=0x7fffffff,b2=-1;
     static long unsigned int a3[2];
     extern long int signed fe1a4[2];
     extern int signed long fe1a5;
     typedef int long unsigned type1;
     type1  a6=0;

     addr11 = &a1;
     if (a1!=*addr11)
         printf(" *** M3EDC106 TEST-01 ERROR ***\n");
     else
         printf(" *** M3EDC106 TEST-01 OK ***\n");

     if (a2!=2147483647 || b2!=-1)
         printf(" *** M3EDC106 TEST-02 ERROR ***\n");
     else
         printf(" *** M3EDC106 TEST-02 OK ***\n");

     addr21 = a3;
     if (a3[0]!=*addr21)
         printf(" *** M3EDC106 TEST-03 ERROR ***\n");
     else
         printf(" *** M3EDC106 TEST-03 OK ***\n");

     if (fe1a4[0]!=7 || fe1a4[1]!=8)
         printf(" *** M3EDC106 TEST-04 ERROR ***\n");
     else
         printf(" *** M3EDC106 TEST-04 OK ***\n");

     if (fe1a5!=0)
         printf(" *** M3EDC106 TEST-05 ERROR ***\n");
     else
         printf(" *** M3EDC106 TEST-05 OK ***\n");

     addr21 = &a6;
     if (a6!=*addr21)
         printf(" *** M3EDC106 TEST-06 ERROR ***\n");
     else
         printf(" *** M3EDC106 TEST-06 OK ***\n");
   }

   printf("*** M3EDC106 TEST ENDED ***\n");
}



int 
m3egct09 (void)
{
  long int               a = 1;
  long int               li   = 1;
  unsigned int           usi = 1;
  signed int             si  = 1;
  int                    i   = 1;
  unsigned short int     usshi = 1;
  signed short int       sshi  = 1;
  short int              shi   = 1;
  unsigned char          usc = 'a';
  signed char            sc  = 'a';
  char                   c   = 'a';

    printf("*************\n");


#if INT64 || LONG64 || __x86_64__ || __aarch64__
  if ( sizeof ( a + li ) == 8 )
#else
  if ( sizeof ( a + li ) == 4 )
#endif
    printf("TEST01 --> OK \n");
#if INT64 || LONG64 || __x86_64__ || __aarch64__
  if ( sizeof ( a + usi ) == 8 )
#else
  if ( sizeof ( a + usi ) == 4 )
#endif
    printf("TEST02 --> OK \n");
#if INT64 || LONG64 || __x86_64__ || __aarch64__
  if ( sizeof ( a + si ) == 8 )
#else
  if ( sizeof ( a + si ) == 4 )
#endif
    printf("TEST03 --> OK \n");
#if INT64 || LONG64 || __x86_64__ || __aarch64__
  if ( sizeof ( a + i ) == 8 )
#else
  if ( sizeof ( a + i ) == 4 )
#endif
    printf("TEST04 --> OK \n");
#if INT64 || LONG64 || __x86_64__ || __aarch64__
  if ( sizeof ( a + usshi ) == 8 )
#else
  if ( sizeof ( a + usshi ) == 4 )
#endif
    printf("TEST05 --> OK \n");
#if INT64 || LONG64 || __x86_64__ || __aarch64__
  if ( sizeof ( a + sshi ) == 8 )
#else
  if ( sizeof ( a + sshi ) == 4 )
#endif
    printf("TEST06 --> OK \n");
#if INT64 || LONG64 || __x86_64__ || __aarch64__
  if ( sizeof ( a + shi ) == 8 )
#else
  if ( sizeof ( a + shi ) == 4 )
#endif
    printf("TEST07 --> OK \n");
#if INT64 || LONG64 || __x86_64__ || __aarch64__
  if ( sizeof ( a + usc ) == 8 )
#else
  if ( sizeof ( a + usc ) == 4 )
#endif
    printf("TEST08 --> OK \n");
#if INT64 || LONG64 || __x86_64__ || __aarch64__
  if ( sizeof ( a + sc ) == 8 )
#else
  if ( sizeof ( a + sc ) == 4 )
#endif
    printf("TEST09 --> OK \n");
#if INT64 || LONG64 || __x86_64__ || __aarch64__
  if ( sizeof ( a + c ) == 8 )
#else
  if ( sizeof ( a + c ) == 4 )
#endif
    printf("TEST10 --> OK \n");
}



 int   mpouti1,mpouti2;
 int 
m3mpcm03 (void)
 {
   int *pi;
   int ai,bi,ei,fi;
   ai=10;
   bi=20;
   ei=50;
   fi=60;
   pi=&ai;
   fi=*pi;
   if(bi==20) {
    *pi=15;
   }
   ei=*pi;
   if(ei==fi)
   {
     printf("ERROR OF A-2 : EI = %d\n",ei);
   }
   else
   {
     if(ei!=15)
     {
       printf("ERROR OF A-2 : EI = %d\n",ei);
     }
     else
     {
       printf("OK OF A-2\n");
     }
   }
   ai=10;

   pi=&ai;
   fi=ai+bi;
   if(bi==20) {
     *pi=15;
   }
   ei=ai+bi;
   if(ei==fi)
   {
     printf("ERROR OF C-2 : EI = %d\n",ei);
   }
   else
   {
     if(ei!=35)
     {
       printf("ERROR OF C-2 : EI = %d\n",ei);
     }
     else
     {
       printf("OK OF C-2\n");
     }
   }
   ai=10;

   pi=&ai;
   fi=bi+(*pi);
   if(bi==20) {
     ai=15;
   }
   ei=bi+(*pi);
   if(ei==fi)
   {
     printf("ERROR OF B-2:EI = %d\n",ei);
   }
   else
   {
     if(ei!=35)
     {
       printf("ERROR OF B-2:EI = %d\n",ei);
     }
     else
     {
       printf("OK OF B-2\n");
     }
   }
   ai=10;
 }


int 
scocv03 (void)
{
  int f(char c)                                                 ;

  printf("*** SCOCV03  START ***\n")                  ;

  if (f('a'))
    printf("*** OK  1 ***\n")                     ;
  else
    printf("*** NG  1 ***\n")                     ;

  printf("*** SCOCV03  END ***\n")                    ;

}
int f( char c )
{
  return (c =='a') ? 1 : 0                                      ;
}


int fe1fnc1();
int fe1fnc2();

int 
m3echg14 (void)
{
   int wk=0;

   printf("*** M3ECHG14 **  ** STARTED ***\n");

 {
    int      ia = 1;
    int      ib = 2;

    if(ia || ib)
        printf("*** M3ECHG14-01 *** O     K ***\n");
    else
        printf("*** M3ECHG14-01 **** N   G ****\n");
 }
 {
    int      ic = 1;
    int      id = 2;
    int      *pt;
    pt = &id;

    if(ic || pt)
        printf("*** M3ECHG14-02 *** O     K ***\n");
    else
        printf("*** M3ECHG14-02 **** N   G ****\n");
 }
 {
    int      ie = 1;
    int      arr1[2];

    if(ie || arr1)
        printf("*** M3ECHG14-03 *** O     K ***\n");
    else
        printf("*** M3ECHG14-03 **** N   G ****\n");
 }
 {
    int      ig = 1;

    if(ig || fe1fnc1)
        printf("*** M3ECHG14-04 *** O     K ***\n");
    else
        printf("*** M3ECHG14-04 **** N   G ****\n");
 }
 {
    int      ih = 1;
    int      ii = 1;
    int      *ptb;
    ptb = &ii;

    if(ptb || ih)
        printf("*** M3ECHG14-05 *** O     K ***\n");
    else
        printf("*** M3ECHG14-05 **** N   G ****\n");
 }
 {
    int      ij = 1;
    int      ik = 1;
    int      *ptc;
    int      *ptd;
    ptc = &ij;
    ptd = &ik;

    if(ptc || ptd)
        printf("*** M3ECHG14-06 *** O     K ***\n");
    else
        printf("*** M3ECHG14-06 **** N   G ****\n");
 }
 {
    int      il = 1;
    int      arr2[2];
    int      *pte;
    pte = &il;

    if(pte || arr2)
        printf("*** M3ECHG14-07 *** O     K ***\n");
    else
        printf("*** M3ECHG14-07 **** N   G ****\n");
 }
 {
    int      im = 1;
    int      *ptf;
    ptf = &im;

    if(ptf || fe1fnc1)
        printf("*** M3ECHG14-08 *** O     K ***\n");
    else
        printf("*** M3ECHG14-08 **** N   G ****\n");
 }
 {
    int      io = 1;
    int      arr4[2];

    if(arr4 || io)
        printf("*** M3ECHG14-09 *** O     K ***\n");
    else
        printf("*** M3ECHG14-09 **** N   G ****\n");
 }
 {
    int      ip = 1;
    int      *ptg;
    int      arr5[2];
    ptg = &ip;

    if(arr5 || ptg)
        printf("*** M3ECHG14-10 *** O     K ***\n");
    else
        printf("*** M3ECHG14-10 **** N   G ****\n");
 }
 {
    int      arr6[2];
    int      arr7[2];

    if(arr6 || arr7)
        printf("*** M3ECHG14-11 *** O     K ***\n");
    else
        printf("*** M3ECHG14-11 **** N   G ****\n");
 }
 {
    int      arr8[2];

    if(arr8 || fe1fnc1)
        printf("*** M3ECHG14-12 *** O     K ***\n");
    else
        printf("*** M3ECHG14-12 **** N   G ****\n");
 }
 {
    int      ir = 1;

    if(fe1fnc1 || ir)
        printf("*** M3ECHG14-13 *** O     K ***\n");
    else
        printf("*** M3ECHG14-13 **** N   G ****\n");
 }
 {
    if(fe1fnc1 || fe1fnc2)
        printf("*** M3ECHG14-14 *** O     K ***\n");
    else
        printf("*** M3ECHG14-14 **** N   G ****\n");
 }
 {
    int      is = 1;
    int      iz;
    int      iy;

    iz = is || 1;
    iy = is || 'a';
    if(iz)
        if(iy)
            printf("*** M3ECHG14-15 *** O     K ***\n");
        else
            printf("*** M3ECHG14-15 **** N   G ****\n");
    else
        printf("*** M3ECHG14-15 **** N   G ****\n");
 }
 {
    int      it = 1;
    int      *pth;
    int      ix;
    pth = &it;

    ix = pth || 1 ;
    if(ix)
        printf("*** M3ECHG14-16 *** O     K ***\n");
    else
        printf("*** M3ECHG14-16 **** N   G ****\n");
 }
 {
    int      iu = 1;
    int      iv = 2;
    int      *pti;
    int      *ptj;
    pti = &iu;
    ptj = &iv;

    if(pti || ptj)
        printf("*** M3ECHG14-17 *** O     K ***\n");
    else
        printf("*** M3ECHG14-17 **** N   G ****\n");
 }
 {
    int      arr6[2];
    int      iw;

    iw = arr6 || 1;
    if(iw)
        printf("*** M3ECHG14-18 *** O     K ***\n");
    else
        printf("*** M3ECHG14-18 **** N   G ****\n");
 }
 {
    int      iv;

    iv = fe1fnc1 || 1;
    if(iv)
        printf("*** M3ECHG14-19 *** O     K ***\n");
    else
        printf("*** M3ECHG14-19 **** N   G ****\n");
 }
 {
    int      iu;
    int      *ppp;
    int      it = 1;
    ppp = &it;

    iu = 0 || ppp;
    if(iu)
        printf("*** M3ECHG14-20 *** O     K ***\n");
    else
        printf("*** M3ECHG14-20 **** N   G ****\n");
 }
   printf("*** M3ECHG14 **    ** ENDED ***\n");
}

int 
fe1fnc1 (void)
{        }

int 
fe1fnc2 (void)
{        }

int 
mptest20 (void)
{
   int a[10],b[10],i,j,mp2fnc(int i);

   for(i=0;i<10;a[i]=i++);
   for(i=0;i<10;i++){
      b[i]=mp2fnc(a[i]);
      if(b[i]+a[i]!=10)
         printf("*** MPTEST20 <%2d> NG ***\n",i);
      else
         printf("*** MPTEST20 <%2d> OK ***\n",i);
   }
}
 int mp2fnc(int i)
{
   return(10-i);
}
