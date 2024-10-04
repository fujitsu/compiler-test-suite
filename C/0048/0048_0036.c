
#include <stdlib.h>
#include <string.h>
#include <stdio.h>
int main()
{
    int mptest05();
    int m3etre05();
    int scpsi01();
    int scpsi02();
    int m3etre06();
    int mptest07();
    printf("***  *** TEST FOR COMMON ******* STARTED **\n");
    mptest05();
    m3etre05();
    scpsi01();
    scpsi02();
    m3etre06();
    mptest07();
  printf("\n***  *** TEST FOR COMMON ******* ENDED **\n");
}


 static int data[20]={18,17,20,9,4,6,1,8,11,7,5,14,19,2,12,3,10,
                           13,15,16};
 int  w_da[20];
 struct st1 {
     int *da_p;
     int *wdap;
     int  n;
 };
 int l_s(struct st1),s_l(struct st1),ave(int * , int);
 int ck(struct st1 *,char,int);
 int errck(int,char),erjl(int *),erjs(int *),erjv(int);

int 
mptest05 (void)
 {
   struct st1 st;
   int      i,rst[3];
   char *rt;
   static char *sok="OK",
               *sng="NG";

      printf("\n***** MPTEST05 START ***** \n");
      rt=sok;
      st.n=20;
      st.da_p=data;
      st.wdap=w_da;
      memcpy((char *)w_da,(char *)data,80);
      rst[0]=l_s(st);
      memcpy((char *)w_da,(char *)data,80);
      rst[1]=s_l(st);
      memcpy((char *)w_da,(char *)data,80);
      rst[2]=ave(st.wdap,st.n);
      for(i=0;i<3;i++){
         if(rst[i]!=0){
            printf("*** NG  %d \n",i);
            rt=sng;
         }else{
            printf("*** OK  %d \n",i);
         }
      }
      printf("***** MPTEST05  %s ***** \n",rt);
      printf("\n***** MPTEST05 END ***** \n");
}

int l_s(struct st1 st)
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
    return(ck(&st,'l',0));
}

int s_l(struct st1 st)
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
    return(ck(&st,'s',0));
}

int ave(int *da,int n)
{
     int s,av,i;
     s=0;
     for(i=0;i<n;i++)
          s=*(da+i)+s;
     av=s*10/n;
     return(ck(0,'a',av));
}

int ck(struct st1 *st,char str,int var)
{
     switch(str){
        case 'l':
          return(errck(erjl(st->wdap),str));
        case 's':
          return(errck(erjs(st->wdap),str));
        case 'a':
          return(errck(erjv(var),str));
        default:
          return(-1);
    }
}

int errck(int jg,char ss)
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

int erjs(int *p)
{
   int i,j;
   for(i=0;i<20;i++){
      if(*(p+i)==i+1) continue;
      else{
        printf(" '' ERJS ''\n");
        for(j=0;j<20;j++)
          printf("   %d = %d,",j,*(p+j));
        printf("\n");
        return(1);
      }
   }
   return(0);
}

int erjl(int *p)
{
   int i,j,k;
   for(i=19,j=1;i>=0;i--,j++){
      if(*(p+i)==j) continue;
      else{
        printf(" '' IN ERJL ''\n");
        for(k=0;k<20;k++)
          printf("   %d = %d,",k,*(p+k));
        printf("\n");
        return(1);
      }
   }
   return(0);
}

