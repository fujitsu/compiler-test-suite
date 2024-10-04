#include <stdio.h>

#include <stdlib.h>

#define N 50
#define ANS 777

typedef struct {
  int k;
} TTT;

int sub (int j);

int 
peephole07 (void)
{
  int i;
  volatile int a;
  int *p;
  TTT *q = (TTT *)malloc(sizeof(TTT));

  q->k = 727;
  p = (int *)(&(q->k));
  a = *p;
  p = (int *)&a;

  for (i=0; i<N; i++) {
    *p = a + 1;
  }

  if (a == 777) 
    printf("a = %d --- ok\n", a);
  else
    printf("a = %d --- ng (answer = %d)\n", a, ANS);

  free(q);
}

#include <stdio.h>
#include <string.h>
#include <memory.h>
 int f00_result_chk (long r00, char c00, float f00, int l00, double d00, long double x00, int s00, int h00, long int i00, char c01, float f01, int l01, double d01, long double x01, int s01, int h01, long int i01, char c02, float f02, int l02, double d02, long double x02, int s02, int h02, long int i02, char c03, float f03, int l03, double d03, long double x03, int s03, int h03, long int i03, char c04, float f04, int l04, double d04, long double x04, int s04, int h04, long int i04, char c05, float f05, int l05, double d05, long double x05, int s05, int h05, long int i05, char c06, float f06, int l06, double d06, long double x06, int s06, int h06, long int i06, char c07, float f07, int l07, double d07, long double x07, int s07, int h07, long int i07, char c08, float f08, int l08, double d08, long double x08, int s08, int h08, long int i08);

   struct  st1  {
      int  st_a;
      int  st_b;
      int  st_c;
      struct st1 *st_nxt;
   };
#ifdef __STDC__
   int  vt(struct st1 *,char);
   int  ut(struct st1 *);
   int  ht(struct st1 *);
   void errpr(int);
#else
   int  vt();
   int  ut();
   int  ht();
   void errpr();
#endif

 int 
mptest07 (void)
 {
    struct  st1  st[10], *stp;
    int          i,totlv,totlva,totlvb,totlvc,totlu,totlh;

    printf("*** mptest07 start ***\n");
    for( i=0 ; i<10 ; i++ ){
       st[i].st_a = i;
       st[i].st_b = i+10;
       st[i].st_c = i*i;
       if(i==9)
         st[i].st_nxt = 0;
       else
         st[i].st_nxt = &st[i+1];
    }
    stp = st;
    totlva = vt(stp,'a');
    totlvb = vt(stp,'b');
    totlvc = vt(stp,'c');
    totlv  = totlva + totlvb + totlvc;
    totlu = 0;
    for( i=0 ; i<10 ; i++)
        totlu =totlu + ut(&st[i]);
    totlh = ht(st);

    if((totlv == totlu) && (totlu == totlh)){
       printf("     TOTLV = %d \n",totlv);
       printf("          TOTLVA = %d \n",totlva);
       printf("          TOTLVB = %d \n",totlvb);
       printf("          TOTLVC = %d \n",totlvc);
       printf("     TOTLU = %d \n",totlu);
       printf("     TOTLH = %d \n",totlh);
       printf("*** mptest07  ok ***\n");
    } else {
       printf("   ** ng ng ng **\n");
       printf("     TOTLV = %d \n",totlv);
       printf("          TOTLVA = %d \n",totlva);
       printf("          TOTLVB = %d \n",totlvb);
       printf("          TOTLVC = %d \n",totlvc);
       printf("     TOTLU = %d \n",totlu);
       printf("     TOTLH = %d \n",totlh);
       printf("*** mptest07  ng ***\n");
    }
}
#ifdef __STDC__
  int vt(struct st1 *ptr,char c)
#else
 vt(ptr,c)
struct st1 *ptr;char c;
#endif
 {
    int h;

     if(ptr == 0) errpr(1);
     switch(c){
       case 'a':
         for( h = 0 ; ptr != 0 ; ptr = ptr->st_nxt )
            h = h + ptr->st_a;
         return(h);
       case 'b':
         for( h = 0 ; ptr != 0 ; ptr = ptr->st_nxt )
            h = h + ptr->st_b;
         return(h);
       case 'c':
         for( h = 0 ; ptr != 0 ; ptr = ptr->st_nxt )
            h = h + ptr->st_c;
         return(h);
       default:
         errpr(2);
     }
 }

 int 
