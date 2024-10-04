
#include <stdlib.h>
#include <stdio.h>
#include <string.h>
int m3ecas22 (void);
int scobe11 (void);
int scobe10 (void);
int mptest08 (void);
int mptest07 (void);
int m3ecas21 (void);
int m3ecas20 (void);
int m3ecas12 (void);
int
main (void)
{
   m3ecas12();  
   m3ecas20();  
   m3ecas21();  
   mptest07();  
   mptest08();  
   scobe10();   
   scobe11();   
   m3ecas22();  

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
#if INT64 || LONG64 || __x86_64__ || __aarch64__
  if ( a==0xffffffffffffff81 )
#else
  if ( a==0xffffff81 )
#endif
    printf("TEST01 --> OK \n");
  else
    printf("TEST01 --> NG \n");
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

}

int 
m3ecas20 (void)
{
  unsigned long int      a = 0;
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

  printf("*************\n");


  a = ( unsigned long int ) c;
#if INT64 || LONG64 || __x86_64__ || __aarch64__
  if ( a==0xffffffffffffff81 )
#else
  if ( a==0xffffff81 )
#endif
    printf("TEST01 --> OK \n");
  else
    printf("TEST01 --> NG \n");
  a = 0;

  a = ( unsigned long int ) sc;
#if INT64 || LONG64 || __x86_64__ || __aarch64__
  if ( a==0xffffffffffffff81 )
#else
  if ( a==0xffffff81 )
#endif
    printf("TEST02 --> OK \n");
  else
    printf("TEST02 --> NG \n");
  a = 0;

  a = ( unsigned long int ) usc;
  if ( a==0x00000081 )
    printf("TEST03 --> OK \n");
  else
    printf("TEST03 --> NG \n");
  a = 0;

  a = ( unsigned long int ) shi;
  if ( a==1 )
    printf("TEST04 --> OK \n");
  else
    printf("TEST04 --> NG \n");
  a = 0;

  a = ( unsigned long int ) sshi;
  if ( a==1 )
    printf("TEST05 --> OK \n");
  else
    printf("TEST05 --> NG \n");
  a = 0;

  a = ( unsigned long int ) usshi;
  if ( a==1 )
    printf("TEST06 --> OK \n");
  else
    printf("TEST06 --> NG \n");
  a = 0;

  a = ( unsigned long int ) i;
  if ( a==1 )
    printf("TEST07 --> OK \n");
  else
    printf("TEST07 --> NG \n");
  a = 0;

  a = ( unsigned long int ) si;
  if ( a==1 )
    printf("TEST08 --> OK \n");
  else
    printf("TEST08 --> NG \n");
  a = 0;

  a = ( unsigned long int ) usi;
  if ( a==1 )
    printf("TEST09 --> OK \n");
  else
    printf("TEST09 --> NG \n");
  a = 0;

  a = ( unsigned long int ) li;
  if ( a==1 )
    printf("TEST10 --> OK \n");
  else
    printf("TEST10 --> NG \n");
  a = 0;

  a = ( unsigned long int ) sli;
  if ( a==1 )
    printf("TEST11 --> OK \n");
  else
    printf("TEST11 --> NG \n");
  a = 0;

  a = ( unsigned long int ) usli;
  if ( a==1 )
    printf("TEST12 --> OK \n");
  else
    printf("TEST12 --> NG \n");
  a = 0;

  a = ( unsigned long int ) p;
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

  a = ( unsigned long int ) etag;
  if ( a==1 )
    printf("TEST14 --> OK \n");
  else
    printf("TEST14 --> NG \n");
  a = 0;

  a = ( unsigned long int ) ci;
  if ( a==1 )
    printf("TEST15 --> OK \n");
  else
    printf("TEST15 --> NG \n");
  a = 0;

  a = ( unsigned long int ) vi;
  if ( a==1 )
    printf("TEST16 --> OK \n");
  else
    printf("TEST16 --> NG \n");
  a = 0;

}

