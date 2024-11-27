#include <stdlib.h>
#include <stdio.h>
#include <string.h>


#define AMAX 98
#define MOD_N 0x7f

#define TPNAME ""
typedef unsigned short int T_TYPE;

static T_TYPE ans,res,work;
static T_TYPE  AA[AMAX];

static char test_type[]="unsigned short";
static int  t_ans[]={25,25,25,25,25,
                     25,25,25,25,25,
                     25};

static int  t_sum[]={4851,4851,4851,4851,4851,
		     4851,4851,4851,4851,4851,
		     4851};

static int mod(x,y)
int x,y;
{
  return x - y * (x/y);
}

static void init_1(c,val,name,namel)
T_TYPE c[];
char name[];
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
int a;
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
  init_2(ld,sc,db,uc,fl,ss,ul,us,sl,si,ui,(int)ans,(float)ans);

  test01(ld,0);
  test02(1,sc);
  test03(db,2);
  test04(3,uc);
  test05(fl,4);
  test06(5,ss);
  test07(ul,6);
  test08(7,us);
  test09(sl,8);
  test10(9,si);
  test11(ui,10);
  printf("%s End\n",TestP);
  exit(0);
}

static void test01(ld,num)
long double ld[];
int  num;
{
  int i,aaa=ans;
  T_TYPE tmp[AMAX];
  
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
  if (ans == t_ans[num] && aaa == t_sum[num])
    printf("test01--long double <-> %s : OK\n",test_type);
  else{
    printf("test01--long double <-> %s : NG\n",test_type);
    printf("ANS_SUM = %d Calculated = %d\n",t_sum[num],aaa);
  }
  clear_ans();
}

static void test02(num,sc)
int num;
char sc[];
{
  int i,aaa=ans;
  T_TYPE tmp[AMAX];
  
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
  if (ans == t_ans[num] && aaa == t_sum[num])
    printf("test02--char <-> %s : OK\n",test_type);
  else{
    printf("test02--char <-> %s : NG\n",test_type);
    printf("ANS_SUM = %d Calculated = %d\n",t_sum[num],aaa);
  }
  clear_ans();
}

static void test03(xx,num)
double  xx[];
int  num;
{
  T_TYPE tmp[AMAX];
  int i,aaa=ans;
  
  for (i=0;i<AMAX;i++){
    tmp[i] = xx[i]+work*AA[i];
  }

  for (;i>1;i-=2)
    aaa += (int)(tmp[i-1]+tmp[i-2]);

  ans = mod(aaa,MOD_N);
  if (ans == t_ans[num] && aaa == t_sum[num])
    printf("test03--double <-> %s : OK\n",test_type);
  else{
    printf("test03--double <-> %s : NG\n",test_type);
    printf("ANS_SUM = %d Calculated = %d\n",t_sum[num],aaa);
  }
  clear_ans();
}

static void test04(num,xx)
int num;
unsigned char xx[];
{
  T_TYPE tmp[AMAX];
  int i,aaa=ans;
  
  for (i=0;i<AMAX;i++){
    tmp[i] = xx[i]+work*AA[i];
  }
  for (;i>1;i-=2)
    aaa += (int)(tmp[i-1]+tmp[i-2]);

  ans = mod(aaa,MOD_N);
  if (ans == t_ans[num] && aaa == t_sum[num])
    printf("test04--unsigned char <-> %s : OK\n",test_type);
  else{
    printf("test04--unsigned char <-> %s : NG\n",test_type);
    printf("ANS_SUM = %d Calculated = %d\n",t_sum[num],aaa);
  }
  clear_ans();
}

static void test05(xx,num)
float xx[];
int num;
{
  T_TYPE tmp[AMAX];
  int i,aaa=ans;
  
  for (i=0;i<AMAX;i++){
    tmp[i] = xx[i]+work*AA[i];
  }
  for (;i>1;i-=2)
    aaa += (int)(tmp[i-1]+tmp[i-2]);

  ans = mod(aaa,MOD_N);

  if (ans == t_ans[num] && aaa == t_sum[num])
    printf("test05--float <-> %s : OK\n",test_type);
  else{
    printf("test05--float <-> %s : NG\n",test_type);
    printf("ANS_SUM = %d Calculated = %d\n",t_sum[num],aaa);
  }
  clear_ans();
}