ut (struct st1 *st)
{
    int total;

       if(st == 0) errpr(3);
       total = st->st_a + st->st_b + st->st_c;
       return(total);
}

 int 
ht (struct st1 *st)
{
   int total,wt;
   struct st1 *pp;

   if(st == 0) errpr(4);
   total = 0;
   for(pp=st ; pp != 0 ; pp = pp->st_nxt){
      wt = pp->st_a + pp->st_b + pp->st_c;
      total = total + wt;
   }
   return(total);
}

 void 
errpr (int cd)
 {
      switch(cd){
        case 1:
        case 2:
          printf("  *** ng  in vt\n");
          break;
        case 3:
          printf("  *** ng  in ut\n");
          break;
        case 4:
          printf("  *** ng  in ht\n");
          break;
        default:
          cd = -1;
      }
      printf("*** mptest07 ng *** code = %d",cd);
      exit(0);
 }

 
 
 
 int   outi1,outi2;
 int 
m3mpcm07 (void)
 {
   int *pi;
   int ai,bi,ei,fi,i;
   float *pf;
   float af,bf,ef,ff;
   struct array {
     float aaf[10];
     char  chr[10];
   };
   struct array  xs;
   struct array *ps;

   union alis {
     int ui;
     struct array as;
   };
   union alis  xu;
   union alis *pu;

   xu.ui=0;
   pu=&xu;
   memset(xu.as.aaf,0x00,40);
   memcpy(xu.as.chr,"abcdefghij",10);
   for(i=0;i<10;i++) {
     ff=pu->as.aaf[i];
     pu->ui=10;
     ef=pu->as.aaf[i];
     pu->ui=10;
   }

     ff=pu->as.aaf[0];
     pu->ui=10;
     ef=pu->as.aaf[0];

   ai=10;
   if (memcmp(&ef,&ai,4)==0) printf("m3mpcm07 ***ok***\n");
   else            printf("m3mpcm07 ***ng*** ef=%d\n",ef);
 }

