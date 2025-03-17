#include <string.h>
#include  <stdio.h>

#define  PI  (3.141592)
#define  NULL  0

struct child {
  float f[2];
  char   *pointer;
  double d[2];
  struct parent *p_pointer;
};

union uuu {
  float   ff[2];
  double  dd;
  int    ll[2];
  short   ss[4];
};

struct parent{
  char   kind;
  short  int  sh1;
  double dbl1;
  union uuu   uni1;
  char   name[5];
  struct child  str1;
  int   number;
  struct parent  *next;
};

char  *data[10]={"AAAAA","BBBB","CCC","DD","E","F","GG","HHH","IIII","JJJJJ"};

struct parent  Sdata[10];
int main()
  {   
    struct parent *p ,init_();
    void   print_proc();
    int   i;
    short  j;
		struct parent ss1, ss2, ss3, ss4, ss5;

    Sdata[0] = init_('d',"SDAT0",0,PI,Sdata[9],&Sdata[9], &ss1);
    Sdata[1] = init_('f',"SDAT1",1,PI,Sdata[8],&Sdata[8], &ss2);
    Sdata[2] = init_('i',"SDAT2",2,PI,Sdata[7],&Sdata[7], &ss3);
    Sdata[3] = init_('f',"SDAT3",3,PI,Sdata[6],&Sdata[6], &ss4);
    Sdata[4] = init_('d',"SDAT4",4,PI,Sdata[5],&Sdata[5], &ss5);

    for (i=0;i<4;i++){
      Sdata[i].next = &(Sdata[i+1]);
#if defined(i386) || defined(__x86_64__) || defined(__aarch64__)
      Sdata[i].uni1.ss[3] *= 2;
#else
      Sdata[i].uni1.ss[0] *= 2;
#endif
      Sdata[9-i].next = &(Sdata[8-i]);
#if defined(i386) || defined(__x86_64__) || defined(__aarch64__)
      Sdata[9-i].uni1.ss[3] *= 2;
#else
      Sdata[9-i].uni1.ss[0] *= 2;
#endif
    }

    for (j=0,p=Sdata;p;p=p->next,j++) print_proc(j,p);
    for (j=9,p=&(Sdata[9]);p;p=p->next,j--) print_proc(j,p);
  }
   

struct parent init_(ch,chp,snum,fnum,s,p, ss)
char   ch;
char  *chp;
short  snum;
float  fnum;
struct parent s,*p;
struct parent *ss;
  {
     float  floatret();
      char int_1ret();

     s.kind = ch;
     strcpy(s.name,chp);
#if defined(i386) || defined(__x86_64__) || defined(__aarch64__)
     s.uni1.ss[3] = 32767;
#else
     s.uni1.ss[0] = 32767;
#endif
     s.sh1  = snum;
     s.dbl1 = fnum/(snum+1);
     s.str1.f[0]=floatret(fnum,fnum);
     s.str1.f[int_1ret(1)]=floatret(fnum,0.);
     s.str1.d[int_1ret(snum-snum+int_1ret(0))]=s.str1.f[1];
     s.str1.d[1]=1.0;
     s.str1.pointer = data[snum];

		 *ss = s;
		 s.str1.p_pointer = ss; 
		 
#if defined(i386) || defined(__x86_64__) || defined(__aarch64__)
     s.number=s.uni1.ll[1];
#else
     s.number=s.uni1.ll[0];
#endif
     s.next = NULL;
     p->kind = s.kind;
     strcpy(p->name,s.name);
     p->sh1 = s.sh1;
#if defined(i386) || defined(__x86_64__) || defined(__aarch64__)
     p->uni1.ss[3] = s.uni1.ss[3];
#else
     p->uni1.ss[0] = s.uni1.ss[0];
#endif
     p->dbl1 = s.dbl1;
     p->str1.f[0]=s.str1.f[1];
     p->str1.f[1]=s.str1.f[0];
     p->str1.d[0]=s.str1.d[1];
     p->str1.d[1]=s.str1.d[0];
     p->str1.pointer=s.str1.pointer;
     p->str1.p_pointer=p;
     p->number=s.number;
     p->next=NULL;
     return s;
  }

float floatret(f1,f2)
float f1,f2;
{
  if (f2 > -0.0000001 && f2 < 0.0000001)
    return 0.;
  else
    return f1/f2;
}

char int_1ret(n)
int  n;
{
   int ret;

   if (n==0) return ( char)0;
   else{
     ret = data[2][1]-data[1][4]- n/n + n;
     return ( char)ret >= 1 ? 1:0;
   }
}        

void  print_proc(i,p)
 char    i;
struct parent *p;
{
  printf("PRINT Sdata[%d]\n",i);
  printf("  KIND = %c\n",p->kind);
  printf("  SH1  = %d\n",p->sh1);
  printf("  DBL1 = %s %f\n","",p->dbl1);
#if defined(i386) || defined(__x86_64__) || defined(__aarch64__)
  printf("  UNION SHORT = %d\n",p->uni1.ss[3]);
  printf("  UNION LONG  = %d\n",p->uni1.ll[1]);
#else
  printf("  UNION SHORT = %d\n",p->uni1.ss[0]);
  printf("  UNION LONG  = %d\n",p->uni1.ll[0]);
#endif
  printf("  NAME = %s\n",p->name);
  printf("  STRUCT STR1.F[%d]=%f %sF[%d]=%f\n",0,p->str1.f[0],"",1,p->str1.f[1]);
  printf("  STRUCT STR1.D[%d]=%f %sD[%d]=%f\n",0,p->str1.d[0],"",1,p->str1.d[1]);
  printf("  STRUCT STR1.NAME =%s\n",p->str1.pointer);
  printf("  PARENT IDENTIFY  =%s\n",p->str1.p_pointer->name);
  printf("  NUMBER = %d\n",p->number);
}