static void test06(num,xx)
int num;
short xx[];
{
  T_TYPE tmp[AMAX];
  int i,aaa=ans;
  
  for (i=0;i<AMAX;i++){
    tmp[i] = xx[i]+work*AA[i];
  }
  for (;i>1;i-=2)
    aaa += (int)(tmp[i-1]+tmp[i-2]);

  ans = mod(aaa,MOD_N);

  if (ans == t_ans[num] && aaa == t_sum[num])
    printf("test06--short <-> %s : OK\n",test_type);
  else{
    printf("test06--short <-> %s : NG\n",test_type);
    printf("ANS_SUM = %d Calculated = %d\n",t_sum[num],aaa);
  }
  clear_ans();
}

static void test07(xx,num)
unsigned long long xx[];
int num;
{
  T_TYPE tmp[AMAX];
  int i,aaa=ans;
  
  for (i=0;i<AMAX;i++){
    tmp[i] = xx[i]+work*AA[i];
  }
  for (;i>1;i-=2)
    aaa += (int)(tmp[i-1]+tmp[i-2]);

  ans = mod(aaa,MOD_N);

  if (ans == t_ans[num] && aaa == t_sum[num])
    printf("test07--unsigned long long <-> %s : OK\n",test_type);
  else{
    printf("test07--unsigned long long <-> %s : NG\n",test_type);
    printf("ANS_SUM = %d Calculated = %d\n",t_sum[num],aaa);
  }
  clear_ans();
}

static void test08(num,xx)
int num;
unsigned short xx[];
{
  T_TYPE tmp[AMAX];
  int i,aaa=ans;
  
  for (i=0;i<AMAX;i++){
    tmp[i] = xx[i]+work*AA[i];
  }
  for (;i>1;i-=2)
    aaa += (int)(tmp[i-1]+tmp[i-2]);

  ans = mod(aaa,MOD_N);

  if (ans == t_ans[num] && aaa == t_sum[num])
    printf("test08--unsigned short <-> %s : OK\n",test_type);
  else{
    printf("test08--unsigned short <-> %s : NG\n",test_type);
    printf("ANS_SUM = %d Calculated = %d\n",t_sum[num],aaa);
  }
  clear_ans();
}

static void test09(xx,num)
long long xx[];
int num;
{
  T_TYPE tmp[AMAX];
  int i,aaa=ans;
  
  for (i=0;i<AMAX;i++){
    tmp[i] = xx[i]+work*AA[i];
  }
  for (;i>1;i-=2)
    aaa += (int)(tmp[i-1]+tmp[i-2]);

  ans = mod(aaa,MOD_N);
  if (ans == t_ans[num] && aaa == t_sum[num])
    printf("test09--long long <-> %s : OK\n",test_type);
  else{
    printf("test09--long long <-> %s : NG\n",test_type);
    printf("ANS_SUM = %d Calculated = %d\n",t_sum[num],aaa);
  }
  clear_ans();
}

static void test10(num,si)
int num;
int si[];
{
  int i,aaa=ans;
  T_TYPE tmp[AMAX];
  
  for (i=0;i<AMAX;i++){
    tmp[i] = si[i]+work*AA[i];
  }
  for (;i>1;i-=2)
    aaa += (int)(tmp[i-1]+tmp[i-2]);

  ans = mod(aaa,MOD_N);
  if (ans == t_ans[num] && aaa == t_sum[num])
    printf("test10--short int <-> %s : OK\n",test_type);
  else{
    printf("test10--short int <-> %s : NG\n",test_type);
    printf("ANS_SUM = %d Calculated = %d\n",t_sum[num],aaa);
  }
  clear_ans();
}

static void test11(xx,num)
unsigned  xx[];
int num;
{
  T_TYPE  tmp[AMAX];
  int i,aaa=ans;
  
  for (i=0;i<AMAX;i++){
    tmp[i] = xx[i]+work*AA[i];
  }
  for (;i>1;i-=2)
    aaa += (int)(tmp[i-1]+tmp[i-2]);

  ans = mod(aaa,MOD_N);
  if (ans == t_ans[num] && aaa == t_sum[num])
    printf("test11--unsigned int <-> %s : OK\n",test_type);
  else{
    printf("test11--unsigned int <-> %s : NG\n",test_type);
    printf("ANS_SUM = %d Calculated = %d\n",t_sum[num],aaa);
  }
  clear_ans();
}