int 
m3ecas21 (void)
{
  enum tag { a1,  a2 } a;
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


    printf("*************\n");


  a = ( enum tag ) c;
#if INT64
  if ( a==0xffffffffffffff81 )
#else
  if ( a==0xffffff81 )
#endif
    printf("TEST01 --> OK \n");
  else
    printf("TEST01 --> NG \n");
  a = 0;

  a = ( enum tag ) sc;
#if INT64
  if ( a==0xffffffffffffff81 )
#else
  if ( a==0xffffff81 )
#endif
    printf("TEST02 --> OK \n");
  else
    printf("TEST02 --> NG \n");
  a = 0;

  a = ( enum tag ) usc;
  if ( a==0x00000081 )
    printf("TEST03 --> OK \n");
  else
    printf("TEST03 --> NG \n");
  a = 0;

  a = ( enum tag ) shi;
  if ( a==1 )
    printf("TEST04 --> OK \n");
  else
    printf("TEST04 --> NG \n");
  a = 0;

  a = ( enum tag ) sshi;
  if ( a==1 )
    printf("TEST05 --> OK \n");
  else
    printf("TEST05 --> NG \n");
  a = 0;

  a = ( enum tag ) usshi;
  if ( a==1 )
    printf("TEST06 --> OK \n");
  else
    printf("TEST06 --> NG \n");
  a = 0;

  a = ( enum tag ) i;
  if ( a==1 )
    printf("TEST07 --> OK \n");
  else
    printf("TEST07 --> NG \n");
  a = 0;

  a = ( enum tag ) si;
  if ( a==1 )
    printf("TEST08 --> OK \n");
  else
    printf("TEST08 --> NG \n");
  a = 0;

  a = ( enum tag ) usi;
  if ( a==1 )
    printf("TEST09 --> OK \n");
  else
    printf("TEST09 --> NG \n");
  a = 0;

  a = ( enum tag ) li;
  if ( a==1 )
    printf("TEST10 --> OK \n");
  else
    printf("TEST10 --> NG \n");
  a = 0;

  a = ( enum tag ) sli;
  if ( a==1 )
    printf("TEST11 --> OK \n");
  else
    printf("TEST11 --> NG \n");
  a = 0;

  a = ( enum tag ) usli;
  if ( a==1 )
    printf("TEST12 --> OK \n");
  else
    printf("TEST12 --> NG \n");
  a = 0;

  a = ( enum tag ) p;
  i = ( int ) p;
  if ( a==i )
    printf("TEST13 --> OK \n");
  else
    printf("TEST13 --> NG \n");
  a = 0;

  a = ( enum tag ) etag;
  if ( a==1 )
    printf("TEST14 --> OK \n");
  else
    printf("TEST14 --> NG \n");
  a = 0;

  a = ( enum tag ) ci;
  if ( a==1 )
    printf("TEST15 --> OK \n");
  else
    printf("TEST15 --> NG \n");
  a = 0;

  a = ( enum tag ) vi;
  if ( a==1 )
    printf("TEST16 --> OK \n");
  else
    printf("TEST16 --> NG \n");
  a = 0;

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
}

int 
scobe11 (void)
{
   struct tag
   {
      unsigned char       b1 : 3;
      unsigned short int  b2 : 3;
      unsigned long int   b3 : 3;
   } a;

      printf ("**************\n");

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
}

int 
m3ecas22 (void)
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


    printf("*************\n");
    printf("TEST01 --> OK \n");


  a = ( const int ) c;
#if INT64
  if ( a==0xffffffffffffff81 )
#else
  if ( a==0xffffff81 )
#endif
    printf("TEST01 --> OK \n");
  else
    printf("TEST01 --> NG \n");
  a = 0;

  a = ( const int ) sc;
#if INT64
  if ( a==0xffffffffffffff81 )
#else
  if ( a==0xffffff81 )
#endif
    printf("TEST02 --> OK \n");
  else
    printf("TEST02 --> NG \n");
  a = 0;

  a = ( const int ) usc;
  if ( a==0x00000081 )
    printf("TEST03 --> OK \n");
  else
    printf("TEST03 --> NG \n");
  a = 0;

  a = ( const int ) shi;
  if ( a==1 )
    printf("TEST04 --> OK \n");
  else
    printf("TEST04 --> NG \n");
  a = 0;

  a = ( const int ) sshi;
  if ( a==1 )
    printf("TEST05 --> OK \n");
  else
    printf("TEST05 --> NG \n");
  a = 0;

  a = ( const int ) usshi;
  if ( a==1 )
    printf("TEST06 --> OK \n");
  else
    printf("TEST06 --> NG \n");
  a = 0;

  a = ( const int ) i;
  if ( a==1 )
    printf("TEST07 --> OK \n");
  else
    printf("TEST07 --> NG \n");
  a = 0;

  a = ( const int ) si;
  if ( a==1 )
    printf("TEST08 --> OK \n");
  else
    printf("TEST08 --> NG \n");
  a = 0;

  a = ( const int ) usi;
  if ( a==1 )
    printf("TEST09 --> OK \n");
  else
    printf("TEST09 --> NG \n");
  a = 0;

  a = ( const int ) li;
  if ( a==1 )
    printf("TEST10 --> OK \n");
  else
    printf("TEST10 --> NG \n");
  a = 0;

  a = ( const int ) sli;
  if ( a==1 )
    printf("TEST11 --> OK \n");
  else
    printf("TEST11 --> NG \n");
  a = 0;

  a = ( const int ) usli;
  if ( a==1 )
    printf("TEST12 --> OK \n");
  else
    printf("TEST12 --> NG \n");
  a = 0;

  a = ( const int ) p;
  i = ( int ) p;
  if ( a==i )
    printf("TEST13 --> OK \n");
  else
    printf("TEST13 --> NG \n");
  a = 0;

  a = ( const int ) etag;
  if ( a==1 )
    printf("TEST14 --> OK \n");
  else
    printf("TEST14 --> NG \n");
  a = 0;

  a = ( const int ) ci;
  if ( a==1 )
    printf("TEST15 --> OK \n");
  else
    printf("TEST15 --> NG \n");
  a = 0;

  a = ( const int ) vi;
  if ( a==1 )
    printf("TEST16 --> OK \n");
  else
    printf("TEST16 --> NG \n");
  a = 0;

}
