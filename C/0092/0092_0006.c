#include <stdlib.h>
#include <stdio.h>
#include <string.h>


#define AMAX 98
#define MOD_N 127

#define TPNAME ""

static char ans,res,work;
static char AA[AMAX];

static char test_type[]="signed char";
static int  t_ans = 25;
static int  t_sum = 4851;

static int mod(x,y)
int x,y;
{
  return x - y * (x/y);
}

static void init_1(c,val,name,namel)
char c[],name[];
char val,namel;
{
  int i;
  for (i=0;i<AMAX;i++,c++){
    *c = mod((int)val+i,MOD_N);
  };
  strncpy(name,TPNAME,namel);
}    

static void init_2(ld,sc,db,uc,fl,ss,ul,us,sl,si,ui,a,x)
long double ld[];
char sc[];
double db[];
unsigned char uc[];
float fl[];
short ss[];
unsigned long long ul[];
unsigned short us[];
long long sl[];
int si[];
unsigned ui[];
char a;
float x;
{
  int i;
#if DEBUG 
  printf("%d %f\n",a,x);
#endif
  for (i=0;i<AMAX;i++){
    sc[i]=
      uc[i]=
	ss[i]=
	  us[i]=
	    si[i]=
	      ui[i]=
		sl[i]=
		  ul[i]= a;
  }
  for (;i>0;i--){
    fl[i-1]=
      db[i-1]=
	ld[i-1]=x;
  }
}

static void clear_ans()
{
  ans=0;
}

static void test01();     
static void test02();     
static void test03();     
static void test04();     
static void test05();     
static void test06();     
static void test07();     
static void test08();     
static void test09();     
static void test10();     
static void test11();     
int main()
{
  char TestP[30];
  char sc[AMAX];
  unsigned char uc[AMAX];
  short ss[AMAX];
  unsigned short us[AMAX];
  int si[AMAX];
  unsigned ui[AMAX];
  long long sl[AMAX];
  unsigned long long ul[AMAX];
  float fl[AMAX];
  double db[AMAX];
  long double ld[AMAX];

  clear_ans();
  res=0;
  work=1;
  init_1(AA,(char)1,TestP,30);
  printf("%s Begin\n",TestP);
  init_2(ld,sc,db,uc,fl,ss,ul,us,sl,si,ui,ans,(float)ans);

  test01(ld);
  test02(sc);
  test03(db);
  test04(uc);
  test05(fl);
  test06(ss);
  test07(ul);
  test08(us);
  test09(sl);
  test10(si);
  test11(ui);
  printf("%s End\n",TestP);
  exit(0);
}

static void test01(ld)
long double ld[];
{
  int i,aaa=ans;
  long double tmp[AMAX];
  
  for (i=0;i<AMAX;i++){
#if DEBUG && 0
    printf("%d\n",(int)ld[i]);
    printf("%d\n",work*AA[i]);
    printf("%f\n",(float)ld[i]+work*AA[i]);
#endif
    tmp[i] = ld[i]+work*AA[i];
  }
#if DEBUG
  printf("i=%d\n",i);
#endif

  for (;i>1;i-=2){
#if DEBUG 
    printf("aaa=%d\n",aaa);
#endif
    aaa += (int)(tmp[i-1])+(int)tmp[i-2];
  }
#if DEBUG
  printf("i=%d\n",i);
#endif
  ans = mod(aaa,MOD_N);
  if (ans == t_ans && aaa == t_sum)
    printf("test01--long double <-> %s : OK\n",test_type);
  else
    printf("test01--long double <-> %s : NG\n",test_type);
  clear_ans();
}

static void test02(sc)
char sc[];
{
  int i,aaa=ans;
  char tmp[AMAX];
  
  for (i=0;i<AMAX;i++){
#if DEBUG && 0
    printf("%d\n",(int)sc[i]);
    printf("%d\n",work*AA[i]);
    printf("%d\n",(int)sc[i]+work*AA[i]);
#endif
    tmp[i] = sc[i]+work*AA[i];
  }
#if DEBUG
  printf("i=%d\n",i);
#endif
  for (;i>1;i-=2){
#if DEBUG 
    printf("aaa=%d\n",aaa);
#endif
    aaa += (int)(tmp[i-1])+(int)tmp[i-2];
  }
#if DEBUG
  printf("i=%d\n",i);
#endif

  ans = mod(aaa,MOD_N);
  if (ans == t_ans && aaa == t_sum)
    printf("test02--char <-> %s : OK\n",test_type);
  else
    printf("test02--char <-> %s : NG\n",test_type);
  clear_ans();
}

static void test03(xx)
double  xx[];
{
  double tmp[AMAX];
  int i,aaa=ans;
  
  for (i=0;i<AMAX;i++){
    tmp[i] = xx[i]+work*AA[i];
  }

  for (;i>1;i-=2)
    aaa += (int)(tmp[i-1]+tmp[i-2]);

  ans = mod(aaa,MOD_N);
  if (ans == t_ans && aaa == t_sum)
    printf("test03--double <-> %s : OK\n",test_type);
  else
    printf("test03--double <-> %s : NG\n",test_type);
  clear_ans();
}