int 
comk3117 (void){
float  f00[10],f01[10],f02[10],f03[10],f04[10],f05[10],f06[10],f07[10],f08[10];
double d00[10],d01[10],d02[10],d03[10],d04[10],d05[10],d06[10],d07[10],d08[10];
long
double x00[10],x01[10],x02[10],x03[10],x04[10],x05[10],x06[10],x07[10],x08[10];

int    l00[10],l01[10],l02[10],l03[10],l04[10],l05[10],l06[10],l07[10],l08[10];
long
int    i00[10],i01[10],i02[10],i03[10],i04[10],i05[10],i06[10],i07[10],i08[10];
short
int    s00[10],s01[10],s02[10],s03[10],s04[10],s05[10],s06[10],s07[10],s08[10];
char   c00[10],c01[10],c02[10],c03[10],c04[10],c05[10],c06[10],c07[10],c08[10];

int    h00[10],h01[10],h02[10],h03[10],h04[10],h05[10],h06[10],h07[10],h08[10];
long i,f00_result,r00[10];

 for (i=0;i < 10;i++)  {
     f00[i]=f01[i]=f02[i]=f03[i]=f04[i]=f05[i]=f06[i]=f07[i]=f08[i]=1.0f;
     h00[i]=h01[i]=h02[i]=h03[i]=h04[i]=h05[i]=h06[i]=h07[i]=h08[i]=f00[i];
     d00[i]=d01[i]=d02[i]=d03[i]=d04[i]=d05[i]=d06[i]=d07[i]=d08[i]=h00[i];
     x00[i]=x01[i]=x02[i]=x03[i]=x04[i]=x05[i]=x06[i]=x07[i]=x08[i]=d00[i];
     l00[i]=l01[i]=l02[i]=l03[i]=l04[i]=l05[i]=l06[i]=l07[i]=l08[i]=x00[i];
     i00[i]=i01[i]=i02[i]=i03[i]=i04[i]=i05[i]=i06[i]=i07[i]=i08[i]=l00[i];
     s00[i]=s01[i]=s02[i]=s03[i]=s04[i]=s05[i]=s06[i]=s07[i]=s08[i]=i00[i];
     c00[i]=c01[i]=c02[i]=c03[i]=c04[i]=c05[i]=c06[i]=c07[i]=c08[i]=s00[i];
 }
  for (i=0;i < 10;i++) {
  r00[i]=  f00[i]+f01[i]+f02[i]+f03[i]+f04[i]+f05[i]+f06[i]+f07[i]+f08[i]
         + h00[i]+h01[i]+h02[i]+h03[i]+h04[i]+h05[i]+h06[i]+h07[i]+h08[i]
         + d00[i]+d01[i]+d02[i]+d03[i]+d04[i]+d05[i]+d06[i]+d07[i]+d08[i]
         + x00[i]+x01[i]+x02[i]+x03[i]+x04[i]+x05[i]+x06[i]+x07[i]+x08[i]
         + i00[i]+i01[i]+i02[i]+i03[i]+i04[i]+i05[i]+i06[i]+i07[i]+i08[i]
         + s00[i]+s01[i]+s02[i]+s03[i]+s04[i]+s05[i]+s06[i]+s07[i]+s08[i]
         + l00[i]+l01[i]+l02[i]+l03[i]+l04[i]+l05[i]+l06[i]+l07[i]+l08[i]
         + c00[i]+c01[i]+c02[i]+c03[i]+c04[i]+c05[i]+c06[i]+c07[i]+c08[i];
 }
  for (i=0;i < 10;i++)  {
   f00_result=
   f00_result_chk( r00[i]
                  ,c00[i],f00[i],l00[i],d00[i],x00[i],s00[i],h00[i],i00[i]
                  ,c01[i],f01[i],l01[i],d01[i],x01[i],s01[i],h01[i],i01[i]
                  ,c02[i],f02[i],l02[i],d02[i],x02[i],s02[i],h02[i],i02[i]
                  ,c03[i],f03[i],l03[i],d03[i],x03[i],s03[i],h03[i],i03[i]
                  ,c04[i],f04[i],l04[i],d04[i],x04[i],s04[i],h04[i],i04[i]
                  ,c05[i],f05[i],l05[i],d05[i],x05[i],s05[i],h05[i],i05[i]
                  ,c06[i],f06[i],l06[i],d06[i],x06[i],s06[i],h06[i],i06[i]
                  ,c07[i],f07[i],l07[i],d07[i],x07[i],s07[i],h07[i],i07[i]
                  ,c08[i],f08[i],l08[i],d08[i],x08[i],s08[i],h08[i],i08[i]);
   if (f00_result) 
      printf ("** comk3117 (%d) ** OK\n",i+1);
   else {
      printf ("** comk3117 (%d) ** NG  ",i+1);
      printf("%d\n",(long)r00[i]);
   }
  }
}
int 
f00_result_chk (long r00, char c00, float f00, int l00, double d00, long double x00, int s00, int h00, long int i00, char c01, float f01, int l01, double d01, long double x01, int s01, int h01, long int i01, char c02, float f02, int l02, double d02, long double x02, int s02, int h02, long int i02, char c03, float f03, int l03, double d03, long double x03, int s03, int h03, long int i03, char c04, float f04, int l04, double d04, long double x04, int s04, int h04, long int i04, char c05, float f05, int l05, double d05, long double x05, int s05, int h05, long int i05, char c06, float f06, int l06, double d06, long double x06, int s06, int h06, long int i06, char c07, float f07, int l07, double d07, long double x07, int s07, int h07, long int i07, char c08, float f08, int l08, double d08, long double x08, int s08, int h08, long int i08)
{
  if (r00==      (  c00+f00+l00+d00+x00+s00+h00+i00
                  + c01+f01+l01+d01+x01+s01+h01+i01
                  + c02+f02+l02+d02+x02+s02+h02+i02
                  + c03+f03+l03+d03+x03+s03+h03+i03
                  + c04+f04+l04+d04+x04+s04+h04+i04
                  + c05+f05+l05+d05+x05+s05+h05+i05
                  + c06+f06+l06+d06+x06+s06+h06+i06
                  + c07+f07+l07+d07+x07+s07+h07+i07
                  + c08+f08+l08+d08+x08+s08+h08+i08) )
    return 1;
  else 
    return 0;
}  

struct tag1 {
    long int    t1_li1;
};
struct tag2 {
    struct tag1 t2_tag1[3];
    long int    t2_li1[3];
};
long int     sub11(char,        long int,     struct tag1);
long int     sub22(char,        long int,     struct tag1);
long int     sub33(long int,    long int);

