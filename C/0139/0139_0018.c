#include <stdlib.h>
#include <stdio.h>
#include <math.h>
  
#include <string.h>
 
 
 
 
 
 
 

int func (void);
int 
main (void)
{
    int func01();
    int func02();
    int func03();
    int func04();
    int func05();
    int func06();
    int func07();
    int func08();
    int func09();
    int func10();
    int func11();
    int func12();
   printf("*** \n");
    func01();
    func02();
    func03();
    func04();
    func05();
    func06();
    func07();
    func08();
    func09();
    func10();
    func11();
    func12();
   printf("*** \n");
exit (0);
}
int 
func01 (void)
  {
  static int yes=1;
  static int no=0;

   printf("*** FUNC01 ** CT TEST FOR X_TREEMK ** STARTED ***\n");
{
 
 
 

   1;
   if(1)
     printf("*** FUNC01-01 *** O K ***\n");
   else
     printf("*** FUNC01-01 ***    N G    ***\n");
}
{
 
 
 
   int i=9,iii;
   iii=i<1;
   i=iii<1;
   iii=i<1;
   if(iii==0)
     printf("*** FUNC01-02 *** O K ***\n");
   else
     printf("*** FUNC01-02 ***    N G    ***\n");

}
{
 
 
 
   int i=9,iii;
   iii=i<=9;
   i=iii<=2;
   iii=i<=0;
   if(iii==0)
     printf("*** FUNC01-03 *** O K ***\n");
   else
     printf("*** FUNC01-03 ***   N G   ***\n");
}
{
 
 
 
   int i=9,iii;
   iii=i>1;
   i=iii>1;
   iii=i>1;
   if(iii==0)
     printf("*** FUNC01-04 *** O K ***\n");
   else
     printf("*** FUNC01-04 ***   N G   ***\n");
}
{
 
 
 
   int i=9,iii;
   iii=i>=9;
   i=iii>=0;
   iii=i>=2;
   if(iii==0)
     printf("*** FUNC01-05 *** O K ***\n");
   else
     printf("*** FUNC01-05 ***   N G   ***\n");
}

 
 
 
{
  int i=9,iii=0;
  iii=i==10;
  i=iii==0;
  iii=i==0;
  if(iii==0)
    printf("*** FUNC01-06 *** O K ***\n");
  else
    printf("*** FUNC01-06 ***   N G   ***\n");
}
 
 
 
{
  int i=9,iii=0;
  iii= i!=0;
  i= iii!=2;
  iii= i!=1;
  if(iii==0)
    printf("*** FUNC01-07 *** O K ***\n");
  else
    printf("*** FUNC01-07 ***   N G   ***\n");
}
 
 
 
{
  int i=0,ai=1,bi=2;
  i=ai&&1;
  bi=i&&1;
 
 
  if(bi==1)
    printf("*** FUNC01-08 *** O K ***\n");
  else
    printf("*** FUNC01-08 ***   N G   ***\n");
}
 
 
 
{
  int i=0,ai=1,bi=2;
  bi=i||0;
  ai=bi||1;
  i=ai||2;
  if(i==1)
    printf("*** FUNC01-09 *** O K ***\n");
  else
    printf("*** FUNC01-09 ***   N G   ***\n");
}
 
 
 
{
  int i=1,ai=2;
  i=ai/2;
  if(i==1)
    printf("*** FUNC01-10 *** O K ***\n");
  else
    printf("*** FUNC01-10 ***   N   G   ***\n");
}
 
 
 
{
  int i=0,ai=7;
  i=ai%4;
  if(i==3)
    printf("*** FUNC01-11 *** O K ***\n");
  else
    printf("*** FUNC01-11 ***   N   G   ***\n");
}
 
 
 
{
  int i=0,ai=1;
  i=ai<<1;
  if(i==2)
    printf("*** FUNC01-12 *** O K ***\n");
  else
    printf("*** FUNC01-12 ***   N   G   ***\n");
}
printf("*** FUNC01 *** CT TEST FOR X_TREEMK *** ENDED ***\n");
  }
 
 
 
 
 

