

#include <stdio.h>
#include <string.h>
int scobe06 (void);
int mptest04 (void);
int mptest03 (void);
int m3ecas06 (void);
int m3ecas05 (void);
int m3ecas04 (void);
int 
main (void)
{
   m3ecas04();  
   m3ecas05();  
   m3ecas06();  
   mptest03();  
   mptest04();  
   scobe06();   

}

int 
m3ecas04 (void)
{
  unsigned char          a = 0  ;
  char                   c   = 0x81;
  signed char            sc  = 0x81;
  unsigned char          usc = 0x81;
  short int              shi   = 129;
  signed short int       sshi  = 129;
  unsigned short int     usshi = 129;
  int                    i   = 129;
  signed int             si  = 129;
  unsigned int           usi = 129;
  long int               li   = 129;
  signed long int        sli  = 129;
  unsigned long int      usli = 129;
  int                   *p;
  enum etag { e1, e2, e3, e4 } etag;
  const int              ci = 129;
  volatile int           vi = 129;

  p = &i;
  etag = 129;

  printf("*************\n");



    printf("*************\n");

  a = ( unsigned char ) c;
  if ( (a&0x000000ff)==0x00000081 )
    printf("TEST01 --> OK \n");
  else
    printf("TEST01 --> NG \n");
  a = 0  ;

  a = ( unsigned char ) sc;
  if ( (a&0x000000ff)==0x00000081 )
    printf("TEST02 --> OK \n");
  else
    printf("TEST02 --> NG \n");
  a = 0  ;

  a = ( unsigned char ) usc;
  if ( (a&0x000000ff)==0x00000081 )
    printf("TEST03 --> OK \n");
  else
    printf("TEST03 --> NG \n");
  a = 0  ;

  a = ( unsigned char ) shi;
  if ( (a&0x000000ff)==0x00000081 )
    printf("TEST04 --> OK \n");
  else
    printf("TEST04 --> NG \n");
  a = 0  ;

  a = ( unsigned char ) sshi;
  if ( (a&0x000000ff)==0x00000081 )
    printf("TEST05 --> OK \n");
  else
    printf("TEST05 --> NG \n");
  a = 0  ;

  a = ( unsigned char ) usshi;
  if ( (a&0x000000ff)==0x00000081 )
    printf("TEST06 --> OK \n");
  else
    printf("TEST06 --> NG \n");
  a = 0  ;

  a = ( unsigned char ) i;
  if ( (a&0x000000ff)==0x00000081 )
    printf("TEST07 --> OK \n");
  else
    printf("TEST07 --> NG \n");
  a = 0  ;

  a = ( unsigned char ) si;
  if ( (a&0x000000ff)==0x00000081 )
    printf("TEST08 --> OK \n");
  else
    printf("TEST08 --> NG \n");
  a = 0  ;

  a = ( unsigned char ) usi;
  if ( (a&0x000000ff)==0x00000081 )
    printf("TEST09 --> OK \n");
  else
    printf("TEST09 --> NG \n");
  a = 0  ;

  a = ( unsigned char ) li;
  if ( (a&0x000000ff)==0x00000081 )
    printf("TEST10 --> OK \n");
  else
    printf("TEST10 --> NG \n");
  a = 0  ;

  a = ( unsigned char ) sli;
  if ( (a&0x000000ff)==0x00000081 )
    printf("TEST11 --> OK \n");
  else
    printf("TEST11 --> NG \n");
  a = 0  ;

  a = ( unsigned char ) usli;
  if ( (a&0x000000ff)==0x00000081 )
    printf("TEST12 --> OK \n");
  else
    printf("TEST12 --> NG \n");
  a = 0  ;

  a = ( unsigned char ) p;
  i = ( int ) p;
  if ( (a&0x000000ff)==(i&0x000000ff) )
    printf("TEST13 --> OK \n");
  else
    printf("TEST13 --> NG \n");
  a = 0  ;

  a = ( unsigned char ) etag;
  if ( (a&0x000000ff)==0x00000081 )
    printf("TEST14 --> OK \n");
  else
    printf("TEST14 --> NG \n");
  a = 0  ;

  a = ( unsigned char ) ci;
  if ( (a&0x000000ff)==0x00000081 )
    printf("TEST15 --> OK \n");
  else
    printf("TEST15 --> NG \n");
  a = 0  ;

  a = ( unsigned char ) vi;
  if ( (a&0x000000ff)==0x00000081 )
    printf("TEST16 --> OK \n");
  else
    printf("TEST16 --> NG \n");
  a = 0  ;

}

