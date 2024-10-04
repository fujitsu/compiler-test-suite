
#include <stdio.h>
#include <string.h>
int scobe09 (void);
int scobe08 (void);
int mptest05 (void);
int m3ecas11 (void);
int m3ecas09 (void);
int m3ecas08 (void);
int 
main (void)
{
   m3ecas08();  
   m3ecas09();  
   m3ecas11();  
   mptest05();  
   scobe08();   
   scobe09();   

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

#if INT64
  if ( a==0xffffffffffffff81 )
#else
  if ( a==0xffffff81 )
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
    printf("TEST13 --> NG  a:%x, si:%x\n",a,si);
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
m3ecas09 (void)
{
  signed int             a = 0;
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



  a = ( signed int ) c;
#if INT64
  if ( a==0xffffffffffffff81 )
#else
  if ( a==0xffffff81 )
#endif
    printf("TEST01 --> OK \n");
  else
    printf("TEST01 --> NG \n");
  a = 0;

  a = ( signed int ) sc;
#if INT64
  if ( a==0xffffffffffffff81 )
#else
  if ( a==0xffffff81 )
#endif
    printf("TEST02 --> OK \n");
  else
    printf("TEST02 --> NG \n");
  a = 0;

  a = ( signed int ) usc;
  if ( a==0x00000081 )
    printf("TEST03 --> OK \n");
  else
    printf("TEST03 --> NG \n");
  a = 0;

  a = ( signed int ) shi;
  if ( a==1 )
    printf("TEST04 --> OK \n");
  else
    printf("TEST04 --> NG \n");
  a = 0;

  a = ( signed int ) sshi;
  if ( a==1 )
    printf("TEST05 --> OK \n");
  else
    printf("TEST05 --> NG \n");
  a = 0;

  a = ( signed int ) usshi;
  if ( a==1 )
    printf("TEST06 --> OK \n");
  else
    printf("TEST06 --> NG \n");
  a = 0;

  a = ( signed int ) i;
  if ( a==1 )
    printf("TEST07 --> OK \n");
  else
    printf("TEST07 --> NG \n");
  a = 0;

  a = ( signed int ) si;
  if ( a==1 )
    printf("TEST08 --> OK \n");
  else
    printf("TEST08 --> NG \n");
  a = 0;

  a = ( signed int ) usi;
  if ( a==1 )
    printf("TEST09 --> OK \n");
  else
    printf("TEST09 --> NG \n");
  a = 0;

  a = ( signed int ) li;
  if ( a==1 )
    printf("TEST10 --> OK \n");
  else
    printf("TEST10 --> NG \n");
  a = 0;

  a = ( signed int ) sli;
  if ( a==1 )
    printf("TEST11 --> OK \n");
  else
    printf("TEST11 --> NG \n");
  a = 0;

  a = ( signed int ) usli;
  if ( a==1 )
    printf("TEST12 --> OK \n");
  else
    printf("TEST12 --> NG \n");
  a = 0;

  a = ( signed int ) p;
  i = ( int ) p;
  if ( a==i )
    printf("TEST13 --> OK \n");
  else
    printf("TEST13 --> NG \n");
  a = 0;

  a = ( signed int ) etag;
  if ( a==1 )
    printf("TEST14 --> OK \n");
  else
    printf("TEST14 --> NG \n");
  a = 0;

  a = ( signed int ) ci;
  if ( a==1 )
    printf("TEST15 --> OK \n");
  else
    printf("TEST15 --> NG \n");
  a = 0;

  a = ( signed int ) vi;
  if ( a==1 )
    printf("TEST16 --> OK \n");
  else
    printf("TEST16 --> NG \n");
  a = 0;

}

int 
m3ecas11 (void)
{
  long int               a = 0;
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



  a = ( long int ) c;
#if INT64 || LONG64 || __x86_64__ || __aarch64__
  if ( a==0xffffffffffffff81 )
#else
  if ( a==0xffffff81 )
#endif
    printf("TEST01 --> OK \n");
  else
    printf("TEST01 --> NG \n");
  a = 0;

  a = ( long int ) sc;
#if INT64 || LONG64 || __x86_64__ || __aarch64__
  if ( a==0xffffffffffffff81 )
#else
  if ( a==0xffffff81 )
#endif
    printf("TEST02 --> OK \n");
  else
    printf("TEST02 --> NG \n");
  a = 0;

  a = ( long int ) usc;
  if ( a==0x00000081 )
    printf("TEST03 --> OK \n");
  else
    printf("TEST03 --> NG \n");
  a = 0;

  a = ( long int ) shi;
  if ( a==1 )
    printf("TEST04 --> OK \n");
  else
    printf("TEST04 --> NG \n");
  a = 0;

  a = ( long int ) sshi;
  if ( a==1 )
    printf("TEST05 --> OK \n");
  else
    printf("TEST05 --> NG \n");
  a = 0;

  a = ( long int ) usshi;
  if ( a==1 )
    printf("TEST06 --> OK \n");
  else
    printf("TEST06 --> NG \n");
  a = 0;

  a = ( long int ) i;
  if ( a==1 )
    printf("TEST07 --> OK \n");
  else
    printf("TEST07 --> NG \n");
  a = 0;

  a = ( long int ) si;
  if ( a==1 )
    printf("TEST08 --> OK \n");
  else
    printf("TEST08 --> NG \n");
  a = 0;

  a = ( long int ) usi;
  if ( a==1 )
    printf("TEST09 --> OK \n");
  else
    printf("TEST09 --> NG \n");
  a = 0;

  a = ( long int ) li;
  if ( a==1 )
    printf("TEST10 --> OK \n");
  else
    printf("TEST10 --> NG \n");
  a = 0;

  a = ( long int ) sli;
  if ( a==1 )
    printf("TEST11 --> OK \n");
  else
    printf("TEST11 --> NG \n");
  a = 0;

  a = ( long int ) usli;
  if ( a==1 )
    printf("TEST12 --> OK \n");
  else
    printf("TEST12 --> NG \n");
  a = 0;

  a = ( long int ) p;
  i = ( int ) p;
#if LONG64 || __x86_64__ || __aarch64__
  printf("TEST13 --> OK \n");
#else
  if ( a==i )
    printf("TEST13 --> OK \n");
  else
    printf("TEST13 --> NG a:%x,i:%x\n",a,i);
#endif
  a = 0;

  a = ( long int ) etag;
  if ( a==1 )
    printf("TEST14 --> OK \n");
  else
    printf("TEST14 --> NG \n");
  a = 0;

  a = ( long int ) ci;
  if ( a==1 )
    printf("TEST15 --> OK \n");
  else
    printf("TEST15 --> NG \n");
  a = 0;

  a = ( long int ) vi;
  if ( a==1 )
    printf("TEST16 --> OK \n");
  else
    printf("TEST16 --> NG \n");
  a = 0;

}

#if INT64
#define int __int32
#endif

 static int mp1data[20]={18,17,20,9,4,6,1,8,11,7,5,14,19,2,12,3,10,
                           13,15,16};
 int  mp1w_da[20];
 struct mp1st1 {
     int *da_p;
     int *wdap;
     int  n;
 };
 int mp1l_s(struct mp1st1),mp1s_l(struct mp1st1),mp1ave(int * , int);
 int mp1ck(struct mp1st1 *,char,int);
 int mp1errck(int,char),mp1erjl(int *),mp1erjs(int *),mp1erjv(int);

int 
mptest05 (void)
 {
   struct mp1st1 st;
   int      i,rst[3];
   char *rt;
   static char *sok="OK",
               *sng="NG";

      printf("\n***** MPTEST05 START ***** \n");
      rt=sok;
      st.n=20;
      st.da_p=mp1data;
      st.wdap=mp1w_da;
      memcpy((char *)mp1w_da,(char *)mp1data,80);
      rst[0]=mp1l_s(st);
      memcpy((char *)mp1w_da,(char *)mp1data,80);
      rst[1]=mp1s_l(st);
      memcpy((char *)mp1w_da,(char *)mp1data,80);
      rst[2]=mp1ave(st.wdap,st.n);
      for(i=0;i<3;i++){
         if(rst[i]!=0){
            printf("*** NG  %d \n",i);
            rt=sng;
         }else{
            printf("*** OK  %d \n",i);
         }
      }
      printf("***** MPTEST05  %s ***** \n",rt);
}

int mp1l_s(struct mp1st1 st)
{
     int i,j,*da_p,w,nn ;
     da_p=st.wdap;
     nn=st.n;
     for(i=0;i<st.n;i++){
          for(j=0;j<nn-1;j++){
               if(*da_p < *(da_p+1)){
                    w = *da_p;
                    *da_p = *(da_p+1);
                    *(da_p+1) = w;
               }
               da_p+=1;
          }
          nn-=1;
          da_p=st.wdap;
    }
    return(mp1ck(&st,'L',0));
}

int mp1s_l(struct mp1st1 st)
{
     int i,j,*da_p,w,nn ;
     da_p=st.wdap;
     nn=st.n;
     for(i=0;i<st.n;i++){
          for(j=0;j<nn-1;j++){
               if(*da_p > *(da_p+1)){
                    w = *da_p;
                    *da_p = *(da_p+1);
                    *(da_p+1) = w;
               }
               da_p+=1;
          }
          nn-=1;
          da_p=st.wdap;
    }
    return(mp1ck(&st,'S',0));
}

int mp1ave(int *da,int n)
{
     int s,av,i;
     s=0;
     for(i=0;i<n;i++)
          s=*(da+i)+s;
     av=s*10/n;
     return(mp1ck(0,'A',av));
}

int mp1ck(struct mp1st1 *st,char str,int var)
{
     switch(str){
        case 'L':
          return(mp1errck(mp1erjl(st->wdap),str));
        case 'S':
          return(mp1errck(mp1erjs(st->wdap),str));
        case 'A':
          return(mp1errck(mp1erjv(var),str));
        default:
          return(-1);
    }
}

int mp1errck(int jg,char ss)
{
   switch(jg){
     case 0:
       printf("*** OK *** %c ***\n",ss);
       return(0);
     case 1:
       printf("*** NG *** %c ***\n",ss);
       return(1);
     default:
       return(-1);
  }
}

int mp1erjs(int *p)
{
   int i,j;
   for(i=0;i<20;i++){
      if(*(p+i)==i+1) continue;
      else{
        printf(" '' MP1ERJS ''\n");
        for(j=0;j<20;j++)
          printf("   %d = %d,",j,*(p+j));
        printf("\n");
        return(1);
      }
   }
   return(0);
}

int mp1erjl(int *p)
{
   int i,j,k;
   for(i=19,j=1;i>=0;i--,j++){
      if(*(p+i)==j) continue;
      else{
        printf(" '' IN MP1ERJL ''\n");
        for(k=0;k<20;k++)
          printf("   %d = %d,",k,*(p+k));
        printf("\n");
        return(1);
      }
   }
   return(0);
}

int mp1erjv(int a)
{
   if(a==105) return(0);
   printf(" '' IN MP1ERJV ''\n");
   printf("    MP1AVE =%d \n",a);
   return(1);
}

   struct  mp2t1             {
     int   a[10][10]        ;
     int   *b,*c,d              ;
     char  e,*f                 ;
     int   a1[4]              ;
     }    mp2p                 ;
   static char
    mp2ng_msg []={"******* MPTEST06 LAST NG *************"};
   static char
    mp2ok_msg []={"******* MPTEST06 LAST OK *************"} ;
   int  g,h,*i,mpfnc22(),b1=0,b2=50,b3=0,b4=0,err=0;
   void mpfnc21(),mp2errck();
int 
mptest06 (void)
        {
        printf("**************************************\n");
        printf("******* MPTEST06 -- START ************\n");
        printf("**************************************\n");
        h=2 ;
        g=5 ;
        if(g==5)
         {
           printf("******* MPTEST06 CHECK01 OK **********\n");
         }
        else
         {
          err++;
          printf("*** MPTEST06 CHECK1 NG  ***\n") ;
         }
        for(h=0;h<4;h++)
          mp2p.a1[h]=h ;
        i=mp2p.a[0]+99 ;
        *i=g-5         ;
        for(g=0;g<10;g=g+2)
          *i=*i+mp2p.a1[3] ;
        *i=*i+mp2p.a1[2] ;
        mp2p.a [5] [5] = *i ;
        g=sizeof(h+mp2p.e) + 1 ;
        if(g==5)
         {
           printf("******* MPTEST06 CHECK02 OK **********\n");
         }
        else
         {
           err++;
           printf("*** MPTEST06 CHECK2 NG  ***\n") ;
         }
        i=&g     ;
        mp2p.b=i ;
        mpfnc21() ;
        mp2errck();
        printf("******* MPTEST06 --  END  ************\n");
        }
   void 
mpfnc21 (void)
        {
        char        *s1                  ;
        char        *func3(char *s1)     ;
        int         j,**k,l,m[5]       ;
        static char flg[]={"off"}    ;
        union  t2   {
          int  *n                        ;
          int  *o                        ;
          }   q                         ;
        struct tag1 {
          char *s0                       ;
          int  s00                       ;
          union      tag2  {
               char  s000  [10]        ;
               char  s0000               ;
               }    un1                 ;
          int  *s09                      ;
               }    s                   ;
          k=&(mp2p.b)                    ;
          l=mpfnc22()                    ;
          j=**k+l                        ;
          if(j==12)
           {
             printf("******* MPTEST06 CHECK04 OK **********\n");
           }
          else
           {
             err++;
             printf("****** MPTEST06 CHECK04 NG ******\n");
           }
          q.n=&j                         ;
          l=0                            ;
          while(l<5)  {
            *(q.n)=*(q.n)+1              ;
            l++                          ;
            }                           ;
          if(*(q.n)==17)
           {
             printf("******* MPTEST06 CHECK05 OK **********\n");
           }
          else
           {
             err++;
             printf("****** MPTEST06 CHECK05 NG ******\n");
           }
          l=0                             ;
          while(l<5)  {
            m[l]=*(q.o)                 ;
            l++                           ;
            }                            ;
          mp2p.c=&m[3]                  ;
          goto label2 ;
label1: h=*(mp2p.c)                       ;
        if(h == mp2p.a [5] [5] && !strcmp(s.s0,"ok"))
         {
           printf("%s\n",mp2ok_msg);
         }
        else
         {
           err++;
           printf("%s\n",mp2ng_msg);
         }
        return;
label2 :  s1=flg;
          s.s0=func3(s1);
          goto label1;
  }
  int 
mpfnc22 (void)
    {
      static int c1=2,c2=5,c3=10,c4=1 ;
      b1=b1+2  ;
      b2=b2-10  ;
      b3=b3+1 ;
      do   {
         mp2p.a[c1] [c4]=c3 ;
         c1++  ;
           }
      while (c1<c2)  ;
      if(b1>=5 && b2<=20)
        {
           if(b3==3)
            {
              printf("******* MPTEST06 CHECK03 OK **********\n");
            }
           else
            {
              err++;
              printf("****** MPTEST06 CHECK03 NG ******\n");
            }
           return (7) ;
        }
      else
        {
           c4++  ;
           c3++  ;
           mpfnc22() ;
           printf("******* MPFNC22 RECURSIVE ************\n");
           return (7);
        }
    }
  struct taga {
    int  st1  [10]                  ;
    char *st2 [10]                  ;
    char st3  [10]                  ;
                        } *pp1 ,pp2  ;
  char *
func3 (char *s2)
       {
          int s6,s7,*s11 ;
          void func4(int s7,char *s2,struct taga *pp1) ;
          char s5[2],*s4   ;
          static char ss5[]={"no"} ;
          static int  line1 []={0,9,2,3,7,5,4,6,8,1} ;
          static char g7[]={"  2   "}  ;
          s6=0 ;
          s7=1 ;
          do  {
            s6++ ;
            s7++ ;
            pp2.st1[s6] = line1[s6]  ;
            pp1=&pp2  ;
            if(pp1->st1[s6]!=line1[s6])
             printf("*** NG HAPPENED AT FUNC3 ***\n") ;
            func4(s7,s2,pp1) ;
              }
          while(line1[s6]!= 7 ) ;
          if(s6<5)
            { printf("***  %s  |  %s  |  %s  ***\n",g7,g7,g7) ;
               strcpy(s5,"ok") ;
               s4=s5 ;
            }
          else
            { printf("*** ng happened ** s6 = %d ***\n",s6) ;
               s4=ss5 ;
            }
          return (s4) ;
       }
  void  func4(int s9,char *s8,struct taga *s10)
       {
     int z1,z2,z3;
   static char ra[7][7]={"CCCCCC","OOOOOO","PPPPPP",
                       " BELL "," BBB  "," SSSS ",
                       "  2   "};
     b4=b4+1;
     if(!strcmp(s8,"on"))
       goto label10;
switch(s10->st1[s9-2])  {
case  1  :
  goto label9;
case  2  :
  goto label8;
case  3  :
  goto label7;
case  4  :
  goto label6;
case  5  :
  goto label5;
case  6  :
  goto label4;
case  7  :
  goto label3;
case  8  :
  goto label2;
case  9  :
  goto label1;
default :
  goto label05;
    } ;
label05 : z1=0;
          z2=6;
          z3=3;
 if(b4==1)
  {
    printf("******* FUNC4 TURNING POINT 1 OK *****\n");
  }
 else
  {
    err++;
    printf("*** FUNC4 TURNING POINT 1 NG ***\n");
  }
 printf("***  %s  |  %s  |  %s  ***\n",ra[z1],ra[z2],ra[z3]);
         goto label10;
label1 : z1=5;
         z2=2;
         z3=1;
 if(b4==2)
  {
    printf("******* FUNC4 TURNING POINT 2 OK *****\n");
  }
 else
  {
    err++;
    printf("******* FUNC4 TURNING POINT 02 NG *****\n") ;
  }
 printf("***  %s  |  %s  |  %s  ***\n",ra[z1],ra[z2],ra[z3]);
         goto label10;
label2 : z1=3;
         z2=5;
         z3=4;
 printf("***  %s  |  %s  |  %s  ***\n",ra[z1],ra[z2],ra[z3]);
         goto label10;
label3 : z1=2;
         z2=5;
         z3=1;
 printf("***  %s  |  %s  |  %s  ***\n",ra[z1],ra[z2],ra[z3]);
         goto label10;
label4 : z1=0;
         z2=2;
         z3=3;
 printf("***  %s  |  %s  |  %s  ***\n",ra[z1],ra[z2],ra[z3]);
         goto label10;
label5 : z1=3;
         z2=5;
         z3=5;
 printf("***  %s  |  %s  |  %s  ***\n",ra[z1],ra[z2],ra[z3]);
         goto label10;
label6 : z1=2;
         z2=5;
         z3=2;
 printf("***  %s  |  %s  |  %s  ***\n",ra[z1],ra[z2],ra[z3]);
         goto label10;
label7 : z1=5;
         z2=6;
         z3=4;
 if(b4==4)
  {
    printf("******* FUNC4 TURNING POINT 4 OK *****\n");
  }
 else
  {
    err++;
    printf("****** FUNC4 TURNING POINT 4 NG ******\n");
  }
 printf("***  %s  |  %s  |  %s  ***\n",ra[z1],ra[z2],ra[z3]);
         goto label10;
label8 : z1=3;
         z2=2;
         z3=1;
 if(b4==3)
  {
    printf("******* FUNC4 TURNING POINT 3 OK *****\n");
  }
 else
  {
    err++;
    printf("******* FUNC4 TURNING POINT 3 NG ******\n");
  }
 printf("***  %s  |  %s  |  %s  ***\n",ra[z1],ra[z2],ra[z3]);
         goto label10;
label9 : z1=0;
         z2=4;
         z3=1;
 printf("***  %s  |  %s  |  %s  ***\n",ra[z1],ra[z2],ra[z3]);
label10 :
    return;
 }
 void 
mp2errck (void)
 {
      printf("**************************************\n");
      if(err==0)
       {
         printf("***    OK                          ***\n");
       }
      else
       {
         printf("***    NG                          ***\n");
       }
      printf("**************************************\n");
 }
#if INT64
#undef int
#endif

int 
scobe08 (void)
{
   struct tag
   {
      signed char        b1 : 1;
      signed short int   b2 : 1;
      signed long  int   b3 : 1;
      unsigned char      b4 : 1;
      unsigned short int b5 : 1;
      unsigned long  int b6 : 1;
   } a;

   struct tag *x;

   signed long long int     c1;
   unsigned long long int   c2;

   printf (" ****** \n") ;
   a.b1 = 1;
   c1 = a.b1;
   if (c1==-1)
      printf ("BLOAD9(I8,I1) OK\n");
   else
      printf ("BLOAD9(I8,I1) NG\n");
   c2 = a.b1;
   if (c2==0xffffffffffffffffLL)
      printf ("BLOAD9(U8,I1) OK\n");
   else
      printf ("BLOAD9(U8,I1) NG\n");

   a.b2 = 1;
   c1 = a.b2;
   if (c1==-1)
      printf ("BLOAD9(I8,I2) OK\n");
   else
      printf ("BLOAD9(I8,I2) NG\n");
   c2 = a.b2;
   if (c2==0xffffffffffffffffLL)
      printf ("BLOAD9(U8,I2) OK\n");
   else
      printf ("BLOAD9(U8,I2) NG\n");

   a.b3 = 1;
   c1 = a.b3;
   if (c1==-1)
      printf ("BLOAD9(I8,I4) OK\n");
   else
      printf ("BLOAD9(I8,I4) NG\n");
   c2 = a.b3;
   if (c2==0xffffffffffffffffLL)
      printf ("BLOAD9(U8,I4) OK\n");
   else
      printf ("BLOAD9(U8,I4) NG\n");

   a.b4 = 1;
   c1 = a.b4;
   if (c1==1)
      printf ("BLOAD10(I8,U1) OK\n");
   else
      printf ("BLOAD10(I8,U1) NG\n");
   c2 = a.b4;
   if (c2==1)
      printf ("BLOAD10(U8,U1) OK\n");
   else
      printf ("BLOAD10(U8,U1) NG\n");

   a.b5 = 1;
   c1 = a.b5;
   if (c1==1)
      printf ("BLOAD10(I8,U2) OK\n");
   else
      printf ("BLOAD10(I8,U2) NG\n");
   c2 = a.b5;
   if (c2==1)
      printf ("BLOAD10(U8,U2) OK\n");
   else
      printf ("BLOAD10(U8,U2) NG\n");

   a.b6 = 1;
   c1 = a.b6;
   if (c1==1)
      printf ("BLOAD10(I8,U4) OK\n");
   else
      printf ("BLOAD10(I8,U4) NG\n");
   c2 = a.b6;
   if (c2==1)
      printf ("BLOAD10(U8,U4) OK\n");
   else
      printf ("BLOAD10(U8,U4) NG\n");


   x = &a;

   printf(" ****** \n");
   x->b1 = 1;
   c1 = x->b1;
   if (c1==-1)
      printf ("BLOAD9(I8,I1) OK\n");
   else
      printf ("BLOAD9(I8,I1) NG\n");
   c2 = x->b1;
   if (c2==0xffffffffffffffffLL)
      printf ("BLOAD9(U8,I1) OK\n");
   else
      printf ("BLOAD9(U8,I1) NG\n");

   x->b2 = 1;
   c1 = x->b2;
   if (c1==-1)
      printf ("BLOAD9(I8,I2) OK\n");
   else
      printf ("BLOAD9(I8,I2) NG\n");
   c2 = x->b2;
   if (c2==0xffffffffffffffffLL)
      printf ("BLOAD9(U8,I2) OK\n");
   else
      printf ("BLOAD9(U8,I2) NG\n");

   x->b3 = 1;
   c1 = x->b3;
   if (c1==-1)
      printf ("BLOAD9(I8,I4) OK\n");
   else
      printf ("BLOAD9(I8,I4) NG\n");
   c2 = x->b3;
   if (c2==0xffffffffffffffffLL)
      printf ("BLOAD9(U8,I4) OK\n");
   else
      printf ("BLOAD9(U8,I4) NG\n");

   x->b4 = 1;
   c1 = x->b4;
   if (c1==1)
      printf ("BLOAD10(I8,U1) OK\n");
   else
      printf ("BLOAD10(I8,U1) NG\n");
   c2 = x->b4;
   if (c2==1)
      printf ("BLOAD10(U8,U1) OK\n");
   else
      printf ("BLOAD10(U8,U1) NG\n");

   x->b5 = 1;
   c1 = x->b5;
   if (c1==1)
      printf ("BLOAD10(I8,U2) OK\n");
   else
      printf ("BLOAD10(I8,U2) NG\n");
   c2 = x->b5;
   if (c2==1)
      printf ("BLOAD10(U8,U2) OK\n");
   else
      printf ("BLOAD10(U8,U2) NG\n");

   x->b6 = 1;
   c1 = x->b6;
   if (c1==1)
      printf ("BLOAD10(I8,U4) OK\n");
   else
      printf ("BLOAD10(I8,U4) NG\n");
   c2 = x->b6;
   if (c2==1)
      printf ("BLOAD10(U8,U4) OK\n");
   else
      printf ("BLOAD10(U8,U4) NG\n");
}

int 
scobe09 (void)
{
   struct tag
   {
      unsigned char       b1 : 1;
      unsigned short int  b2 : 3;
      unsigned long int   b3 : 5;
   } a;

   a.b1 = 0;
   if (a.b1!=0)
      printf ("***** NG *****\n");
   else
      printf ("***** OK *****\n");
   if (a.b1!=1)
      printf ("***** OK *****\n");
   else
      printf ("***** NG *****\n");

   a.b2 = 0;
   if (a.b2!=0)
      printf ("***** NG *****\n");
   else
      printf ("***** OK *****\n");
   if (a.b2!=3)
      printf ("***** OK *****\n");
   else
      printf ("***** NG *****\n");
   if (a.b2!=7)
      printf ("***** OK *****\n");
   else
      printf ("***** NG *****\n");

   a.b3 = 0;
   if (a.b3!=0)
      printf ("***** NG *****\n");
   else
      printf ("***** OK *****\n");
   if (a.b3!=1)
      printf ("***** OK *****\n");
   else
      printf ("***** NG *****\n");
   if (a.b3!=31)
      printf ("***** OK *****\n");
   else
      printf ("***** NG *****\n");
}