long int     cal[3], ans[3] = { 6, 17, 16 };

long int sub11(
char           pch1,
long int       pli1,
struct tag1    pt1_st1)
{
    return (long int)(pch1+pli1+pt1_st1.t1_li1);
}
long int sub22(
char           pch1,
long int       pli1,
struct tag1    pt1_st1)
{
    return (long int)(pch1+pli1+pt1_st1.t1_li1);
}
long int  sub33(
long int      pli1,
long int      pli2)
{
    return (long int)(pli1+pli2);
}
int 
scpa007 (void)
{
    char               ch1, cha1[3], *poch1;
    long int           li1, lia1[3], *poli1, *polia1[3];
    struct tag1        t1_st1, *potag11;
    struct tag2        t2_st1, *potag21;
    long int           i;

    printf("---- scpa007 start ---- \n");

    ch1 = 1;  li1 = 2;  t1_st1.t1_li1 = 3;
    poch1 = &ch1;        poli1 = &li1;
    potag11 = &t1_st1;   potag21 = &t2_st1;
    for (i=0; i<3; i++) {
        cha1[i] = i+1;
        lia1[i] = (i+1)*2;
        t2_st1.t2_tag1[i].t1_li1 = (i+1)*3;
        t2_st1.t2_li1[i] = (i+1)*4;
        polia1[i] = &lia1[i];
    }

    cal[0] = sub11(*poch1, *poli1, *potag11);
    cal[1] = sub22(cha1[*poch1],lia1[*poli1],
                                    t2_st1.t2_tag1[*poli1]);
    cal[2] = sub33(*polia1[*poch1], potag21->t2_li1[*poli1]);

    for (i=0; i<3; i++)
        if (cal[i] == ans[i])
            printf ("  %d: ***  ok  *** \n", i+1);
        else {
            printf ("  %d: ???  ng  ??? \n", i+1);
            printf ("       ans = %d\n", ans[i]);
            printf ("       cal = %d\n", cal[i]);
        }

    printf("---- scpa007  end  ---- \n");
}

int 
scrlp07 (void)
{
     int i,dim[10];
     int flag=0;
     for(i=0;i<10;i++) dim[i] = 1;
     for(i=0;i<10;i++) {
       if( dim[i] == 0 ) {
         flag = 1;
         break;
       }
     }
     if( flag == 0 && i == 10 ) {
       puts(" OK \n");
       puts(" Check if i has a store order. \n");
     }
     else {
       puts(" NG \n");
     }
     sub(1);
}
int 
sub (int j)
{
     register int i;
     int dim[10];
     int flag=0;
     if( j ) {
       for(i=0;i<10;i++) dim[i] = 1;
     }
     for(i=0;i<10;i++) {
       if( dim[i] == 0 ) {
         flag = 1;
         break;
       }
     }
     if( flag == 0 && i == 10 ) {
       puts(" OK \n");
       puts(" Check if i has a store order. \n");
     }
     else {
       puts(" NG \n");
     }
     return flag;
}

int 
dpmk2007 (void) {
  int a,b,c;
  unsigned int d,e,f;
          b=0x000000ff;c=8;
  a=b<<c;
          if (a==0x0000ff00) printf("** dpmk2007-(1)** OK\n");
          else               printf("** dpmk2007-(1)** NG a=%x\n",a);
  a=b>>c;
          if (a==0x00000000) printf("** dpmk2007-(2)** OK\n");
          else               printf("** dpmk2007-(2)** NG a=%x\n",a);
          e=0x00ffffff;f=8;
  d=e<<f;
          if (d==0xffffff00) printf("** dpmk2007-(3)** OK\n");
          else               printf("** dpmk2007-(3)** NG d=%x\n",a);
  d=e>>f;
          if (d==0x0000ffff) printf("** dpmk2007-(4)** OK\n");
          else               printf("** dpmk2007-(4)** NG d=%x\n",a);

          b=0x000000ff;
  a=b<<8;
          if (a==0x0000ff00) printf("** dpmk2007-(5)** OK\n");
          else               printf("** dpmk2007-(5)** NG a=%x\n",a);
  a=b>>31;
          if (a==0x00000000) printf("** dpmk2007-(6)** OK\n");
          else               printf("** dpmk2007-(6)** NG a=%x\n",a);
          e=0x000000ff;
  d=e<<24;
          if (d==0xff000000) printf("** dpmk2007-(7)** OK\n");
          else               printf("** dpmk2007-(7)** NG d=%x\n",d);
  d=e>>1;
          if (d==0x0000007f) printf("** dpmk2007-(8)** OK\n");
          else               printf("** dpmk2007-(8)** NG d=%x\n",d);

          b=8;e=16;
  a=8<<b;
          if (a==0x00000800) printf("** dpmk2007-(9)** OK\n");
          else               printf("** dpmk2007-(9)** NG a=%x\n",a);
  a=256>>b;
          if (a==0x00000001) printf("** dpmk2007-(10)** OK\n");
          else               printf("** dpmk2007-(10)** NG a=%x\n",a);
  d=256<<e;
          if (d==0x01000000) printf("** dpmk2007-(11)** OK\n");
          else               printf("** dpmk2007-(11)** NG d=%d\n",d);
  d=65536>>e;
          if (d==0x00000001) printf("** dpmk2007-(12)** OK\n");
          else               printf("** dpmk2007-(12)** NG d=%x\n",d);
}