int 
m3ecas05 (void)
{
  short int              a = 0;
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



  a = ( short int ) c;
#ifdef S_CHAR
  if ( (a&0x0000ffff)==0x0000ff81 )
#else
  if ( (a&0x0000ffff)==0x00000081 )
#endif
    printf("TEST01 --> OK \n");
  else
    printf("TEST01 --> NG \n");
  a = 0;

  a = ( short int ) sc;
  if ( (a&0x0000ffff)==0x0000ff81 )
    printf("TEST02 --> OK \n");
  else
    printf("TEST02 --> NG \n");
  a = 0;

  a = ( short int ) usc;
  if ( (a&0x0000ffff)==0x00000081 )
    printf("TEST03 --> OK \n");
  else
    printf("TEST03 --> NG \n");
  a = 0;

  a = ( short int ) shi;
  if ( a==1 )
    printf("TEST04 --> OK \n");
  else
    printf("TEST04 --> NG \n");
  a = 0;

  a = ( short int ) sshi;
  if ( a==1 )
    printf("TEST05 --> OK \n");
  else
    printf("TEST05 --> NG \n");
  a = 0;

  a = ( short int ) usshi;
  if ( a==1 )
    printf("TEST06 --> OK \n");
  else
    printf("TEST06 --> NG \n");
  a = 0;

  a = ( short int ) i;
  if ( a==1 )
    printf("TEST07 --> OK \n");
  else
    printf("TEST07 --> NG \n");
  a = 0;

  a = ( short int ) si;
  if ( a==1 )
    printf("TEST08 --> OK \n");
  else
    printf("TEST08 --> NG \n");
  a = 0;

  a = ( short int ) usi;
  if ( a==1 )
    printf("TEST09 --> OK \n");
  else
    printf("TEST09 --> NG \n");
  a = 0;

  a = ( short int ) li;
  if ( a==1 )
    printf("TEST10 --> OK \n");
  else
    printf("TEST10 --> NG \n");
  a = 0;

  a = ( short int ) sli;
  if ( a==1 )
    printf("TEST11 --> OK \n");
  else
    printf("TEST11 --> NG \n");
  a = 0;

  a = ( short int ) usli;
  if ( a==1 )
    printf("TEST12 --> OK \n");
  else
    printf("TEST12 --> NG \n");
  a = 0;

  a = ( short int ) p;
  i = ( int ) p;
  if ( (a&0x0000ffff)==(i&0x0000ffff) )
    printf("TEST13 --> OK \n");
  else
    printf("TEST13 --> NG \n");
  a = 0;

  a = ( short int ) etag;
  if ( a==1 )
    printf("TEST14 --> OK \n");
  else
    printf("TEST14 --> NG \n");
  a = 0;

  a = ( short int ) ci;
  if ( a==1 )
    printf("TEST15 --> OK \n");
  else
    printf("TEST15 --> NG \n");
  a = 0;

  a = ( short int ) vi;
  if ( a==1 )
    printf("TEST16 --> OK \n");
  else
    printf("TEST16 --> NG \n");
  a = 0;

}



