#include <string.h>
#include  <stdio.h>

int scobe18()
{
   static const long int a[6]={ 1,1,1,1,1,1 };
   static const float    b[2]={ 1.0,1.0 };

   long int c;
   long int d;
   double      e;
   long double f;

   c = a[0] <  2;
   if (c==1)
      printf ("***** ok *****\n");
   else
      printf ("***** ng *****\n");
   c = a[1] <= 1;
   if (c==1)
      printf ("***** ok *****\n");
   else
      printf ("***** ng *****\n");
   c = a[2] == 1;
   if (c==1)
      printf ("***** ok *****\n");
   else
      printf ("***** ng *****\n");
   c = a[3] >  0;
   if (c==1)
      printf ("***** ok *****\n");
   else
      printf ("***** ng *****\n");
   c = a[4] >= 1;
   if (c==1)
      printf ("***** ok *****\n");
   else
      printf ("***** ng *****\n");
   c = a[5] != 0;
   if (c==1)
      printf ("***** ok *****\n");
   else
      printf ("***** ng *****\n");

      if (a[0]< 2)
         goto y1;
      else
         printf ("***** ng *****\n");
   x1:
      if (a[1]<=1)
         goto y2;
      else
         printf ("***** ng *****\n");
   x2:
      if (a[2]==1)
         goto y3;
      else
         printf ("***** ng *****\n");
   x3:
      if (a[3]> 0)
         goto y4;
      else
         printf ("***** ng *****\n");
   x4:
      if (a[4]>=1)
         goto y5;
      else
         printf ("***** ng *****\n");
   x5:
      if (a[5]!=0)
         goto y6;
      else
         printf ("***** ng *****\n");
         goto end;

   y1:
      printf ("***** ok *****\n");
      goto x1;
   y2:
      printf ("***** ok *****\n");
      goto x2;
   y3:
      printf ("***** ok *****\n");
      goto x3;
   y4:
      printf ("***** ok *****\n");
      goto x4;
   y5:
      printf ("***** ok *****\n");
      goto x5;
   y6:
      printf ("***** ok *****\n");

   end:
      printf ("***** end *****\n");
}


#define AMAX 98
#define MOD_N 0x7f

#define TPNAME "M2K12905"
typedef unsigned short int T_TYPE;

static T_TYPE ans,res,work;
static T_TYPE  AA[AMAX];

static const char test_type[]="unsigned short";
static const int  t_ans[]={25,25,25,25,25,
                     25,25,25,25,25,
                     25};