int x;
static int y;
struct bt{
  unsigned int ba:2;
  unsigned int bb:3;
  unsigned int bc:4;
};
struct t {
  int c;
  int d;
};
int 
func02 (void)
{
  int a;
  int b;
  static int i;
  int *p;
  struct t *p1,s,ss;
  struct bt pbt1;
  extern struct bt *pbt;
  extern char str,*pc;
  void ii(),f(),f1(struct bt*,int);

printf("*** FUNC02 *** CT TEST FOR MPTEST01 *** STARTED ***\n");
  printf("\n***** MPTEST01 START *****\n");
  ii();
l1:
  b=1;
  p=&b;
  i=0;
  a=b+1;
l2:
  if (a<10)
  {
   a=*p+1+a;
   goto l2;
  }
  x=1;
  y=2;
  p=&ss.c;
l3:
  f();
  i=i+4;
  s.c=1;
  s.d=y;
  p1=&s;
  s.c=p1->d;
  y=*p;
  s.d=y;
  f1(pbt,1);
l4:
  pbt1.ba=pbt->ba;
  pbt1.bb=pbt->bb;
  if(pbt->ba!=0){
    x=i+p1->c;
    pbt1.bc=x;
  }
  pbt->bc=pbt1.bc;
  f1(&pbt1,2);
  printf("***** MPTEST01 END *****\n");
printf("*** FUNC02 *** CT TEST FOR MPTEST01 *** ENDED ***\n");
}
void 
f (void)
{
  printf("  in ''f''\n");
  return;
}

 struct bt *pbt,ppbt;
 char str,*pc;

void 
ii (void)
{
  printf("  in ''ii''\n");
  pbt=&ppbt;
  if(pbt->ba - ppbt.ba) printf("** NG <1> **\n");
  if(pbt->bb - ppbt.bb) printf("** NG <2> **\n");
  if(pbt->bc - ppbt.bc) printf("** NG <3> **\n");
  return;
}
void 
f1 (struct bt *pp, int j)
{
  static int i=0;
  static char *ncc="NG",cc[]="OK";
         char *c;
  printf("  in ''f1''\n");
  if(++i==j) c=cc;
  else       c=ncc;
  printf("  ** %s **\n",c);
}
 
 
 
 union tag1 {
   unsigned int   a;
   struct tag2 {
     char   b1;
     char   b2;
     char   b3;
     char   b4;
   } b;
   char   c[4];
 } u1;
 int 
func03 (void) {
   static char c1[]={"ok"};
   static char c2[]={"ng"};
   void   fun1(),fun2();
printf("*** FUNC03 *** CT TEST FOR SCP0302 *** STARTED ***\n");
     memcpy(u1.c,"1234",4);
     fun1();
     fun2();
     if(memcmp(u1.c,"ABCD",4)==0)
       {
         printf("%s\n",c1);
       }
     else
       {
         printf("%s\n",c2);
       }
printf("*** FUNC03 *** CT TEST FOR SCP0302 *** ENDED ***\n");
 }
 void 
fun1 (int a) {
     u1.b.b1=u1.b.b1-'0';
     u1.b.b2=u1.b.b2-'0';
     u1.b.b3=u1.b.b3-'0';
     u1.b.b4=u1.b.b4-'0';
 }
 void 
fun2 (int a) {
     u1.a=u1.a+0x40404040;
 }
 