int 
m3ecas06 (void)
{
  signed short int       a = 0;
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



  a = ( signed short int ) c;
#ifdef S_CHAR
  if ( (a&0x0000ffff)==0x0000ff81 )
#else
  if ( (a&0x0000ffff)==0x00000081 )
#endif
    printf("TEST01 --> OK \n");
  else
    printf("TEST01 --> NG \n");
  a = 0;

  a = ( signed short int ) sc;
  if ( (a&0x0000ffff)==0x0000ff81 )
    printf("TEST02 --> OK \n");
  else
    printf("TEST02 --> NG \n");
  a = 0;

  a = ( signed short int ) usc;
  if ( (a&0x0000ffff)==0x00000081 )
    printf("TEST03 --> OK \n");
  else
    printf("TEST03 --> NG \n");
  a = 0;

  a = ( signed short int ) shi;
  if ( a==1 )
    printf("TEST04 --> OK \n");
  else
    printf("TEST04 --> NG \n");
  a = 0;

  a = ( signed short int ) sshi;
  if ( a==1 )
    printf("TEST05 --> OK \n");
  else
    printf("TEST05 --> NG \n");
  a = 0;

  a = ( signed short int ) usshi;
  if ( a==1 )
    printf("TEST06 --> OK \n");
  else
    printf("TEST06 --> NG \n");
  a = 0;

  a = ( signed short int ) i;
  if ( a==1 )
    printf("TEST07 --> OK \n");
  else
    printf("TEST07 --> NG \n");
  a = 0;

  a = ( signed short int ) si;
  if ( a==1 )
    printf("TEST08 --> OK \n");
  else
    printf("TEST08 --> NG \n");
  a = 0;

  a = ( signed short int ) usi;
  if ( a==1 )
    printf("TEST09 --> OK \n");
  else
    printf("TEST09 --> NG \n");
  a = 0;

  a = ( signed short int ) li;
  if ( a==1 )
    printf("TEST10 --> OK \n");
  else
    printf("TEST10 --> NG \n");
  a = 0;

  a = ( signed short int ) sli;
  if ( a==1 )
    printf("TEST11 --> OK \n");
  else
    printf("TEST11 --> NG \n");
  a = 0;

  a = ( signed short int ) usli;
  if ( a==1 )
    printf("TEST12 --> OK \n");
  else
    printf("TEST12 --> NG \n");
  a = 0;

  a = ( signed short int ) p;
  i = ( int ) p;
  if ( (a&0x0000ffff)==(i&0x0000ffff) )
    printf("TEST13 --> OK \n");
  else
    printf("TEST13 --> NG \n");
  a = 0;

  a = ( signed short int ) etag;
  if ( a==1 )
    printf("TEST14 --> OK \n");
  else
    printf("TEST14 --> NG \n");
  a = 0;

  a = ( signed short int ) ci;
  if ( a==1 )
    printf("TEST15 --> OK \n");
  else
    printf("TEST15 --> NG \n");
  a = 0;

  a = ( signed short int ) vi;
  if ( a==1 )
    printf("TEST16 --> OK \n");
  else
    printf("TEST16 --> NG \n");
  a = 0;

}


struct  mpt1 {
   int        a;
   char       b;
   struct mpt1 *tp;
};

struct  mpt1 mpt1a,mpt1b,mpt1c;
int 
mptest03 (void)
{
   int mpfnc11(char *);
   int mpfnc12(struct mpt1 *),init(int),chk(struct mpt1 *);
   char  cc;
   int   i,rtc;
   struct mpt1 *mpt1p;

   printf("\n***** MPTEST03 START *****\n");
   for( i=0 ; init(i) ; i++);
   for( mpt1p=&mpt1a ; mpt1p != 0 ; mpt1p = mpt1p->tp) {
      rtc = mpfnc12(mpt1p);
      if(rtc == -1) {
         mpfnc11("IN MAIN");
         goto l1;
      }
      rtc = chk(mpt1p);
   }
l1:
   if(rtc == 0){
     printf("***** MPTEST03 OK ***** \n");
   }
}

int init(int i)
{
   switch(i){
      case 0:
         mpt1a.a = 0;
         mpt1a.b ='A';
         mpt1a.tp = &mpt1b;
         break;
      case 1:
         mpt1b.a = 1;
         mpt1b.b = 'B';
         mpt1b.tp = &mpt1c;
         break;
      case 2:
         mpt1c.a = 2;
         mpt1c.b = 'C';
         mpt1c.tp = 0;
         break;
      default:
         return(0);
   }
   return(1);
}

int mpfnc12(struct mpt1 *tp)
{
   if(tp == 0)
      return(-1);
   switch(tp->a){
      case 0:
         if(tp->b != 'A')
            return(-1);
         tp->b = 'X';
         return(0);
      case 1:
         if(tp->b != 'B')
            return(-1);
         tp->b = 'Y';
         return(0);
      case 2:
         if(tp->b != 'C')
            return(-1);
         tp->b = 'Z';
         return(0);
      default:
         return(-1);
   }
}

int mpfnc11(char *str)
{
   printf("***** MPTEST03 NG *** %s ***** \n",str);
   return(-1);
}

