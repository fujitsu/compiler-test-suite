#include <stdio.h>
#include <string.h>
int stfunc (int i, int j);
int func (void);
int m3etre60 (void);
int m3etre59 (void);
int m3etre58 (void);
int m3etre57 (void);
int m3etre56 (void);
int m3etre55 (void);
int m3etre54 (void);
int m3etre53 (void);
int m3etre52 (void);
int m3etre51 (void);
int scrlc11 (void);
int scrlc09 (void);
int scrlc04 (void);
int mptest04 (void);
int mptest03 (void);
int mptest01 (void);
int mptest02 (void);
int main()
{
    printf("***  *** TEST FOR COMMON *** STARTED ***\n");
    mptest01();
    mptest02();
    mptest03();
    mptest04();
    scrlc04();
    scrlc09();
    scrlc11();
   m3etre51();
   m3etre52();
   m3etre53();
   m3etre54();
   m3etre55();
   m3etre56();
   m3etre57();
   m3etre58();
   m3etre59();
   m3etre60();
    printf("\n***  *** TEST FOR COMMON *** ENDED ***\n");
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
mptest01 (void)
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
  }else{
  }
  pbt->bc=pbt1.bc;
  f1(&pbt1,2);
  printf("***** MPTEST01 END *****\n");
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
     unsigned char   b1;
     unsigned char   b2;
     unsigned char   b3;
     unsigned char   b4;
   } b;
   unsigned char   c[4];
 } u1;