int 
func04 (void)
  {
int yes=1;
int no=0;
printf("* FUNC04 *** CT TEST FOR X_TREEMK *** STARTED *\n");
 
 
 
{
  int i=0,ai=2;
  i=ai>>1;
  if(i==1)
    printf("*** FUNC04-01 *** O K ***\n");
  else
    printf("*** FUNC04-01 ***   N   G   ***\n");
}
 
 
 
{
  int i=0,ai=2;
  i=ai^1;
  if(i==3)
    printf("*** FUNC04-02 *** O K ***\n");
  else
    printf("*** FUNC04-02 ***   N   G   ***\n");
}
 
 
 
{
  int i=1,ai=2;
  i=ai|1;
  if(i==3)
    printf("*** FUNC04-03 *** O K ***\n");
  else
    printf("*** FUNC04-03 ***   N   G   ***\n");
}
 
 
 
{
  int i=1,ai=2;
  i=ai&2;
  if(i==2)
    printf("*** FUNC04-04 *** O K ***\n");
  else
    printf("*** FUNC04-04 ***   N   G   ***\n");
}
 
 
 
{
  int i=0,ai=2;
  i=ai*2;
  if(i==4)
    printf("*** FUNC04-05 *** O K ***\n");
  else
    printf("*** FUNC04-05 ***   N   G   ***\n");
}
 
 
 
{
  int i=1,ai=2;
  i=ai-2;
  if(i==0)
    printf("*** FUNC04-06 *** O K ***\n");
  else
    printf("*** FUNC04-06 ***   N   G   ***\n");
}
 
 
 
{
  int i=1,ai=2;
  i=ai+2;
  if(i==4)
    printf("*** FUNC04-07 *** O K ***\n");
  else
    printf("*** FUNC04-07 ***   N   G   ***\n");
}
 
 
 
{
  int ar[2];
  int i=0;
  ar[0]=0;
  ar[1]=1;
  i=ar[1];
  if(i==1)
    printf("*** FUNC04-08 *** O K ***\n");
  else
    printf("*** FUNC04-08 ***   N   G   ***\n");
}
 
 
 
{
  int i=0;
  i+=1;
  if(i==1)
    printf("*** FUNC04-09 *** O K ***\n");
  else
    printf("*** FUNC04-09 ***   N   G   ***\n");
}
 
 
 
{
  int i=2;
  i-=1;
  if(i==1)
    printf("*** FUNC04-10 *** O K ***\n");
  else
    printf("*** FUNC04-10 ***   N   G   ***\n");
}
printf("*** M3ETRE02 *** CT TEST FOR X_TREEMK *** ENDED ***\n");
  }
 
 
 
int 
func05 (void)
{
int     ga;
  int   a,b,c,d,i;
  int   fff(),(*fp)(),ii;

  fp=fff;i=0;
  ii=(*fp)(i);

  ga=1;
printf("*** FUNC05 *** CT TEST FOR MPTEST02 *** STARTED ***\n");
  printf("start mptest02\n");
  i=0;
  while(i<1)
  {
    b=ga-1;
    c=ga+1;
                    
    a=b+c;          
    if(i<1)
    {
      i=func();     
      d=b+c;        
    }
  }
  if(a==2&&d==2)
    printf("      mptest02 ok\n");
  else {
    printf("      mptest02 ng a=%d(0)\n",a);
    printf("                  d=%d(0)\n",d);
  }
  printf("end   mptest02\n");
printf("*** FUNC05 *** CT TEST FOR MPTEST02 *** ENDED ***\n");
}
int 
func (void)
{
  return 1;
}
int 
fff (void)
{
  return 1;
}
 
 
 
 union tag11 {
   unsigned int   a1;
   struct tag12 {
     char   b11;
     char   b12;
     char   b13;
     char   b14;
   } b1;
   char   c[4];
 } u11;
 int 
func06 (void) {
   static char c1[]={"ok"};
   static char c2[]={"ng"};
   void   fun11(),fun12();
printf("*** FUNC06 *** CT TEST FOR SCP0303 *** STARTED ***\n");
     memcpy(u11.c,"1234",4);
     fun11();
     fun12();
     if(memcmp(u11.c,"ABCD",4)==0)
       {
         printf("%s\n",c1);
       }
     else
       {
         printf("%s\n",c2);
       }
printf("*** FUNC06 *** CT TEST FOR SCP0303 *** ENDED ***\n");
 }
 void 
fun11 (int a) {
     u11.b1.b11=u11.b1.b11-'0';
     u11.b1.b12=u11.b1.b12-'0';
     u11.b1.b13=u11.b1.b13-'0';
     u11.b1.b14=u11.b1.b14-'0';
 }
 void 