int chk(struct mpt1 *ptr)
{
   static char rdata[3] = {'X','Y','Z'};

   if(ptr == 0)
      return(mpfnc11("in chk 1"));
   if(ptr->a >= 0 && ptr->a < 3){
      if(rdata[ptr->a] == ptr->b) {
         printf(" ** OK *** MPT1.A = %d *** \n",ptr->a);
         printf(" ** OK *** MPT1.B = %c *** \n",ptr->b);
         return(0);
      } else {
         printf("     *** MPT1.A = %d *** \n",ptr->a);
         printf("     *** MPT1.B = %c *** \n",ptr->b);
         return(mpfnc11("IN CHK 2"));
      }
   } else {
      return(mpfnc11("IN CHK 3"));
   }
   return(0);
}

int 
mptest04 (void)
{
     int      ary1[5][5][5];
     int      ary2[5][5][5];
     int      d1,ngf,d01,rcd,i,j,k;
     int      mpfnc21(int i,int j,int k);
     int      mpfnc22(char[],int);
     int      mpfnc23(int,int);
     int      mpfnc24(int d01,int d1);
     char     str[3];
     static char   msg[11] = "*** OK ***";

     printf("\n***** MPTEST04 START *****\n");

     ngf = 0;
     for(i=0 ; i<5 ; i++){
        for(j=0 ; j<5 ; j++){
           for(k=0 ; k<5 ; k++){
              ary1[i][j][k] = i+j+k;
              ary2[i][j][k] = j;
           }
        }
     }

     for(i=0 ; i<5 ; i++){
        for(j=0 ; j<5 ; j++){
           for(k=0 ; k<5 ; k++){
              d1=mpfnc21(i,j,k);
              d01 = ary1[i][j][k] * 3;
              mpfnc22(str,mpfnc24(d01,d1));
              if( strncmp(str,"NG",3) == 0 ) {
                 strncpy(msg+4,str,2);
                 printf("*** ARY1[%D][%D][%D] = %d  %s \n",
                                    i,j,k,ary1[i][j][k],msg);
                 ngf = 1;
                 goto l99;
              }
           }
           for(k=0;k<5;k++){
              rcd = 0;
              if(mpfnc23(ary2[i][j][k],rcd) == j){
                 mpfnc22(str,0);
              } else {
                 printf("  RCD = %d \n",rcd);
                 mpfnc22(str,1);
                 strncpy(msg+4,str,2);
                 printf("*** ARY2[%D][%D][%D] = %d  %s \n",
                                    i,j,k,ary2[i][j][k],msg);
                 ngf = 1;
                 goto l99;
              }
           }
        }
     }
     if(ngf == 0){
        mpfnc22(msg+4,ngf);
     }
l99:
     printf("***** MPTEST04 %2s    *****\n",msg+4);
     printf("***** MPTEST04 END   *****\n");
}

int 
mpfnc21 (int pr1, int pr2, int pr3)
{
   int rtn;
   int mpfnc26(int pr1,int pr2,int pr3);
     rtn = mpfnc26(pr1,pr2,pr3);
     return(rtn);
}

int 
mpfnc25 (int i)
{
   return(i*3);
}

int 
mpfnc26 (int p1, int p2, int p3)
{
   return(mpfnc25(p1)+mpfnc25(p2)+mpfnc25(p3));
}

int 
mpfnc22 (char *s, int i)
{
     if(i==0)
        strcpy(s,"OK");
     else
        strcpy(s,"NG");
     return(1);
}

int 
mpfnc27 (int *a, int s)
{
   int i;

     for(i=0;i<s;i++)
       *(a+i)=i;
     return(0);
}

int 
mpfnc28 (int arg1, int arg2)
{
     int ary[5],i;
     mpfnc27(ary,5);
     for(i=0;i<5;i++){
        if(ary[i] == arg1)
           return(i);
     }
     return(-1);
}

int 
mpfnc24 (int i, int j)
{
     return(i-j);
}

int 
mpfnc23 (int i, int j)
{
   int w;
     w=mpfnc28(i,j)+j;
     return(w);
}