int erjv(int a)
{
   if(a==105) return(0);
   printf(" '' IN ERJV ''\n");
   printf("    AVE.=%d \n",a);
   return(1);
}
int 
m3etre05 (void)
  {
  static int yes=1;
  static int no=0;

   printf("*** M3ETRE05 ** MK3 TEST FOR X_TREEMK ** STARTED ***\n");
{
   int i=0;
   i=i+1;
   if(i)
     printf("*** M3ETRE05-01 *** O K ***\n");
   else
     printf("*** M3ETRE05-01 ***    N G    ***\n");

}
{
   int i=9,iii=0;
   i=1<iii;
   if(iii==no)
     printf("*** M3ETRE05-02 *** O K ***\n");
   else
     printf("*** M3ETRE05-02 ***    N G    ***\n");

}
{
   int i=0,iii=0;
   iii=i<=iii;
   if(iii)
     printf("*** M3ETRE05-03 *** O K ***\n");
   else
     printf("*** M3ETRE05-03 ***   N G   ***\n");
}
{
   int i=9,iii=0;
   iii=1>i;
   if(iii==no)
     printf("*** M3ETRE05-04 *** O K ***\n");
   else
     printf("*** M3ETRE05-04 ***   N G   ***\n");
}
{
   int i=9,iii=0;
   iii=8>=i;
   if(iii==no)
     printf("*** M3ETRE05-05 *** O K ***\n");
   else
     printf("*** M3ETRE05-05 ***   N G   ***\n");
}

{
  int i=9,iii=0;
  iii=8==i;
  if(iii==no)
    printf("*** M3ETRE05-06 *** O K ***\n");
  else
    printf("*** M3ETRE05-06 ***   N G   ***\n");
}
{
  int i=9,iii=0;
  iii= 0!=i;
  if(iii)
    printf("*** M3ETRE05-07 *** O K ***\n");
  else
    printf("*** M3ETRE05-07 ***   N G   ***\n");
}
{
  int i=0,bi=2;
  bi=1&&i;
  if(bi==no)
    printf("*** M3ETRE05-08 *** O K ***\n");
  else
    printf("*** M3ETRE05-08 ***   N G   ***\n");
}
{
  int i=0,ai=1,bi=2;
  i=ai||2;
  if(i)
    printf("*** M3ETRE05-09 *** O K ***\n");
  else
    printf("*** M3ETRE05-09 ***   N G   ***\n");
}
{
  int i=0,ai=2;
  i=ai/ai;
  if(i)
    printf("*** M3ETRE05-10 *** O K ***\n");
  else
    printf("*** M3ETRE05-10 ***   N   G   ***\n");
}
{
  int i=0,ai=4;
  i=7%ai;
  if(i==3)
    printf("*** M3ETRE05-11 *** O K ***\n");
  else
    printf("*** M3ETRE05-11 ***   N   G   ***\n");
}
{
  int i=0,ai=1;
  i=1<<ai;
  if(i==2)
    printf("*** M3ETRE05-12 *** O K ***\n");
  else
    printf("*** M3ETRE05-12 ***   N   G   ***\n");
}
printf("*** M3RTRE05 *** TEST FOR X_TREEMK *** ENDED ***\n");
  }
int 
scpsi01 (void)
{
  char                    a;
  char               h[2];
  short int               b;
  unsigned int            c;
  long long int           d;
  long double             e;
  struct tag1
   { int el1;
     char el2;
   } str1 ;
  union ux
   { int el3;
     char el4;
   } str2 ;

  printf("\n********** SCPSI01 TEST START **********\n");

       a=12;
       h[1]='t';
       b=-15;
       c=5;
       d=10;
       e=7;
       str1.el1=4;
       str2.el3=9;

  if (a == 12 && b == -15 && c == 5 && d == 10 && e == 7)
      printf("***** SCPSI01 - 01 ***** O   K *****\n");
  else
      printf("***** SCPSI01 - 01 ***** N   G *****\n");
  if (h[1] == 't')
      printf("***** SCPSI01 - 02 ***** O   K *****\n");
  else
      printf("***** SCPSI01 - 02 ***** N   G *****\n");
  if (str1.el1 == 4 && str2.el3 == 9)
      printf("***** SCPSI01 - 03 ***** O   K *****\n");
  else
      printf("***** SCPSI01 - 03 ***** N   G *****\n");

  printf("********** SCPSI01 TEST  END  **********\n");
}
   struct  t1                   {
     int   a[10][10]        ;
     int   *b,*c,d              ;
     char  e,*f                 ;
     int   a1[4]              ;
     }    p                    ;
   static char
    ng_msg []={"******* MPTEST06 LAST NG *************"};
   static char
    ok_msg []={"******* MPTEST06 LAST OK *************"}  ;
   int  g,h,*i,func2(),b1=0,b2=50,b3=0,b4=0,err=0;
   void func1(),errcheck();