fun12 (int a) {
     u11.a1=u11.a1+0x40404040;
 }
 
int 
func07 (void)
  {
int yes=1;
int no=0;
printf("* FUNC07 *** CT TEST FOR X_TREEMK *** STARTED *\n");
 
 
 
{
  int i=2;
  i*=2;
  if(i==4)
    printf("*** FUNC07-01 *** O K ***\n");
  else
    printf("*** FUNC07-01 ***   N   G   ***\n");
}
 
 
 
{
  int i=2;
  i/=2;
  if(i==1)
    printf("*** FUNC07-02 *** O K ***\n");
  else
    printf("*** FUNC07-02 ***   N   G   ***\n");
}
 
 
 
{
  int i=3;
  i%=2;
  if(i==1)
    printf("*** FUNC07-03 *** O K ***\n");
  else
    printf("*** FUNC07-03 ***   N   G   ***\n");
}
 
 
 
{
  int i=2;
  i>>=1;
  if(i==1)
    printf("*** FUNC07-04 *** O K ***\n");
  else
    printf("*** FUNC07-04 ***   N   G   ***\n");
}
 
 
 
{
  int i=1;
  i<<=1;
  if(i==2)
    printf("*** FUNC07-05 *** O K ***\n");
  else
    printf("*** FUNC07-05 ***   N   G   ***\n");
}
 
 
 
{
  int i=1;
  i&=2;
  if(i==0)
    printf("*** FUNC07-06 *** O K ***\n");
  else
    printf("*** FUNC07-06 ***   N   G   ***\n");
}
 
 
 
{
  int i=1;
  i^=2;
  if(i==3)
    printf("*** FUNC07-07 *** O K ***\n");
  else
    printf("*** FUNC07-07 ***   N   G   ***\n");
}
 
 
 
{
  int i=1;
  i|=2;
  if(i==3)
    printf("*** FUNC07-08 *** O K ***\n");
  else
    printf("*** FUNC07-08 ***   N   G   ***\n");
}
 
 
 
{
  int i=0;
  i=1;
  if(i==1)
    printf("*** FUNC07-09 *** O K ***\n");
  else
    printf("*** FUNC07-09 ***   N   G   ***\n");
}
 
 
 
{
  int i=0;
  i=-1;
  if(i==-1)
    printf("*** FUNC07-10 *** O K ***\n");
  else
    printf("*** FUNC07-10 ***   N   G   ***\n");
}
printf("*** FUNC07 *** CT TEST FOR X_TREEMK *** ENDED ***\n");
  }
 
 
 
 
 
struct  t1 {
   int        a;
   char       b;
   struct t1 *tp;
};

struct  t1 t1a,t1b,t1c;
int 
func08 (void)
{
   int funce(char *);
   int func1(struct t1 *),init(int),chk(struct t1 *);
   char  cc;
   int   i,rtc;
   struct t1 *t1p;

printf("*** FUNC08 *** CT TEST FOR MPTEST03 *** STARTED ***\n");
   printf("\n***** MPTEST03 START *****\n");
   for( i=0 ; init(i) ; i++);
   for( t1p=&t1a ; t1p != 0 ; t1p = t1p->tp) {
      rtc = func1(t1p);
      if(rtc == -1) {
         funce("in main");
         goto l1;
      }
      rtc = chk(t1p);
   }
l1:
   if(rtc == 0){
     for(cc='a',t1p=&t1a ; t1p!=0 ; t1p=t1p->tp,cc++){
       printf("  ( t1%c )  a=%d, b=%c\n",
                     cc,t1p->a,t1p->b);
     }
     printf("***** MPTEST03 OK ***** \n");
   }
printf("*** FUNC08 *** CT TEST FOR MPTEST03 *** ENDED ***\n");
}

int init(int i)
 
{
   switch(i){
      case 0:
         t1a.a = 0;
         t1a.b ='a';
         t1a.tp = &t1b;
         break;
      case 1:
         t1b.a = 1;
         t1b.b = 'b';
         t1b.tp = &t1c;
         break;
      case 2:
         t1c.a = 2;
         t1c.b = 'c';
         t1c.tp = 0;
         break;
      default:
         return(0);
   }
   return(1);
}