static const int  t_sum[]={4851,4851,4851,4851,4851,
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

int M2K12905()
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


#include <stdio.h>

int dpmk2031 ( ) {
  struct t {
            unsigned short int      a1:1;
            unsigned short int      a2:2;
            unsigned short int      a3:3;
            unsigned short int      a4:4;
            unsigned short int      a5:5;
            unsigned short int      a6:6;
            unsigned short int      a7:7;
            unsigned short int      a8:8;
           } x;
  static const int value[8]={3,7,15,31,63,127,255,511};
  x.a1=value[0];
           if (x.a1==1  ) printf("**dpmk2031-(1)** OK x.a1=%.16x\n",x.a1);
           else           printf("**dpmk2031-(1)** NG x.a1=%.16x\n",x.a1);
  x.a2=value[1];
           if (x.a2==3  ) printf("**dpmk2031-(2)** OK x.a2=%.16x\n",x.a2);
           else           printf("**dpmk2031-(2)** NG x.a2=%.16x\n",x.a2);
  x.a3=value[2];
           if (x.a3==7  ) printf("**dpmk2031-(3)** OK x.a3=%.16x\n",x.a3);
           else           printf("**dpmk2031-(3)** NG x.a3=%.16x\n",x.a3);
  x.a4=value[3];
           if (x.a4==15 ) printf("**dpmk2031-(4)** OK x.a4=%.16x\n",x.a4);
           else           printf("**dpmk2031-(4)** NG x.a4=%.16x\n",x.a4);
  x.a5=value[4];
           if (x.a5==31  ) printf("**dpmk2031-(5)** OK x.a5=%.16x\n",x.a5); 
           else           printf("**dpmk2031-(5)** NG x.a5=%.16x\n",x.a5); 
  x.a6=value[5];
           if (x.a6==63 ) printf("**dpmk2031-(6)** OK x.a6=%.16x\n",x.a6);
           else           printf("**dpmk2031-(6)** NG x.a6=%.16x\n",x.a6);
  x.a7=value[6];
           if (x.a7==127 ) printf("**dpmk2031-(7)** OK x.a7=%.16x\n",x.a7); 
           else           printf("**dpmk2031-(7)** NG x.a7=%.16x\n",x.a7); 
  x.a8=value[7];
           if (x.a8==255) printf("**dpmk2031-(8)** OK x.a8=%.16x\n",x.a8);
           else           printf("**dpmk2031-(8)** NG x.a8=%.16x\n",x.a8);
} 

#include  <stdio.h>
struct tag1 {
   char     **t1_po1[2];
};
struct tag2 {
   char        t2_ch1;
   char        t2_ch2[4];
   short int   t2_si1;
   long int    t2_li1;
   struct tag1 t2_st1[2];
   char       *t2_po1;
};
char       ch1e = 'c';
char       ch2e[] = "123";
short int  si1e = 987;
long int   li1e = 12345;
char      *po1e = "abcdef";
long int  *po2e = &li1e;
char      *po3e = ch2e;
char      *po4e[] = { "abc","bcd","cde","def" };
struct tag2
   st1e = { '*', "111", 246, 492,
              { {&po4e[0], &po4e[1]},
                  {&po4e[2], &po4e[3]} } ,"999" };
const static char       ch1s = 'c';
static char       ch2s[] = "123";
const static short int  si1s = 987;
static long int   li1s = 12345;
const static char      *po1s = "abcdef";
static long int  *po2s = &li1s;
static char      *po3s = ch2s;
const static char      *po4s[] = { "abc","bcd","cde","def" };
const static struct tag2
          st1s = { '*', "111", 246, 492,
                    { {&po4e[0], &po4e[1]},
                        {&po4e[2], &po4e[3]} }, "999"};
int scpa002()
{
    char       ch1a;
    char       ch2a[4];
    short int  si1a;
    long int   li1a;
    char      *po1a;
    long int  *po2a;
    char      *po3a;
    char      *po4a[4];
    static struct tag2
               st1a;

    printf("---- scpa002 start ---- \n");
    ch1a = 'c';
    strcpy(ch2a, "123");
    si1a = 987;
    li1a = 12345;
    po1a = "abcdef";
    po2a = &li1a;
    po3a = ch2a;
    po4a[0] = "abc";po4a[1] = "bcd";
    po4a[2] = "cde";po4a[3] = "def";
    st1a.t2_ch1 = '*';
    strcpy(st1a.t2_ch2, "111");
    st1a.t2_si1 = 246;
    st1a.t2_li1 = 492;
    st1a.t2_st1[0].t1_po1[0] = &po4e[0];
    st1a.t2_st1[0].t1_po1[1] = &po4e[1];
    st1a.t2_st1[1].t1_po1[0] = &po4e[2];
    st1a.t2_st1[1].t1_po1[1] = &po4e[3];
    st1a.t2_po1 = "999";

    if ( (memcmp(&ch1e,&ch1s, 1)==0 && memcmp(&ch1s,&ch1a, 1)==0) &&
         (memcmp(ch2e ,ch2s , 4)==0 && memcmp(ch2s ,ch2a , 4)==0) &&
         (memcmp(&si1e,&si1s, 2)==0 && memcmp(&si1s,&si1a, 2)==0) &&
         (memcmp(&li1e,&li1s, 4)==0 && memcmp(&li1s,&li1a, 4)==0) &&
         (memcmp(po1e ,po1s , 7)==0 && memcmp(po1s ,po1a , 7)==0) &&
         (memcmp(po2e ,po2s , 4)==0 && memcmp(po2s ,po2a , 4)==0) &&
         (memcmp(po3e ,po3s , 4)==0 && memcmp(po3s ,po3a , 4)==0) &&
         (memcmp(po4e[0] ,po4s[0] , 4)==0 &&
                          memcmp(po4s[0] ,po4a[0] , 4)==0 &&
          memcmp(po4e[1] ,po4s[1] , 4)==0 &&
                          memcmp(po4s[1] ,po4a[1] , 4)==0 &&
          memcmp(po4e[2] ,po4s[2] , 4)==0 &&
                          memcmp(po4s[2] ,po4a[2] , 4)==0 &&
          memcmp(po4e[3] ,po4s[3] , 4)==0 &&
                          memcmp(po4s[3] ,po4a[3] , 4)==0   ) &&
#if defined(__x86_64__) || defined(__aarch64__)
         (memcmp(&st1e ,&st1s ,sizeof(st1e)-8)==0 &&
                         memcmp(&st1s ,&st1a ,sizeof(st1e)-8)==0) &&
#else
         (memcmp(&st1e ,&st1s ,sizeof(st1e)-4)==0 &&
                         memcmp(&st1s ,&st1a ,sizeof(st1e)-4)==0) &&
#endif
         (memcmp(st1e.t2_po1,st1s.t2_po1 ,4)==0 &&
                           memcmp(st1s.t2_po1,st1a.t2_po1 ,4)==0) )
        printf ("   ***  ok  *** \n");
    else
        printf ("   ???  ng  ??? \n");

    printf("---- scpa002  end  ---- \n");
}

#include  <stdio.h>

int scpii12()
{
static const
  int x[]         = { 1, 3, 5 } ;
static const
  float y[4][3] = { { 1, 3, 5 },
                         { 2, 4, 6 },
                         { 3, 5, 7 }, } ;
static const
  float y2[4][3] = { 1, 3, 5, 2, 4, 6, 3, 5, 7 } ;
static const
  float z[4][3] = { {1}, {2}, {3}, {4} } ;
static const
  struct { int a[3],b ; } w = { {1}, 2 } ;
static const
  short q[4][3][2] = { { 1 },
                              { 2, 3 },
                              { 4, 5, 6 } } ;
static const
  short q2[4][3][2] = { 1,0,0,0,0,0,
                               2,3,0,0,0,0,
                               4,5,6        } ;
static const
  short q3[4][3][2] = { { {1}, },
                               { {2,3} },
                               { {4,5}, {6} }, } ;
static const
  char  s[]  = "abc" ;
static const
  char  t[3] = "abc" ;
static const
  char  s2[] = { 'a','b','c','\0' } ;
static const
  char  t2[] = { 'a','b','c' } ;


  printf("********** SCPII12 TEST START **********\n");

  if (x[1] == 3)
    printf(" X  --> O K\n");
  else
    printf(" X  --> N G\n");

  if (y[1][1] == 4)
    printf(" Y  --> O K\n");
  else
    printf(" Y  --> N G\n");

  if (y2[2][2] == 7)
    printf(" Y2 --> O K\n");
  else
    printf(" Y2 --> N G\n");

  if (z[3][0] == 4)
    printf(" Z  --> O K\n");
  else
    printf(" Z  --> N G\n");

  if (w.a[0] == 1)
    printf(" W  --> O K\n");
  else
    printf(" W  --> N G\n");

  if (q[1][0][0] == 2)
    printf(" Q  --> O K\n");
  else
    printf(" Q  --> N G\n");

  if (q2[1][0][0] == 2)
    printf(" Q2 --> O K\n");
  else
    printf(" Q2 --> N G\n");

  if (q3[1][0][0] == 2)
    printf(" Q3 --> O K\n");
  else
    printf(" Q3 --> N G\n");

  if (!strcmp(s,"abc"))
    printf(" S  --> O K\n");
  else
    printf(" S  --> N G\n");

  if (!strncmp(t,"abc",3))
    printf(" T  --> O K\n");
  else
    printf(" T  --> N G\n");

  if (!strcmp(s2,"abc"))
    printf(" S2 --> O K\n");
  else
    printf(" S2 --> N G\n");

  if (!strncmp(t2,"abc",3))
    printf(" T2 --> O K\n");
  else
    printf(" T2 --> N G\n");

  printf("********** SCPII12 TEST  END  **********\n");

}


const long long int mat[3][5]= {
    	{0x01, 0x02, 0x03, 0x04, 0x05},
	{0x06, 0x07, 0x08, 0x09, 0x0a},
	{0x0b, 0x0c, 0x0d, 0x0e, 0x0f}
 };
void result();
int comk3003()
 {
    long long int sum=0,aaa,i,j;

     	for(i=0; i<3; i++)
	    for(j=0; j<5; j++)
 	    	sum=sum+mat[i][j];
 	result(sum);

	aaa=sum;

	for(i=0; i<3; i++)
 	    for(j=0; j<5; j++)
	   	 sum=sum+mat[i][j];

	if(sum==aaa*2)	printf("comk3003-(02) ok\n");
	else		printf("comk3003-(02) ng %x\n",sum);
 }

void result(rr)
    long long int rr;
 {
    	if(rr==0x78)	printf("comk3003-(01) ok\n");
	else		printf("comk3003-(01) ng %x\n",rr);
 }

int kaimk2048 ( ) {
struct t {
          signed long long int o1:63;
          signed long long int a : 1; 
          signed long long int o2: 1;
          signed long long int b :63; 

          signed long long int c :63; 
          signed long long int o3: 1;

          signed long long int o4:31;
          signed long long int d : 2; 
          signed long long int o5:31;

          signed long long int e :32; 
          signed long long int o6:32;

          signed long long int o7:32; 
          signed long long int f :32;
                                        
          signed long long int o8: 30;
          signed long long int  g: 1;
          signed long long int o9 :33;
                                        
          signed long long int oa: 30;
          signed long long int  h: 2;
          signed long long int ob :32;
};
static const struct t x={0,1,0,101,102,0,0,3,0,104,0,0,105,0,1,0,0,3,0};
struct t y;

  if (x.h ==  -1) printf("** kaimk2048 (1) ** ok\n");
  if (x.g ==  -1) printf("** kaimk2048 (2) ** ok\n");
  if (x.f == 105) printf("** kaimk2048 (3) ** ok\n");
  if (x.e == 104) printf("** kaimk2048 (4) ** ok\n");
  if (x.d ==  -1) printf("** kaimk2048 (5) ** ok\n");
  if (x.c == 102) printf("** kaimk2048 (6) ** ok\n");
  if (x.b == 101) printf("** kaimk2048 (7) ** ok\n");
  if (x.a ==  -1) printf("** kaimk2048 (8) ** ok\n");
           y.o1=1;
  y.h=3;
           y.o2=1;
  y.g=1;
           y.o3=1;
  y.f=205;
           y.o4=1;
  y.e=204;
           y.o5=1;
  y.d=  3;
           y.o6=1;
  y.c=202;
           y.o7=1;
  y.b=201;
           y.o8=1;
  y.a=  1;
           y.o9=1;
           y.oa=1;
           y.ob=1;
  if (y.h ==  -1) printf("** kaimk2048 (9) ** ok\n");
  if (y.g ==  -1) printf("** kaimk2048 (10) ** ok\n");
  if (y.f == 205) printf("** kaimk2048 (11) ** ok\n");
  if (y.e == 204) printf("** kaimk2048 (12) ** ok\n");
  if (y.d ==  -1) printf("** kaimk2048 (13) ** ok\n");
  if (y.c == 202) printf("** kaimk2048 (14) ** ok\n");
  if (y.b == 201) printf("** kaimk2048 (15) ** ok\n");
  if (y.a ==  -1) printf("** kaimk2048 (16) ** ok\n");
  if (x.o1 == 0
   && x.o2 == 0
   && x.o3 == 0
   && x.o4 == 0
   && x.o5 == 0
   && x.o6 == 0
   && x.o7 == 0
   && x.o8 == 0
   && x.o9 == 0
   && x.oa == 0
   && x.ob == 0 ) printf("** kaimk2048 (17) ** ok\n");
  if (y.o1 == 1
   && y.o2 == -1
   && y.o3 == -1
   && y.o4 == 1
   && y.o5 == 1
   && y.o6 == 1
   && y.o7 == 1
   && y.o8 == 1
   && y.o9 == 1
   && y.oa == 1
   && y.ob == 1 ) printf("** kaimk2048 (18) ** ok\n");
}
int main( ) {
  dpmk2031( ); 
  comk3003( );
  scpii12( );
  scobe18( ); 
  kaimk2048( );
  M2K12905( ); 
  scpa002( ); 
}