int 
scpsi02 (void)
{
  static char sa[5]="line";
  static unsigned short int      sb;
  static float                   sc;
  static long long int           sd;
  static long double             se;
  static struct name
    {char * first;
      char * second;
    } str1={
       "abcdef",
       "ghijklmn",
       };
  static union ux
    {int el1;
      char el2;
    } str2;

  printf("\n********** SCPSI02 TEST START **********\n");

       sb=4;
       sc=-3;
       sd=6;
       se=7;
       str2.el1=5;

  if (sb == 4 && sc == -3 && sd == 6 && se == 7 && str2.el1 == 5)
      printf("***** SCPSI02 - 01 ***** O   K *****\n");
  else
      printf("***** SCPSI02 - 01 ***** N   G *****\n");
  if (strcmp(sa,"line") == 0)
      printf("***** SCPSI02 - 02 ***** O   K *****\n");
  else
      printf("***** SCPSI02 - 02 ***** N   G *****\n");
  if (strcmp(str1.first,"abcdef") == 0)
      printf("***** SCPSI02 - 03 ***** O   K *****\n");
  else
      printf("***** SCPSI02 - 03 ***** N   G *****\n");

  printf("********** SCPSI02 TEST  END  **********\n");
}
int 
m3etre06 (void)
  {
int yes=1;
int no=0;
printf("\n* M3ETRE06 *** MK3 TEST FOR X_TREEMK *** STARTED *\n");
{
  int i=0,ai=1;
  i=2>>ai;
  if(i==1)
    printf("*** M3ETRE06-01 *** O K ***\n");
  else
    printf("*** M3ETRE06-01 ***   N   G   ***\n");
}
{
  int i=0,ai=1;
  i=2^ai;
  if(i==3)
    printf("*** M3ETRE06-02 *** O K ***\n");
  else
    printf("*** M3ETRE06-02 ***   N   G   ***\n");
}
{
  int i=1,ai=1;
  i=2|ai;
  if(i==3)
    printf("*** M3ETRE06-03 *** O K ***\n");
  else
    printf("*** M3ETRE06-03 ***   N   G   ***\n");
}
{
  int i=1,ai=2;
  i=2&ai;
  if(i==2)
    printf("*** M3ETRE06-04 *** O K ***\n");
  else
    printf("*** M3ETRE06-04 ***   N   G   ***\n");
}
{
  int i=0,ai=2;
  i=2*ai;
  if(i==4)
    printf("*** M3ETRE06-05 *** O K ***\n");
  else
    printf("*** M3ETRE06-05 ***   N   G   ***\n");
}
{
  int i=1,ai=2;
  i=3-ai;
  if(i==1)
    printf("*** M3ETRE06-06 *** O K ***\n");
  else
    printf("*** M3ETRE06-06 ***   N   G   ***\n");
}
{
  int i=1,ai=2;
  i=2+ai;
  if(i==4)
    printf("*** M3ETRE06-07 *** O K ***\n");
  else
    printf("*** M3ETRE06-07 ***   N   G   ***\n");
}
{
  int i=0;
  struct tag {
               int a;
               char b;
             }*p,st;
  p=&st;
  p->a=1;
  i=p->a;
  if(i==1)
    printf("*** M3ETRE06-08 *** O K ***\n");
  else
    printf("*** M3ETRE06-08 ***   N   G   ***\n");
}
{
  int ar[2];
  int i=0;
  ar[i]=1;
  if(ar[i]==1)
    printf("*** M3ETRE06-09 *** O K ***\n");
  else
    printf("*** M3ETRE06-09 ***   N   G   ***\n");
}
{
  int i=1;
  struct tag {
               int a;
               char b;
             }c;
  c.a=i;
  if(c.a==1)
    printf("*** M3ETRE06-10 *** O K ***\n");
  else
    printf("*** M3ETRE06-10 ***   N   G   ***\n");
}
{
  int i=0,iii=1;
  i+=iii;
  if(i==1)
    printf("*** M3ETRE06-11 *** O K ***\n");
  else
    printf("*** M3ETRE06-11 ***   N   G   ***\n");
}
{
  int i=2,a=1;
  i-=a;
  if(i==1)
    printf("*** M3ETRE06-12 *** O K ***\n");
  else
    printf("*** M3ETRE06-12 ***   N   G   ***\n");
}
printf("*** M3ETRE06 *** MK3 TEST FOR X_TREEMK *** ENDED ***\n");
  }

   struct  sta1  {
      int  st_a;
      int  st_b;
      int  st_c;
      struct sta1 *st_nxt;
   };
   int  vt(struct sta1 *,char);
   int  ut(struct sta1 *);
   int  ht(struct sta1 *);
   void errpr(int);

int 
mptest07 (void)
 {
    struct  sta1  st[10], *stp;
    int          i,totlv,totlva,totlvb,totlvc,totlu,totlh;

    printf("\n***** MPTEST07  START *****\n");
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

  int vt(struct sta1 *ptr,char c)
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
ut (struct sta1 *st)
{
    int total;

       if(st == 0) errpr(3);
       total = st->st_a + st->st_b + st->st_c;
       return(total);
}

 int 
ht (struct sta1 *st)
{
   int total,wt;
   struct sta1 *pp;

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
          printf("  *** NG  IN 'vt'''\n");
          break;
        case 3:
          printf("  *** NG  IN 'ut'''\n");
          break;
        case 4:
          printf("  *** NG  IN 'ht'''\n");
          break;
        default:
          cd = -1;
      }
      printf("***** MPTEST07 NG ***** code = %d",cd);
      exit(0);
 }