int func1(struct t1 *tp)
 
{
   if(tp == 0)
      return(-1);
   switch(tp->a){
      case 0:
         if(tp->b != 'a')
            return(-1);
         tp->b = 'x';
         return(0);
      case 1:
         if(tp->b != 'b')
            return(-1);
         tp->b = 'y';
         return(0);
      case 2:
         if(tp->b != 'c')
            return(-1);
         tp->b = 'z';
         return(0);
      default:
         return(-1);
   }
}

int funce(char *str)
 
{
   printf("***** MPTEST03 NG *** %s ***** \n",str);
   return(-1);
}

int chk(struct t1 *ptr)
 
{
   static char rdata[3] = {'x','y','z'};

   if(ptr == 0)
      return(funce("in chk 1"));
   if(ptr->a >= 0 && ptr->a < 3){
      if(rdata[ptr->a] == ptr->b) {
         printf(" ** OK *** t1.a = %d *** \n",ptr->a);
         printf(" ** OK *** t1.b = %c *** \n",ptr->b);
         return(0);
      } else {
         printf("     *** t1.a = %d *** \n",ptr->a);
         printf("     *** t1.b = %c *** \n",ptr->b);
         return(funce("in chk 2"));
      }
   } else {
      return(funce("in chk 3"));
   }
   return(0);
}
 
 
 
 union tag21 {
   unsigned int   a;
   struct tag22 {
     char   b1;
     char   b2;
     char   b3;
     char   b4;
   } b2;
   char   c[4];
 } u21;
 int 
func09 (void) {
   static char c1[]={"ok"};
   static char c2[]={"ng"};
   void   fun21(),fun22();
printf("*** FUNC09 *** CT TEST FOR SCPO304 *** STARTED ***\n");
     memcpy(u21.c,"1234",4);
     fun21();
     fun22();
     if(memcmp(u21.c,"ABCD",4)==0)
       {
         printf("%s\n",c1);
       }
     else
       {
         printf("%s\n",c2);
       }
printf("*** FUNC09 *** CT TEST FOR SCPO304 *** ENDED ***\n");
 }
 void 
fun21 (void) {
     u21.b2.b1=u21.b2.b1-'0';
     u21.b2.b2=u21.b2.b2-'0';
     u21.b2.b3=u21.b2.b3-'0';
     u21.b2.b4=u21.b2.b4-'0';
 }
 void 
fun22 (void) {
     u21.a=u21.a+0x40404040;
 }
 
 
int 
func10 (void)
  {
int yes=1;
int no=0;
printf("*** FUNC10 *** CT TEST FOR X_TREEMK *** STARTED *\n");
 
 
 
{
  int i=1;
  i=!0;
  if(i==1)
    printf("*** FUNC10-01 *** O K ***\n");
  else
    printf("*** FUNC10-01 ***   N   G   ***\n");
}
 
 
 
{
  int i=0;
  i=~1;
  if(i==(-2))
    printf("*** FUNC10-02 *** O K ***\n");
  else
    printf("*** FUNC10-02 ***   N   G   ***\n");
}
 
 
 
{
  int i=0,bi=2;
  i=0?1:bi;
  if(i==2)
    printf("*** FUNC10-03 *** O K ***\n");
  else
    printf("*** FUNC10-03 ***   N   G   ***\n");
}
 
 
 
{
  int i=0,ai=1,bi=2;
  i=ai?bi:1;
  if(i==2)
    printf("*** FUNC10-04 *** O K ***\n");
  else
    printf("*** FUNC10-04 ***   N   G   ***\n");
}
 
 
 
{
  int i=0;
  i=(1);
  if(i==1)
    printf("*** FUNC10-05 *** O K ***\n");
  else
    printf("*** FUNC10-05 ***   N   G   ***\n");
}
 
 
 
{
  int i=0;
  i=+1;
  if(i==1)
    printf("*** FUNC10-06 *** O K ***\n");
  else
    printf("*** FUNC10-06 ***   N   G   ***\n");
}
 
 
 
{
  int ff1();
  int a=1;
  int b=0;
  b=ff1(a,1);
  if(b==2)
    printf("*** FUNC10-07 *** O K ***\n");
  else
    printf("*** FUNC10-07 ***   N   G   ***\n");
}
printf("*** FUNC10 *** CT TEST FOR X_TREEMK *** ENDED ***\n");
  }