signed char sub1(unsigned long long int  u8) {
  signed char i1;
  i1= u8;
  return(i1);
}
signed short sub2(unsigned long long int  u8) {
  signed short i2;
  i2= u8;
  return(i2);
}
signed long int sub3(unsigned long long int  u8) {
  signed long int i4;
  i4= u8;
  return(i4);
}
signed long long int sub4(unsigned long long int  u8) {
  signed long long int i8;
  i8= u8;
  return(i8);
}
unsigned char sub5(unsigned long long int  u8) {
  unsigned char u1;
  u1= u8;
  return(u1);
}
unsigned short sub6(unsigned long long int  u8) {
  unsigned short u2;
  u2= u8;
  return(u2);
}
unsigned long int sub7(unsigned long long int  u8) {
  unsigned long int u4;
  u4= u8;
  return(u4);
}
int 
comk2107 (void) {
  static char     i1;
  static short    i2;
  static long int i4;
  static long long int i8;
  static unsigned char     u1;
  static unsigned short    u2;
  static unsigned long int u4;
  static unsigned long long int u8=0xffffffffffffffffULL;

  signed char          sub1(unsigned long long int) ;
  signed short         sub2(unsigned long long int) ;
  signed long int      sub3(unsigned long long int) ;
  signed long long int sub4(unsigned long long int) ;
  unsigned char        sub5(unsigned long long int) ;
  unsigned short       sub6(unsigned long long int) ;
  unsigned long int    sub7(unsigned long long int) ;

  {
  i1=sub1(u8);
               if (i1 == -1LL)  printf("comk2107 (1) ok   \n",i1);
               else             printf("comk2107 (1) ng %d\n",i1);
  i2=sub2(u8);
               if (i2 == -1LL)  printf("comk2107 (2) ok   \n",i2);
               else             printf("comk2107 (2) ng %d\n",i2);
  i4=sub3(u8);
               if (i4 == -1LL)  printf("comk2107 (3) ok   \n",i4);
               else             printf("comk2107 (3) ng %d\n",i4);
  i8=sub4(u8);
               if (i8 == -1LL)  printf("comk2107 (4) ok   \n",i8);
	       else             printf("comk2107 (4) ng %x %x\n"
                                              ,*(int *)&i8,*(((int *)&i8)+1));
  u1=sub5(u8);
               if (u1 == 255)   printf("comk2107 (5) ok   \n",u1);
               else             printf("comk2107 (5) ng %d\n",u1);
  u2=sub6(u8);
               if (u2 == 65535) printf("comk2107 (6) ok   \n",u2);
               else             printf("comk2107 (6) ng %d\n",u2);
  u4=sub7(u8);
#if INT64 || LONG64 || __x86_64__ || __aarch64__ || defined(_LP64)
               if (u4 == 18446744073709551615UL)  printf("comk2107 (7) ok   \n",u4);
#else
               if (u4 == 4294967295)  printf("comk2107 (7) ok   \n",u4);
#endif
               else                   printf("comk2107 (7) ng %d\n",u4);
  }
}
int 
main (void) {
  peephole07( );
  mptest07( );
  m3mpcm07( );
  comk3117( );
  scpa007( );
  scrlp07( );
  dpmk2007( );
  comk2107( );
}