int 
scobe06 (void)
{
   struct tag
   {
      signed char         b1 :  8;
      signed short int    b2 : 16;
      signed long int     b3 : 32;
      unsigned char       b4 :  8;
      unsigned short int  b5 : 16;
      unsigned long int   b6 : 32;
   } a;

   struct tag *x;

   signed char        c1;
   signed short int   c2;
   signed long int    c3;
   unsigned char      c4;
   unsigned short int c5;
   unsigned long  int c6;

   printf (" ****** \n");
   a.b1 = 0x01;
   c1 = a.b1;
   if (c1==1)
      printf ("BLOAD1(I1,I1) OK\n");
   else
      printf ("BLOAD1(I1,I1) NG\n");
   c4 = a.b1;
   if (c4==1)
      printf ("BLOAD1(U1,I1) OK\n");
   else
      printf ("BLOAD1(U1,I1) NG\n");

   a.b2 = 1;
   c1 = a.b2;
   if (c1==1)
      printf ("BLOAD2(I1,I2) OK\n");
   else
      printf ("BLOAD2(I1,I2) NG\n");
   c2 = a.b2;
   if (c2==1)
      printf ("BLOAD1(I2,I2) OK\n");
   else
      printf ("BLOAD1(I2,I2) NG\n");
   c4 = a.b2;
   if (c4==1)
      printf ("BLOAD2(U1,I2) OK\n");
   else
      printf ("BLOAD2(U1,I2) NG\n");
   c5 = a.b2;
   if (c5==1)
      printf ("BLOAD1(U2,I2) OK\n");
   else
      printf ("BLOAD1(U2,I2) NG\n");

   a.b3 = 1;
   c1 = a.b3;
   if (c1==1)
      printf ("BLOAD2(I1,I4) OK\n");
   else
      printf ("BLOAD2(I1,I4) NG\n");
   c2 = a.b3;
   if (c2==1)
      printf ("BLOAD2(I2,I4) OK\n");
   else
      printf ("BLOAD2(I2,I4) NG\n");
   c3 = a.b3;
   if (c3==1)
      printf ("BLOAD1(I4,I4) OK\n");
   else
      printf ("BLOAD1(I4,I4) NG\n");
   c4 = a.b3;
   if (c4==1)
      printf ("BLOAD2(I1,I4) OK\n");
   else
      printf ("BLOAD2(I1,I4) NG\n");
   c5 = a.b3;
   if (c5==1)
      printf ("BLOAD2(I2,I4) OK\n");
   else
      printf ("BLOAD2(I2,I4) NG\n");
   c6 = a.b3;
   if (c6==1)
      printf ("BLOAD1(I4,I4) OK\n");
   else
      printf ("BLOAD1(I4,I4) NG\n");

   a.b4 = 0x01;
   c1 = a.b4;
   if (c1==1)
      printf ("BLOAD1(I1,U1) OK\n");
   else
      printf ("BLOAD1(I1,U1) NG\n");
   c4 = a.b4;
   if (c4==1)
      printf ("BLOAD1(U1,U1) OK\n");
   else
      printf ("BLOAD1(U1,U1) NG\n");

   a.b5 = 1;
   c1 = a.b5;
   if (c1==1)
      printf ("BLOAD3(I1,U2) OK\n");
   else
      printf ("BLOAD3(I1,U2) NG\n");
   c2 = a.b5;
   if (c2==1)
      printf ("BLOAD1(I2,U2) OK\n");
   else
      printf ("BLOAD1(I2,U2) NG\n");
   c4 = a.b5;
   if (c4==1)
      printf ("BLOAD3(U1,U2) OK\n");
   else
      printf ("BLOAD3(U1,U2) NG\n");
   c5 = a.b5;
   if (c5==1)
      printf ("BLOAD1(U2,U2) OK\n");
   else
      printf ("BLOAD1(U2,U2) NG\n");

   a.b6 = 1;
   c1 = a.b6;
   if (c1==1)
      printf ("BLOAD4(I1,U4) OK\n");
   else
      printf ("BLOAD4(I1,U4) NG\n");
   c2 = a.b6;
   if (c2==1)
      printf ("BLOAD4(I2,U4) OK\n");
   else
      printf ("BLOAD4(I2,U4) NG\n");
   c3 = a.b6;
   if (c3==1)
      printf ("BLOAD1(I4,U4) OK\n");
   else
      printf ("BLOAD1(I4,U4) NG\n");
   c4 = a.b6;
   if (c4==1)
      printf ("BLOAD4(U1,U4) OK\n");
   else
      printf ("BLOAD4(U1,U4) NG\n");
   c5 = a.b6;
   if (c5==1)
      printf ("BLOAD4(U2,U4) OK\n");
   else
      printf ("BLOAD4(U2,U4) NG\n");
   c6 = a.b6;
   if (c6==1)
      printf ("BLOAD1(U4,U4) OK\n");
   else
      printf ("BLOAD1(U4,U4) NG\n");


   printf (" ****** \n");
   x = &a;

   x->b1 = 0x01;
   c1 = x->b1;
   if (c1==1)
      printf ("BLOAD1(I1,I1) OK\n");
   else
      printf ("BLOAD1(I1,I1) NG\n");
   c4 = x->b1;
   if (c4==1)
      printf ("BLOAD1(U1,I1) OK\n");
   else
      printf ("BLOAD1(U1,I1) NG\n");

   x->b2 = 1;
   c1 = x->b2;
   if (c1==1)
      printf ("BLOAD2(I1,I2) OK\n");
   else
      printf ("BLOAD2(I1,I2) NG\n");
   c2 = x->b2;
   if (c2==1)
      printf ("BLOAD1(I2,I2) OK\n");
   else
      printf ("BLOAD1(I2,I2) NG\n");
   c4 = x->b2;
   if (c4==1)
      printf ("BLOAD2(U1,I2) OK\n");
   else
      printf ("BLOAD2(U1,I2) NG\n");
   c5 = x->b2;
   if (c5==1)
      printf ("BLOAD1(U2,I2) OK\n");
   else
      printf ("BLOAD1(U2,I2) NG\n");

   x->b3 = 1;
   c1 = x->b3;
   if (c1==1)
      printf ("BLOAD2(I1,I4) OK\n");
   else
      printf ("BLOAD2(I1,I4) NG\n");
   c2 = x->b3;
   if (c2==1)
      printf ("BLOAD2(I2,I4) OK\n");
   else
      printf ("BLOAD2(I2,I4) NG\n");
   c3 = x->b3;
   if (c3==1)
      printf ("BLOAD1(I4,I4) OK\n");
   else
      printf ("BLOAD1(I4,I4) NG\n");
   c4 = x->b3;
   if (c4==1)
      printf ("BLOAD2(I1,I4) OK\n");
   else
      printf ("BLOAD2(I1,I4) NG\n");
   c5 = x->b3;
   if (c5==1)
      printf ("BLOAD2(I2,I4) OK\n");
   else
      printf ("BLOAD2(I2,I4) NG\n");
   c6 = x->b3;
   if (c6==1)
      printf ("BLOAD1(I4,I4) OK\n");
   else
      printf ("BLOAD1(I4,I4) NG\n");

   x->b4 = 0x01;
   c1 = x->b4;
   if (c1==1)
      printf ("BLOAD1(I1,U1) OK\n");
   else
      printf ("BLOAD1(I1,U1) NG\n");
   c4 = x->b4;
   if (c4==1)
      printf ("BLOAD1(U1,U1) OK\n");
   else
      printf ("BLOAD1(U1,U1) NG\n");

   x->b5 = 1;
   c1 = x->b5;
   if (c1==1)
      printf ("BLOAD3(I1,U2) OK\n");
   else
      printf ("BLOAD3(I1,U2) NG\n");
   c2 = x->b5;
   if (c2==1)
      printf ("BLOAD1(I2,U2) OK\n");
   else
      printf ("BLOAD1(I2,U2) NG\n");
   c4 = x->b5;
   if (c4==1)
      printf ("BLOAD3(U1,U2) OK\n");
   else
      printf ("BLOAD3(U1,U2) NG\n");
   c5 = x->b5;
   if (c5==1)
      printf ("BLOAD1(U2,U2) OK\n");
   else
      printf ("BLOAD1(U2,U2) NG\n");

   x->b6 = 1;
   c1 = x->b6;
   if (c1==1)
      printf ("BLOAD4(I1,U4) OK\n");
   else
      printf ("BLOAD4(I1,U4) NG\n");
   c2 = x->b6;
   if (c2==1)
      printf ("BLOAD4(I2,U4) OK\n");
   else
      printf ("BLOAD4(I2,U4) NG\n");
   c3 = x->b6;
   if (c3==1)
      printf ("BLOAD1(I4,U4) OK\n");
   else
      printf ("BLOAD1(I4,U4) NG\n");
   c4 = x->b6;
   if (c4==1)
      printf ("BLOAD4(U1,U4) OK\n");
   else
      printf ("BLOAD4(U1,U4) NG\n");
   c5 = x->b6;
   if (c5==1)
      printf ("BLOAD4(U2,U4) OK\n");
   else
      printf ("BLOAD4(U2,U4) NG\n");
   c6 = x->b6;
   if (c6==1)
      printf ("BLOAD1(U4,U4) OK\n");
   else
      printf ("BLOAD1(U4,U4) NG\n");
}