int 
ff1 (int a, int b)
{
  int c=0;
  c=a+b;
  return(c);
}
 
 

int 
func11 (void)
{
     int      ary1[5][5][5];
     int      ary2[5][5][5];
     int      d1,ngf,d01,rcd,i,j,k;
     int      funca(int i,int j,int k);
     int      edit(char[],int);
     int      stfunc(int,int);
     int      funcst(int d01,int d1);
     char     str[3];
     static char   msg[11] = "*** OK ***";

printf("*** FUNC11 *** CT TEST FOR MPTEST04 *** STARTED ***\n");
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
              d1=funca(i,j,k);
              d01 = ary1[i][j][k] * 3;
              edit(str,funcst(d01,d1));
              if( strncmp(str,"NG",3) == 0 ) {
                 strncpy(msg+4,str,2);
                 printf("*** ary1[%d][%d][%d] = %d  %s \n",
                                    i,j,k,ary1[i][j][k],msg);
                 ngf = 1;
                 goto l99;
              }
           }
           for(k=0;k<5;k++){
              rcd = 0;
              if(stfunc(ary2[i][j][k],rcd) == j){
                 edit(str,0);
              } else {
                 printf("  rcd = %d \n",rcd);
                 edit(str,1);
                 strncpy(msg+4,str,2);
                 printf("*** ary2[%d][%d][%d] = %d  %s \n",
                                    i,j,k,ary2[i][j][k],msg);
                 ngf = 1;
                 goto l99;
              }
           }
        }
     }
     if(ngf == 0){
        edit(msg+4,ngf);
     }
l99:
     printf("***** MPTEST04 %2s END *****\n",msg+4);
printf("*** FUNC11 *** CT TEST FOR MPTEST04 *** ENDED ***\n");
}

int 
funca (int pr1, int pr2, int pr3)
{
   int rtn;
   int ssfunc(int pr1,int pr2,int pr3);
     rtn = ssfunc(pr1,pr2,pr3);
     return(rtn);
}

int 
funcss (int i)
{
   return(i*3);
}

int 
ssfunc (int p1, int p2, int p3)
{
   return(funcss(p1)+funcss(p2)+funcss(p3));
}

int 
edit (char *s, int i)
{
     if(i==0)
        strcpy(s,"OK");
     else
        strcpy(s,"NG");
     return(1);
}

int 
funcb (int *a, int s)
{
   int i;

     for(i=0;i<s;i++)
       *(a+i)=i;
     return(0);
}

int 
fun (int arg1, int arg2)
{
     int ary[5],i;
     funcb(ary,5);
     for(i=0;i<5;i++){
        if(ary[i] == arg1)
           return(i);
     }
     return(-1);
}

int 
funcst (int i, int j)
{
     return(i-j);
}

int 
stfunc (int i, int j)
{
   int w;
     w=fun(i,j)+j;
     return(w);
}
 
 static int    funz1();
 static void   ok();
 int    za;
 int 
func12 (void) {
   int    b;
   void   ng();
printf("*** FUNC12 *** CT TEST FOR SCPPR01 *** STARTED ***\n");
     za=10;
     b=funz1(za);
     if(za==b)
       {
         ok();
       }
     else
       {
         ng();
       }
printf("*** FUNC12 *** CT TEST FOR SCPPR01 *** ENDED ***\n");
 }
 static int 
funz1 (void) {
     return(za);
 }
 static void 
ok (void) {
   static char c1[]={"ok"};
     printf("%s\n",c1);
 }
 void 
ng (void) {
   static char c2[]={"ng"};
     printf("%s\n",c2);
 }