static void test04(xx)
unsigned char xx[];
{
  unsigned char tmp[AMAX];
  int i,aaa=ans;
  
  for (i=0;i<AMAX;i++){
    tmp[i] = xx[i]+work*AA[i];
  }
  for (;i>1;i-=2)
    aaa += (int)(tmp[i-1]+tmp[i-2]);

  ans = mod(aaa,MOD_N);
  if (ans == t_ans && aaa == t_sum)
    printf("test04--unsigned char <-> %s : OK\n",test_type);
  else
    printf("test04--unsigned char <-> %s : NG\n",test_type);
  clear_ans();
}

static void test05(xx)
float xx[];
{
  float tmp[AMAX];
  int i,aaa=ans;
  
  for (i=0;i<AMAX;i++){
    tmp[i] = xx[i]+work*AA[i];
  }
  for (;i>1;i-=2)
    aaa += (int)(tmp[i-1]+tmp[i-2]);

  ans = mod(aaa,MOD_N);
  if (ans == t_ans && aaa == t_sum)
    printf("test05--float <-> %s : OK\n",test_type);
  else
    printf("test05--float <-> %s : NG\n",test_type);
  clear_ans();
}

static void test06(xx)
short xx[];
{
  short tmp[AMAX];
  int i,aaa=ans;
  
  for (i=0;i<AMAX;i++){
    tmp[i] = xx[i]+work*AA[i];
  }
  for (;i>1;i-=2)
    aaa += (int)(tmp[i-1]+tmp[i-2]);

  ans = mod(aaa,MOD_N);
  if (ans == t_ans && aaa == t_sum)
    printf("test06--short <-> %s : OK\n",test_type);
  else
    printf("test06--short <-> %s : NG\n",test_type);
  clear_ans();
}

static void test07(xx)
unsigned long long xx[];
{
  unsigned long long tmp[AMAX];
  int i,aaa=ans;
  
  for (i=0;i<AMAX;i++){
    tmp[i] = xx[i]+work*AA[i];
  }
  for (;i>1;i-=2)
    aaa += (int)(tmp[i-1]+tmp[i-2]);

  ans = mod(aaa,MOD_N);
  if (ans == t_ans && aaa == t_sum)
    printf("test07--unsigned long long <-> %s : OK\n",test_type);
  else
    printf("test07--unsigned long long <-> %s : NG\n",test_type);
  clear_ans();
}

static void test08(xx)
unsigned short xx[];
{
  unsigned short tmp[AMAX];
  int i,aaa=ans;
  
  for (i=0;i<AMAX;i++){
    tmp[i] = xx[i]+work*AA[i];
  }
  for (;i>1;i-=2)
    aaa += (int)(tmp[i-1]+tmp[i-2]);

  ans = mod(aaa,MOD_N);
  if (ans == t_ans && aaa == t_sum)
    printf("test08--unsigned short <-> %s : OK\n",test_type);
  else
    printf("test08--unsigned short <-> %s : NG\n",test_type);
  clear_ans();
}

static void test09(xx)
long long xx[];
{
  long long tmp[AMAX];
  int i,aaa=ans;
  
  for (i=0;i<AMAX;i++){
    tmp[i] = xx[i]+work*AA[i];
  }
  for (;i>1;i-=2)
    aaa += (int)(tmp[i-1]+tmp[i-2]);

  ans = mod(aaa,MOD_N);
  if (ans == t_ans && aaa == t_sum)
    printf("test09--long long <-> %s : OK\n",test_type);
  else
    printf("test09--long long <-> %s : NG\n",test_type);
  clear_ans();
}

static void test10(si)
int si[];
{
  int i,aaa=ans;
  int tmp[AMAX];
  
  for (i=0;i<AMAX;i++){
    tmp[i] = si[i]+work*AA[i];
  }
  for (;i>1;i-=2)
    aaa += (int)(tmp[i-1]+tmp[i-2]);

  ans = mod(aaa,MOD_N);
  if (ans == t_ans && aaa == t_sum)
    printf("test10--short int <-> %s : OK\n",test_type);
  else
    printf("test10--short int <-> %s : NG\n",test_type);
  clear_ans();
}

static void test11(xx)
unsigned  xx[];
{
  unsigned  tmp[AMAX];
  int i,aaa=ans;
  
  for (i=0;i<AMAX;i++){
    tmp[i] = xx[i]+work*AA[i];
  }
  for (;i>1;i-=2)
    aaa += (int)(tmp[i-1]+tmp[i-2]);

  ans = mod(aaa,MOD_N);
  if (ans == t_ans && aaa == t_sum)
    printf("test11--unsigned int <-> %s : OK\n",test_type);
  else
    printf("test11--unsigned int <-> %s : NG\n",test_type);
  clear_ans();
}