int 
mptest02 (void)
{
int     ga;
  int   a,b,c,d,i;
  int   fff(),(*fp)(),ii;

  fp=fff;i=0;
  ii=(*fp)(i);

  ga=1;
  printf("\nstart mptest02\n");
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
struct  t1 {
   int        a;
   char       b;
   struct t1 *tp;
};

struct  t1 t1a,t1b,t1c;
int 
mptest03 (void)
{
   int funce(char *);
   int func1(struct t1 *),init(int),chk(struct t1 *);
   char  cc;
   int   i,rtc;
   struct t1 *t1p;

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

int 
mptest04 (void)
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
int 
scrlc04 (void)
{
union tag {
             int a;
             char b;
          } t1;
static char c[]="abcd";
int i,j;

for(i = 0; i < 4; i++)
{
  t1.b = c[i];
  printf("b = %c  ",t1.b);
#if _WIN32 || __i386__ || __i386 || __x86_64__ || __aarch64__
  t1.a = t1.a+0x00000001;
  j=t1.a;
#else
  t1.a = t1.a+0x01000000;
  j=t1.a>>24;
#endif
  printf("a = %c \n",(char)j);

  if((char)j==t1.b) printf("\n ----- ok ----- \n");
  else                   printf(" ----- ng ----- \n");

}
}

struct tagx {
             int a;
             short int b;
           };

int glb;

int 
scrlc09 (void)
{
  struct tagx x,y;
  int i,j;
  glb=2;

x.a=x.b=y.a=y.b=glb;

for(i=0;i<5;i++)
{
  x.a=i+1;
  x.b=x.a+2;
  j=x.b+glb;
  y.a=i+glb;
  y.b=y.a+x.a;
  j=y.b+glb;
  x=y;

  if(y.a==x.a) printf(" ----- ok1 ----- \n");
  else         printf(" ----- ng1 ----- \n");

  if(y.b==x.b) printf(" ----- ok2 ----- \n");
  else         printf(" ----- ng2 ----- \n");

}

}
struct tag {
             int a;
             short int b;
           };

int glb;

int 
scrlc11 (void)
{
  struct tag x,subs();
  int i,j;

for(i=0;i<4;i++)
{
  x.a=i+1;
  x.b=x.a+2;
  j=x.a+glb;
  x=subs();

  if(x.a==3 && x.b==2) printf(" ----- ok ----- \n");
  else                 printf(" ----- ng ----- \n");

  j=x.a+i;
  x.a=x.b+1;
}
}

struct tag 
subs (void)
{
struct tag str;

str.a=3;
str.b=2;

return(str);
}
int 
m3etre51 (void)
  {
printf("\n*** M3ETRE51 ** MK3 TEST FOR X_TREEMK **** STARTED \n");
{
  char a=1;
  ++a;
  if(a==2)
    printf("*** M3ETRE51-01 *****     O    K     *****\n");
  else
    printf("*** M3ETRE51-01 *** N G ***\n");
}
{
  int i=1;char a=0;
  i=i<++a;
  if(i==0&a==1)
    printf("*** M3ETRE51-02 *****     O    K     *****\n");
  else
    printf("*** M3ETRE51-02 *** N G ***\n");
}
{
  int i=2;char a=0;
  i=i<=++a;
  if(i==0&a==1)
    printf("*** M3ETRE51-03 *****     O    K     *****\n");
  else
    printf("*** M3ETRE51-03 *** N G ***\n");
}
{
  int i=2;char a=0;
  i=i>++a;
  if(i==1&a==1)
    printf("*** M3ETRE51-04 *****     O    K     *****\n");
  else
    printf("*** M3ETRE51-04 *** N G ***\n");
}
{
  int i=2;char a=0;
  i=i>=++a;
  if(i==1&a==1)
    printf("*** M3ETRE51-05 *****     O    K     *****\n");
  else
    printf("*** M3ETRE51-05 *** N G ***\n");
}
{
  int i=2;char a=0;
  i=i==++a;
  if(i==0&a==1)
    printf("*** M3ETRE51-06 *****     O    K     *****\n");
  else
    printf("*** M3ETRE51-06 *** N G ***\n");
}
{
  int i=2;char a=0;
  i=i!=++a;
  if(i==1&a==1)
    printf("*** M3ETRE51-07 *****     O    K     *****\n");
  else
    printf("*** M3ETRE51-07 *** N G ***\n");
}
{
  int i=2;char a=0;
  i=i&&++a;
  if(i==1&a==1)
    printf("*** M3ETRE51-08 *****     O    K     *****\n");
  else
    printf("*** M3ETRE51-08 *** N G ***\n");
}
{
  int i=2;char a=0;
  i=i||++a;
  if(i==1&a==0)
    printf("*** M3ETRE51-09 *****     O    K     *****\n");
  else
    printf("*** M3ETRE51-09 *** N G ***\n");
}
{
  int i=2;char a=1;
  i=i/++a;
  if(i==1&a==2)
    printf("*** M3ETRE51-10 *****     O    K     *****\n");
  else
    printf("*** M3ETRE51-10 *** N G ***\n");
}
printf("*** M3ETRE51 ** MK3 TEST FOR X_TREEMK **** ENDED \n");
  }
int 
m3etre52 (void)
  {
printf("\n*** M3ETRE52 ** MK3 TEST FOR X_TREEMK **** STARTED \n");
{
  int i=2;char a=1;
  i=i%++a;
  if(i==0&a==2)
    printf("*** M3ETRE52-01 *****     O    K     *****\n");
  else
    printf("*** M3ETRE52-01 *** N G ***\n");
}
{
  int i=2;char a=1;
  i=i<<++a;
  if(i==8&a==2)
    printf("*** M3ETRE52-02 *****     O    K     *****\n");
  else
    printf("*** M3ETRE52-02 *** N G ***\n");
}
{
  int i=8;char a=1;
  i=i>>++a;
  if(i==2&a==2)
    printf("*** M3ETRE52-03 *****     O    K     *****\n");
  else
    printf("*** M3ETRE52-03 *** N G ***\n");
}
{
  int i=2;char a=1;
  i=i^++a;
  if(i==0&a==2)
    printf("*** M3ETRE52-04 *****     O    K     *****\n");
  else
    printf("*** M3ETRE52-04 *** N G ***\n");
}
{
  int i=1;char a=1;
  i=i|++a;
  if(i==3&a==2)
    printf("*** M3ETRE52-05 *****     O    K     *****\n");
  else
    printf("*** M3ETRE52-05 *** N G ***\n");
}
{
  int i=1;char a=1;
  i=i&++a;
  if(i==0&a==2)
    printf("*** M3ETRE52-06 *****     O    K     *****\n");
  else
    printf("*** M3ETRE52-06 *** N G ***\n");
}
{
  int i=1;char a=1;
  i=i*++a;
  if(i==2&a==2)
    printf("*** M3ETRE52-07 *****     O    K     *****\n");
  else
    printf("*** M3ETRE52-07 *** N G ***\n");
}
{
  int i=1;char a=1;
  i=i-++a;
  if(i==-1&a==2)
    printf("*** M3ETRE52-08 *****     O    K     *****\n");
  else
    printf("*** M3ETRE52-08 *** N G ***\n");
}
{
  int i=1;char a=1;
  i=i+ ++a;
  if(i==3&a==2)
    printf("*** M3ETRE52-09 *****     O    K     *****\n");
  else
    printf("*** M3ETRE52-09 *** N G ***\n");
}
{
  int i=1;char a=1;
  static int arr[]={1,2,3};
  i=arr[++a];
  if(i==3&a==2)
    printf("*** M3ETRE52-10 *****     O    K     *****\n");
  else
    printf("*** M3ETRE52-10 *** N G ***\n");
}
printf("*** M3ETRE52 ** MK3 TEST FOR X_TREEMK **** ENDED \n");
  }
int 
m3etre53 (void)
  {
printf("\n*** M3ETRE53 ** MK3 TEST FOR X_TREEMK **** STARTED \n");
{
  int i=1;char a=1,b=0;
  static int arr[]={1,2,4};
  i=(arr[a]++);
  b=arr[a];
  if(i==2&a==1&b==3)
    printf("*** M3ETRE53-01 *****     O    K     *****\n");
  else
    printf("*** M3ETRE53-01 *** N G ***\n");
}
{
  int i=1;char a=1;
  i+= ++a;
  if(i==3&a==2)
    printf("*** M3ETRE53-02 *****     O    K     *****\n");
  else
    printf("*** M3ETRE53-02 *** N G ***\n");
}
{
  int i=1;char a=1;
  i-= ++a;
  if(i==-1&a==2)
    printf("*** M3ETRE53-03 *****     O    K     *****\n");
  else
    printf("*** M3ETRE53-03 *** N G ***\n");
}
{
  int i=1;char a=1;
  i*= ++a;
  if(i==2&a==2)
    printf("*** M3ETRE53-04 *****     O    K     *****\n");
  else
    printf("*** M3ETRE53-04 *** N G ***\n");
}
{
  int i=2;char a=1;
  i/= ++a;
  if(i==1&a==2)
    printf("*** M3ETRE53-05 *****     O    K     *****\n");
  else
    printf("*** M3ETRE53-05 *** N G ***\n");
}
{
  int i=2;char a=1;
  i%= ++a;
  if(i==0&a==2)
    printf("*** M3ETRE53-06 *****     O    K     *****\n");
  else
    printf("*** M3ETRE53-06 *** N G ***\n");
}
{
  int i=4;char a=1;
  i>>= ++a;
  if(i==1&a==2)
    printf("*** M3ETRE53-07 *****     O    K     *****\n");
  else
    printf("*** M3ETRE53-07 *** N G ***\n");
}
{
  int i=4;char a=1;
  i<<= ++a;
  if(i==16&a==2)
    printf("*** M3ETRE53-08 *****     O    K     *****\n");
  else
    printf("*** M3ETRE53-08 *** N G ***\n");
}
{
  int i=4;char a=1;
  i&= ++a;
  if(i==0&a==2)
    printf("*** M3ETRE53-09 *****     O    K     *****\n");
  else
    printf("*** M3ETRE53-09 *** N G ***\n");
}
{
  int i=4;char a=1;
  i^= ++a;
  if(i==6&a==2)
    printf("*** M3ETRE53-10 *****     O    K     *****\n");
  else
    printf("*** M3ETRE53-10 *** N G ***\n");
}
printf("*** M3ETRE53 ** MK3 TEST FOR X_TREEMK **** ENDED \n");
  }
int 
m3etre54 (void)
  {
printf("\n*** M3ETRE54 ** MK3 TEST FOR X_TREEMK **** STARTED \n");
{
  int i=4;char a=1;
  i|= ++a;
  if(i==6&a==2)
    printf("*** M3ETRE54-01 *****     O    K     *****\n");
  else
    printf("*** M3ETRE54-01 *** N G ***\n");
}
{
  int i=4;char a=1;
  i= ++a;
  if(i==2&a==2)
    printf("*** M3ETRE54-02 *****     O    K     *****\n");
  else
    printf("*** M3ETRE54-02 *** N G ***\n");
}
{
  int i=4;char a=1;
  i= - ++a;
  if(i==-2&a==2)
    printf("*** M3ETRE54-03 *****     O    K     *****\n");
  else
    printf("*** M3ETRE54-03 *** N G ***\n");
}
{
  int i=4;char a=1;
  i= ! ++a;
  if(i==0&a==2)
    printf("*** M3ETRE54-04 *****     O    K     *****\n");
  else
    printf("*** M3ETRE54-04 *** N G ***\n");
}
{
  int i=4;char a=0;
  i=~ ++a;
  if(i==-2&a==1)
    printf("*** M3ETRE54-05 *****     O    K     *****\n");
  else
    printf("*** M3ETRE54-05 *** N G ***\n");
}
{
  int i=4;char a=0;
  i=(i>0)?++a:0;
  if(i==1)
    printf("*** M3ETRE54-06 *****     O    K     *****\n");
  else
    printf("*** M3ETRE54-06 *** N G ***\n");
}
{
  int i=4;char a=0;
  i=(i<0)?0:++a;
  if(i==1)
    printf("*** M3ETRE54-07 *****     O    K     *****\n");
  else
    printf("*** M3ETRE54-07 *** N G ***\n");
}
{
  int i=4;char a=0;
  i=i+(++a);
  if(i==5)
    printf("*** M3ETRE54-08 *****     O    K     *****\n");
  else
    printf("*** M3ETRE54-08 *** N G ***\n");
}
{
  int i=4;char a=0;
  i=(a)++;
  if(i==0&a==1)
    printf("*** M3ETRE54-09 *****     O    K     *****\n");
  else
    printf("*** M3ETRE54-09 *** N G ***\n");
}
{
  int i=4;char a=0;
  i=+ ++a;
  if(i==1)
    printf("*** M3ETRE54-10 *****     O    K     *****\n");
  else
    printf("*** M3ETRE54-10 *** N G ***\n");
}
printf("*** M3ETRE54 ** MK3 TEST FOR X_TREEMK **** ENDED \n");
  }
int 
m3etre55 (void)
  {
printf("\n*** M3ETRE55 ** MK3 TEST FOR X_TREEMK **** STARTED \n");
{
  int i=4;char a=0;
  a=(a+=i),++a;
  if(a==5)
    printf("*** M3ETRE55-01 *****     O    K     *****\n");
  else
    printf("*** M3ETRE55-01 *** N G ***\n");
}
{
  int i=4;char a=1;
  i=a--;
  if(i==1&a==0)
    printf("*** M3ETRE55-02 *****     O    K     *****\n");
  else
    printf("*** M3ETRE55-02 *** N G ***\n");
}
{
  int i=4;char a=1;
  --a;
  if(a==0)
    printf("*** M3ETRE55-03 *****     O    K     *****\n");
  else
    printf("*** M3ETRE55-03 *** N G ***\n");
}
{
  int i=4;char a=1,b=0;
  i=b<--a;
  if(i==0)
    printf("*** M3ETRE55-04 *****     O    K     *****\n");
  else
    printf("*** M3ETRE55-04 *** N G ***\n");
}
{
  int i=4;char a=1,b=0;
  i=b<=--a;
  if(i==1)
    printf("*** M3ETRE55-05 *****     O    K     *****\n");
  else
    printf("*** M3ETRE55-05 *** N G ***\n");
}
{
  int i=4;char a=1,b=0;
  i=b>--a;
  if(i==0)
    printf("*** M3ETRE55-06 *****     O    K     *****\n");
  else
    printf("*** M3ETRE55-06 *** N G ***\n");
}
{
  int i=4;char a=1,b=0;
  i=b>=--a;
  if(i==1)
    printf("*** M3ETRE55-07 *****     O    K     *****\n");
  else
    printf("*** M3ETRE55-07 *** N G ***\n");
}
{
  int i=4;char a=1,b=0;
  i=b==--a;
  if(i==1)
    printf("*** M3ETRE55-08 *****     O    K     *****\n");
  else
    printf("*** M3ETRE55-08 *** N G ***\n");
}
{
  int i=4;char a=1,b=0;
  i=b!=--a;
  if(i==0)
    printf("*** M3ETRE55-09 *****     O    K     *****\n");
  else
    printf("*** M3ETRE55-09 *** N G ***\n");
}
{
  int i=4;char a=1,b=0;
  i=b&&--a;
  if(i==0&a==1)
    printf("*** M3ETRE55-10 *****     O    K     *****\n");
  else
    printf("*** M3ETRE55-10 *** N G ***\n");
}
printf("*** M3ETRE55 ** MK3 TEST FOR X_TREEMK **** ENDED \n");
  }
int 
m3etre56 (void)
  {
printf("\n*** M3ETRE56 ** MK3 TEST FOR X_TREEMK **** STARTED \n");
{
  int i=4;char a=1,b=0;
  i=b||--a;
  if(i==0&a==0)
    printf("*** M3ETRE56-01 *****     O    K     *****\n");
  else
    printf("*** M3ETRE56-01 *** N G ********** N G ***\n");
}
{
  int i=4;char a=2,b=3;
  i=b/--a;
  if(i==3)
    printf("*** M3ETRE56-02 *****     O    K     *****\n");
  else
    printf("*** M3ETRE56-02 *** N G ********** N G ***\n");
}
{
  int i=4;char a=2,b=3;
  i=b%--a;
  if(i==0)
    printf("*** M3ETRE56-03 *****     O    K     *****\n");
  else
    printf("*** M3ETRE56-03 *** N G ********** N G ***\n");
}
{
  int i=4;char a=2,b=3;
  i=b<<--a;
  if(i==6)
    printf("*** M3ETRE56-04 *****     O    K     *****\n");
  else
    printf("*** M3ETRE56-04 *** N G ********** N G ***\n");
}
{
  int i=4;char a=2,b=3;
  i=b>>--a;
  if(i==1)
    printf("*** M3ETRE56-05 *****     O    K     *****\n");
  else
    printf("*** M3ETRE56-05 *** N G ********** N G ***\n");
}
{
  int i=4;char a=2,b=3;
  i=b^ --a;
  if(i==2)
    printf("*** M3ETRE56-06 *****     O    K     *****\n");
  else
    printf("*** M3ETRE56-06 *** N G ********** N G ***\n");
}
{
  int i=4;char a=2,b=3;
  i=b|--a;
  if(i==3)
    printf("*** M3ETRE56-07 *****     O    K     *****\n");
  else
    printf("*** M3ETRE56-07 *** N G ********** N G ***\n");
}
{
  int i=4;char a=2,b=3;
  i=b&--a;
  if(i==1)
    printf("*** M3ETRE56-08 *****     O    K     *****\n");
  else
    printf("*** M3ETRE56-08 *** N G ********** N G ***\n");
}
{
  int i=4;char a=2,b=3;
  i=b*--a;
  if(i==3)
    printf("*** M3ETRE56-09 *****     O    K     *****\n");
  else
    printf("*** M3ETRE56-09 *** N G ********** N G ***\n");
}
{
  int i=4;char a=2,b=3;
  i=b- --a;
  if(i==2)
    printf("*** M3ETRE56-10 *****     O    K     *****\n");
  else
    printf("*** M3ETRE56-10 *** N G ********** N G ***\n");
}
printf("*** M3ETRE56 ** MK3 TEST FOR X_TREEMK **** ENDED \n");
  }
int 
m3etre57 (void)
  {
printf("\n*** M3ETRE57 ** MK3 TEST FOR X_TREEMK **** STARTED \n");
{
  int i=5;char a=2,b=3;
  i=b+ --a;
  if(i==4)
    printf("*** M3ETRE57-01 *****     O    K     *****\n");
  else
    printf("*** M3ETRE57-01 *** N G ********** N G ***\n");
}
{
  int i=5;char a=2;
  static int arr[]={1,2,3};
  i=arr[--a];
  if(i==2)
    printf("*** M3ETRE57-02 *****     O    K     *****\n");
  else
    printf("*** M3ETRE57-02 *** N G ********** N G ***\n");
}
{
  int i=5;char a=1;
  static int arr[]={1,12,3};
  arr[a]--;
  i=arr[a];
  if(i==11&&a==1)
    printf("*** M3ETRE57-03 *****     O    K     *****\n");
  else
    printf("*** M3ETRE57-03 *** N G ********** N G ***\n");
}
{
  int i=5;char a=2;
  i+=--a;
  if(i==6)
    printf("*** M3ETRE57-04 *****     O    K     *****\n");
  else
    printf("*** M3ETRE57-04 *** N G ********** N G ***\n");
}
{
  int i=5;char a=2;
  i-=--a;
  if(i==4)
    printf("*** M3ETRE57-05 *****     O    K     *****\n");
  else
    printf("*** M3ETRE57-05 *** N G ********** N G ***\n");
}
{
  int i=5;char a=3;
  i*=--a;
  if(i==10)
    printf("*** M3ETRE57-06 *****     O    K     *****\n");
  else
    printf("*** M3ETRE57-06 *** N G ********** N G ***\n");
}
{
  int i=5;char a=3;
  i/=--a;
  if(i==2)
    printf("*** M3ETRE57-07 *****     O    K     *****\n");
  else
    printf("*** M3ETRE57-07 *** N G ********** N G ***\n");
}
{
  int i=5;char a=3;
  i%=--a;
  if(i==1)
    printf("*** M3ETRE57-08 *****     O    K     *****\n");
  else
    printf("*** M3ETRE57-08 *** N G ********** N G ***\n");
}
{
  int i=5;char a=3;
  i>>=--a;
  if(i==1)
    printf("*** M3ETRE57-09 *****     O    K     *****\n");
  else
    printf("*** M3ETRE57-09 *** N G ********** N G ***\n");
}
{
  int i=5;char a=3;
  i<<=--a;
  if(i==20)
    printf("*** M3ETRE57-10 *****     O    K     *****\n");
  else
    printf("*** M3ETRE57-10 *** N G ********** N G ***\n");
}
printf("*** M3ETRE57 ** MK3 TEST FOR X_TREEMK **** ENDED \n");
  }
int 
m3etre58 (void)
  {
printf("\n*** M3ETRE58 ** MK3 TEST FOR X_TREEMK **** STARTED \n");
{
  int i=5;char a=3;
  i&=--a;
  if(i==0)
    printf("*** M3ETRE58-01 *****     O    K     *****\n");
  else
    printf("*** M3ETRE58-01 *** N G ********** N G ***\n");
}
{
  int i=5;char a=3;
  i^=--a;
  if(i==7)
    printf("*** M3ETRE58-02 *****     O    K     *****\n");
  else
    printf("*** M3ETRE58-02 *** N G ********** N G ***\n");
}
{
  int i=5;char a=3;
  i|=--a;
  if(i==7)
    printf("*** M3ETRE58-03 *****     O    K     *****\n");
  else
    printf("*** M3ETRE58-03 *** N G ********** N G ***\n");
}
{
  int i=5;char a=3;
  i=--a;
  if(i==2)
    printf("*** M3ETRE58-04 *****     O    K     *****\n");
  else
    printf("*** M3ETRE58-04 *** N G ********** N G ***\n");
}
{
  int i=5;char a=3;
  i=- --a;
  if(i==-2)
    printf("*** M3ETRE58-05 *****     O    K     *****\n");
  else
    printf("*** M3ETRE58-05 *** N G ********** N G ***\n");
}
{
  int i=5;char a=3;
  i=! --a;
  if(i==0)
    printf("*** M3ETRE58-06 *****     O    K     *****\n");
  else
    printf("*** M3ETRE58-06 *** N G ********** N G ***\n");
}
{
  int i=5;char a=2;
  i=~ --a;
  if(i==-2)
    printf("*** M3ETRE58-07 *****     O    K     *****\n");
  else
    printf("*** M3ETRE58-07 *** N G ********** N G ***\n");
}
{
  int i=5;char a=2;
  i=(i>a)?--a:0;
  if(i==1)
    printf("*** M3ETRE58-08 *****     O    K     *****\n");
  else
    printf("*** M3ETRE58-08 *** N G ********** N G ***\n");
}
{
  int i=5;char a=2;
  i=(i<a)?0:--a;
  if(i==1)
    printf("*** M3ETRE58-09 *****     O    K     *****\n");
  else
    printf("*** M3ETRE58-09 *** N G ********** N G ***\n");
}
{
  int i=5;char a=2;
  i=i+(--a);
  if(i==6)
    printf("*** M3ETRE58-10 *****     O    K     *****\n");
  else
    printf("*** M3ETRE58-10 *** N G ********** N G ***\n");
}
printf("*** M3ETRE58 ** MK3 TEST FOR X_TREEMK **** ENDED \n");
  }
int 
m3etre59 (void)
  {
printf("\n*** M3ETRE59 ** MK3 TEST FOR X_TREEMK **** STARTED \n");
{
  int i=5;char a=2;
  i=i+(a)--;
  if(i==7&a==1)
    printf("*** M3ETRE59-01 *****     O    K     *****\n");
  else
    printf("*** M3ETRE59-01 *** N G ********** N G ***\n");
}
{
  int i=5;char a=2;
  i=+ --a;
  if(i==1)
    printf("*** M3ETRE59-02 *****     O    K     *****\n");
  else
    printf("*** M3ETRE59-02 *** N G ********** N G ***\n");
}
{
  int i=5;char a=2;
  i+=a,--i;
  if(i==6)
    printf("*** M3ETRE59-03 *****     O    K     *****\n");
  else
    printf("*** M3ETRE59-03 *** N G ********** N G ***\n");
}
{
  int i=5;
  i+=2,--i;
  if(i==6)
    printf("*** M3ETRE59-04 *****     O    K     *****\n");
  else
    printf("*** M3ETRE59-04 *** N G ********** N G ***\n");
}
{
  int i=5;
  i+=i,++i;
  if(i==11)
    printf("*** M3ETRE59-05 *****     O    K     *****\n");
  else
    printf("*** M3ETRE59-05 *** N G ********** N G ***\n");
}
{
  int i=5,a=0;
  static int arr[]={1,2,3};
  i=arr[0],a=arr[i];
  if(i==1&a==2)
    printf("*** M3ETRE59-06 *****     O    K     *****\n");
  else
    printf("*** M3ETRE59-06 *** N G ********** N G ***\n");
}
{
  int i=5,a=1;
  static int arr[]={1,2,3};
  i=a*(a+1),arr[i]=1;
  if(i==2&arr[2]==1)
    printf("*** M3ETRE59-07 *****     O    K     *****\n");
  else
    printf("*** M3ETRE59-07 *** N G ********** N G ***\n");
}
{
  int i=5,a=1;
  static int arr[]={7,8,9};
  a++,arr[a]=1;
  if(a==2&arr[2]==1)
    printf("*** M3ETRE59-08 *****     O    K     *****\n");
  else
    printf("*** M3ETRE59-08 *** N G ********** N G ***\n");
}
{
  int i=5,a=1;
  static int arr[]={7,8,9};
  a--,arr[a]=1;
  if(a==0&arr[0]==1)
    printf("*** M3ETRE59-09 *****     O    K     *****\n");
  else
    printf("*** M3ETRE59-09 *** N G ********** N G ***\n");
}
{
  int i=5,a=1,faaa();
  static int arr[]={7,8,9};
  i=faaa(a),i=arr[i];
  if(i==9)
    printf("*** M3ETRE59-10 *****     O    K     *****\n");
  else
    printf("*** M3ETRE59-10 *** N G ********** N G ***\n");
}
printf("*** M3ETRE59 ** MK3 TEST FOR X_TREEMK **** ENDED \n");
  }
int 
faaa (int a)
  {
    a=2;
    return(a);
  }
int 
m3etre60 (void)
  {
printf("\n*** M3ETRE60 ** MK3 TEST FOR X_TREEMK **** STARTED \n");
{
  int i=5;
  i=(i+1)*2;
  if(i==12)
    printf("*** M3ETRE60-01 *****     O    K     *****\n");
  else
    printf("*** M3ETRE60-01 *** N G ********** N G ***\n");
}
{
  int i=5,f60(),a=0;
  i=(f60(a)*2);
  if(i==4)
    printf("*** M3ETRE60-02 *****     O    K     *****\n");
  else
    printf("*** M3ETRE60-02 *** N G ********** N G ***\n");
}
{
  int i=5,a=0;
  i=(a+1)-2;
  if(i==-1)
    printf("*** M3ETRE60-03 *****     O    K     *****\n");
  else
    printf("*** M3ETRE60-03 *** N G ********** N G ***\n");
}
{
  int i=5,a=0,f60();
  i=(f60(a)-1);
  if(i==1)
    printf("*** M3ETRE60-04 *****     O    K     *****\n");
  else
    printf("*** M3ETRE60-04 *** N G ********** N G ***\n");
}
{
  int i=5,a=1;
  static int arr[]={7,8,9};
  i=arr[a]+a;
  if(i==9)
    printf("*** M3ETRE60-05 *****     O    K     *****\n");
  else
    printf("*** M3ETRE60-05 *** N G ********** N G ***\n");
}
{
  int i=5,a=0,f60();
  i=(f60(a)+1);
  if(i==3)
    printf("*** M3ETRE60-06 *****     O    K     *****\n");
  else
    printf("*** M3ETRE60-06 *** N G ********** N G ***\n");
}
{
  int i=5,a=0,f60();
  i=a++ <=1;
  if(i==1&a==1)
    printf("*** M3ETRE60-07 *****     O    K     *****\n");
  else
    printf("*** M3ETRE60-07 *** N G ********** N G ***\n");
}
{
  int i=5,a=0,f60();
  i=a-- <=1;
  if(i==1&a==-1)
    printf("*** M3ETRE60-08 *****     O    K     *****\n");
  else
    printf("*** M3ETRE60-08 *** N G ********** N G ***\n");
}
{
  int i=5,a=0,f60();
  i=(f60(a)<=1);
  if(i==0)
    printf("*** M3ETRE60-09 *****     O    K     *****\n");
  else
    printf("*** M3ETRE60-09 *** N G ********** N G ***\n");
}
{
  int i=5,a=0,f60();
  i=a++ > 1;
  if(i==0&a==1)
    printf("*** M3ETRE60-10 *****     O    K     *****\n");
  else
    printf("*** M3ETRE60-10 *** N G ********** N G ***\n");
}
printf("*** M3ETRE60 ** MK3 TEST FOR X_TREEMK **** ENDED \n");
  }
int 
f60 (int a)
  {
    a=2;
    return(a);
  }
