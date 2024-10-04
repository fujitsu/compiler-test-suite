#include <stdio.h>
#include <setjmp.h>
#include <string.h>
#include <math.h>
int ser (int *x, int *y);
int sub7 (void);
int subm5 (void);
int m3etre50 (void);
int m3etre49 (void);
int m3etre48 (void);
int m3etre47 (void);
int m3etre46 (void);
int m3etre45 (void);
int m3etre44 (void);
int m3mpyt01 (void);
int scrlc02 (void);
int scrlc01 (void);
int scrgb09 (void);
int scqih13 (void);
int m3mpsi05 (void);
int m3mpsi07 (void); 
int m3mpsi08 (void); 
int m3mpsi09 (void);
int m3mpsi0a (void);
int 
main (void)
{
    printf("***  *** TEST FOR COMMON *** STARTED ***\n");
    scqih13();
    scrgb09();
    scrlc01();
    scrlc02();
    m3mpsi05();
    m3mpsi07();
    m3mpsi08();
    m3mpsi09();
    m3mpsi0a();
    m3mpyt01();
    m3etre44();
    m3etre45();
    m3etre46();
    m3etre47();
    m3etre48();
    m3etre49();
    m3etre50();
    printf("\n***  *** TEST FOR COMMON *** ENDED ***\n");
}


#define ARRAY_MAX 200

struct x {
    struct x    *right;
    struct x    *left;
    long int    member;
} s1[ARRAY_MAX], s2[ARRAY_MAX];

void rdmset();
void maktree();
void gettree();
int  chktree();

int 
scqih13 (void)
{
    int i;

    static struct x *sp = s1;
    rdmset();
    maktree();
    gettree();

    if( !chktree() )
        printf("\nSCQIH13  NG.\n");
    else
        printf("\nSCQIH13  PASS.\n");
    return 0;
}


void 
rdmset (void)
{
    double randx(); 
    int i;

    for (i = 0; i < ARRAY_MAX; ++i){
        s1[i].right = s1[i].left = 0;
        s1[i].member = randx();
    }
}


double 
randx (void)
{
    double c, k, ran;
    static double r = 12345678.0;

    c = 656329.0;
    k = 19.0;

    r = fmod((k * r + c), 100000001.0);
    ran = r / 100000000.0 * ARRAY_MAX;
    return (ran);
}


void 
maktree (void)
{
    void addtree();
    int i;

    for (i = 1; i < ARRAY_MAX; ++i)
        addtree(i);
    return;
}


void 
addtree (int n)
{
    static struct x *sp = s1;

    if (n == 0)
        return;

    if (s1[n].member <= sp->member)
        if (sp->right == 0){
            sp->right = &s1[n];
            sp = s1;
            return;
        }
        else{
            sp = sp->right;
            addtree(n);
            return;
        }
    else
        if (sp->left == 0){
            sp->left = &s1[n];
            sp = s1;
            return;
        }
        else{
            sp = sp->left;
            addtree(n);
            return;
        }
}


void 
gettree (void)
{
    struct x *srctree();

    srctree(s1);
    return;
}

struct x *
srctree (struct x *p)
{
    static int a_num = 0;

    if (p != 0){
        srctree(p->left);
        s2[a_num] = *p;
        ++a_num;
        srctree(p->right);
    }
    return 0;
}


int 
chktree (void)
{
    int flag, i;

    flag = 1;
    for (i = 0; i < (ARRAY_MAX - 1); ++i)
        if (s2[i].member < s2[i+1].member)
            flag = 0;
    return(flag);
}

struct BF{
#if _WIN32
    unsigned long int   bf7:4;
    unsigned long int   bf6:4;
    unsigned long int   bf5:4;
    unsigned long int   bf4:4;
    unsigned long int   bf3:4;
    unsigned long int   bf2:4;
    unsigned long int   bf1:4;
    unsigned long int   bf0:4;
#else
    unsigned long int   bf0:4;
    unsigned long int   bf1:4;
    unsigned long int   bf2:4;
    unsigned long int   bf3:4;
    unsigned long int   bf4:4;
    unsigned long int   bf5:4;
    unsigned long int   bf6:4;
    unsigned long int   bf7:4;
#endif
};

union SCOPE{
    unsigned long int   uli;
    struct BF           bf;
    float               fl;
};

struct st{
    union SCOPE   sc;
    long int    member;
} st1;

int 
scqih14 (void)
{
    st1.sc.fl     = 1.000000000000000;
    st1.sc.bf.bf2 = 2;
    if (st1.sc.uli != 0x41200000){
        printf("st1.sc.uli != 0x41200000.  now, sc1.sc.uli =%8x\n",
                st1.sc.uli);
        printf("\nSCQIH14  NG.\n");
    }
    else
        printf("\nSCQIH14  PASS.\n");
    return 0;
}
int 
scrgb09 (void)
{
      unsigned long int u4;
               long int i4;
      u4=0;
      for( i4=0;i4<10;i4++ ) {
        if(u4=u4+1)break;
      }
      if( u4 != 1 ) puts(" ng ");
      for( i4=0;i4<10;i4++ ) {
        if((u4=u4+1)>0)break;
      }
      if( u4 != 2 ) puts(" ng ");
      else          puts(" OK ");
      return 0;
}

int 
scrlc01 (void)
{
register int i;
register float j;
register short int k;
i=1;
j=2;
k=3;
i=i+1;
j=j+1;
k=k+1;
i=i+i;
if(i==4 && j==3 && k==4) printf(" ----- ok ----- \n");
else                     printf(" ----- ng ----- \n");
 return 0;
}
int  a;
int 
scrlc02 (void)
{
        int  b,*p1;
        int  i,j=0;

  for(i=0;i<3;i++)
    {
          b=i+3;
          a=i+b;
          j=i+a;

          p1=&b;
         *p1=j-i;
          if(b==*p1) printf("--------- ok -------- \n");
          else       printf("--------- ng -------- \n");
          j=a+b;

    }
  return 0;
}
int y;
int 
m3mpsi05 (void) {
struct tag {
    int    mema;
    int    memb;
    char   memc[4];
    };
struct tag var1,var2,var3,*pint;
int a[10];
int x;
pint=&var3;
pint->mema=5;
pint->memb=15;
a[4]=5;
a[pint->mema]=3;
pint=&var2;
pint->memb=4;
x=pint->memb;
pint->memb=a[4];
x=pint->memb;
pint=&var3;
y=x;
a[1]=y;
pint=&var3;
subm5();
x=a[1];
pint->memc[1]=y+pint->memb;
if (pint->memc[1]==37) printf("\nm3mpsi05 ok\n");
else
printf("%d\n",pint->memc[1]);
 return 0;
}
int 
subm5 (void)
{
y=22;
return 0;
}
int y5;
int 
m3mpsi07 (void) {
struct tag {
    int    mema;
    int    memb;
    char   memc[4];
    };
struct tag var1,var2,var3,*pint;
int a[10];
int x;
pint=&var3;
sub7();
y5=y5-17;
pint->mema=y5;
sub7();
pint->memb=15;
a[4]=pint->mema;
a[pint->mema]=3;
pint=&var2;
pint->memb=4;
x=pint->memb;
pint->memb=a[4];
x=pint->memb;
pint=&var3;
y5=x;
a[1]=y5;
pint=&var3;
sub7();
x=a[1];
pint->memc[1]=y5+pint->memb;
if (pint->memc[1]==37) printf("\nm3mpsi07 ok\n");
else
printf("%d\n",pint->memc[1]);
 return 0;
}
int 
sub7 (void)
{
y5=22;
return 0;
}
int 
m3mpsi08 (void) {
struct tag {
    int    mema;
    int    memb;
    float  memc[4];
    } var;
struct tag var2,*pint;
int a[10];
int x,y;
var.mema=5;
pint=&var2;
pint->memc[3]=0.5;
pint->mema=3;
y=pint->mema;
x=(int)(pint->memc[3]);
a[1]=x+y;
if (a[1]==3) printf("\nm3mpsi08 ok\n");
else
printf("m3mpsi08 ng\n");
 return 0;
}
int 
m3mpsi09 (void) {
struct tag {
    int    mema;
    int    memb;
    float  memc[4];
    } var;
struct tag var2,*pint;
int a[10];
int x,y,z;
int *i;
var.mema=5;
pint=&var2;
i=&z;
z=3;
pint->mema=*i;
*i=5;
x=pint->mema;
z=z+(*i);
if (z==10) printf("\nm3mpsi09 ok\n");
else
printf("m3mpsi09 ng\n");
if (pint->mema==3) printf("m3mpsi09 ok\n");
else
printf("m3mpsi09 ng\n");
 return 0;
}
int 
m3mpsi0a (void) {
struct tag {
    int    mema;
    int    memb;
    float  memc[4];
    } var;
struct tag var2,*pint;
int a[11];  
int x,y,z;
int *i;
var.mema=5;
pint=&var2;
i=&z;
z=3;
pint->mema=*i;
*i=5;
x=pint->mema;
z=z+(*i);
a[*i]=*i;
if (z==10) printf("\nm3mpsi0a ok\n");
else
printf("m3mpsi0a ng\n");
if (pint->mema==3) printf("m3mpsi0a ok\n");
else
printf("m3mpsi0a ng\n");
if (a[*i]==10) printf("m3mpsi0a ok\n");
else
printf("m3mpsi0a ng\n");
 return 0;
}
int 
m3mpyt01 (void)
{
  static int b[10]={1,2,3,4,5,6,7,8,9,10};
  int a[10];
  int i,j;
  printf("\n********* sort program *********\n");
  a[0]=2;
  a[1]=9;
  a[2]=1;
  a[3]=5;
  a[4]=6;
  a[5]=8;
  a[6]=4;
  a[7]=10;
  a[8]=3;
  a[9]=7;
  i=0;
  while(i<=9){
    j=i+1;
    while(j<=9){
      ser(&a[i],&a[j]);
      j++;
    }
    i++;
  }
  printf("1st ====>>>  %d   \n",a[0]);
  printf("2dn ====>>>  %d   \n",a[1]);
  printf("3rd ====>>>  %d   \n",a[2]);
  printf("4th ====>>>  %d   \n",a[3]);
  printf("5th ====>>>  %d   \n",a[4]);
  printf("6th ====>>>  %d   \n",a[5]);
  printf("7th ====>>>  %d   \n",a[6]);
  printf("8th ====>>>  %d   \n",a[7]);
  printf("9th ====>>>  %d   \n",a[8]);
  printf("largest=>>>  %d   \n",a[9]);
  if(memcmp(a,b,40)==0)
       printf("\nok\n");
  else printf("ng\n");
  return 0;
}
int ser(x,y)
int *x,*y;
{
  int demo;
    if(*x>*y){
      demo=*x;
      *x=*y;
      *y=demo;
    }
  return 0;
}
int 
m3etre44 (void)
  {
printf("*** M3ETRE44 ** MK3 TEST FOR X_TREEMK **** STARTED \n");
{
  int i=1;
  i=+sizeof(int);
#if INT64
  if(i==8)
#else
  if(i==4)
#endif
    printf("*** M3ETRE44-01 *****     O    K     *****\n");
  else
    printf("*** M3ETRE44-01 *** N G ***\n");
}
{
  int i=1,a=1;
  i=(++a,sizeof(int));
#if INT64
  if(i==8&a==2)
#else
  if(i==4&a==2)
#endif
    printf("*** M3ETRE44-02 *****     O    K     *****\n");
  else
    printf("*** M3ETRE44-02 *** N G ***\n");
}
{
  int i=1,a=2;
  i=i==1?a:0;
  if(i==2)
    printf("*** M3ETRE44-03 *****     O    K     *****\n");
  else
    printf("*** M3ETRE44-03 *** N G ***\n");
}
{
  int i=1,a=2;
  i=i==a?a:0;
  if(i==0)
    printf("*** M3ETRE44-04 *****     O    K     *****\n");
  else
    printf("*** M3ETRE44-04 *** N G ***\n");
}
{
  int i=1,a=2;
  static int arr[]={1,2,3};
  i=i==arr[1]?a:0;
  if(i==0)
    printf("*** M3ETRE44-05 *****     O    K     *****\n");
  else
    printf("*** M3ETRE44-05 *** N G ***\n");
}
{
  int i=1,a=2,b=0;
  i=i==(b=1+1)?a:0;
  if(i==0)
    printf("*** M3ETRE44-06 *****     O    K     *****\n");
  else
    printf("*** M3ETRE44-06 *** N G ***\n");
}
{
  int i=1,a=2,b=0;
  i=i==b++ ?a:0;
  if(i==0)
    printf("*** M3ETRE44-07 *****     O    K     *****\n");
  else
    printf("*** M3ETRE44-07 *** N G ***\n");
}
{
  int i=1,a=2,b=0;
  i=i==b-- ?a:0;
  if(i==0)
    printf("*** M3ETRE44-08 *****     O    K     *****\n");
  else
    printf("*** M3ETRE44-08 *** N G ***\n");
}
{
  int f44();
  int i=1,a=2,b=0;
  i=i==f44(b)?a:0;
  if(i==2)
    printf("*** M3ETRE44-09 *****     O    K     *****\n");
  else
    printf("*** M3ETRE44-09 *** N G ***\n");
}
{
  int f44();
  int i=1,a=2,b=1;
  i=i==b?2:0;
  if(i==2)
    printf("*** M3ETRE44-10 *****     O    K     *****\n");
  else
    printf("*** M3ETRE44-10 *** N G ***\n");
}
printf("*** M3ETRE44 ** MK3 TEST FOR X_TREEMK **** ENDED \n");
 return 0;
  }
int 
f44 (int b)
  {
    b=1;
    return(b);
  }
int 
m3etre45 (void)
  {
printf("*** M3ETRE45 ** MK3 TEST FOR X_TREEMK **** STARTED \n");
{
  int i=1,a=2,b=1;
  i=i==b?a:0;
  if(i==2)
    printf("*** M3ETRE45-01 *****     O    K     *****\n");
  else
    printf("*** M3ETRE45-01 *** N G ***\n");
}
{
  static int arr[]={1,2,3};
  int i=1,b=1;
  i=i==b?arr[1]:0;
  if(i==2)
    printf("*** M3ETRE45-02 *****     O    K     *****\n");
  else
    printf("*** M3ETRE45-02 *** N G ***\n");
}
{
  int i=2,b=2;
  i=i==b?(b=b+1): 0;
  if(i==3)
    printf("*** M3ETRE45-03 *****     O    K     *****\n");
  else
    printf("*** M3ETRE45-03 *** N G ***\n");
}
{
  int i=0,b=2;
  i=b==2?b++: 0;
  if(i==2)
    printf("*** M3ETRE45-04 *****     O    K     *****\n");
  else
    printf("*** M3ETRE45-04 *** N G ***\n");
}
{
  int i=0,b=2;
  i=b==2?b--: 0;
  if(i==2)
    printf("*** M3ETRE45-05 *****     O    K     *****\n");
  else
    printf("*** M3ETRE45-05 *** N G ***\n");
}
{
  int i=2,b=2,f45(),a=0;
  i=i==b?f45(a):0;
  if(i==3)
    printf("*** M3ETRE45-06 *****     O    K     *****\n");
  else
    printf("*** M3ETRE45-06 *** N G ***\n");
}
{
  int i=0,f45(),a=0;
  i=f45(a);
  if(i==3)
    printf("*** M3ETRE45-07 *****     O    K     *****\n");
  else
    printf("*** M3ETRE45-07 *** N G ***\n");
}
{
  int i=0,a=0;
  (i=a+1);
  if(i==1)
    printf("*** M3ETRE45-08 *****     O    K     *****\n");
  else
    printf("*** M3ETRE45-08 *** N G ***\n");
}
{
  int i=1,a=0;
  i=a<(a);
  if(i==0)
    printf("*** M3ETRE45-09 *****     O    K     *****\n");
  else
    printf("*** M3ETRE45-09 *** N G ***\n");
}
{
  int i=0,a=0;
  i=a<=(a);
  if(i==1)
    printf("*** M3ETRE45-10 *****     O    K     *****\n");
  else
    printf("*** M3ETRE45-10 *** N G ***\n");
}
printf("*** M3ETRE45 ** MK3 TEST FOR X_TREEMK **** ENDED \n");
 return 0;
  }
int 
f45 (int a)
  {
    a=3;
    return(a);
  }
int 
m3etre46 (void)
  {
printf("*** M3ETRE46 ** MK3 TEST FOR X_TREEMK **** STARTED \n");
{
  int i=1,a=0;
  i=a>(a);
  if(i==0)
    printf("*** M3ETRE46-01 *****     O    K     *****\n");
  else
    printf("*** M3ETRE46-01 *** N G ***\n");
}
{
  int i=0,a=0;
  i=a>=(a);
  if(i==1)
    printf("*** M3ETRE46-02 *****     O    K     *****\n");
  else
    printf("*** M3ETRE46-02 *** N G ***\n");
}
{
  int i=0,a=0;
  i=a==(a);
  if(i==1)
    printf("*** M3ETRE46-03 *****     O    K     *****\n");
  else
    printf("*** M3ETRE46-03 *** N G ***\n");
}
{
  int i=1,a=0;
  i=a!=(a);
  if(i==0)
    printf("*** M3ETRE46-04 *****     O    K     *****\n");
  else
    printf("*** M3ETRE46-04 *** N G ***\n");
}
{
  int i=0,a=1;
  i=a&&(a);
  if(i==1)
    printf("*** M3ETRE46-05 *****     O    K     *****\n");
  else
    printf("*** M3ETRE46-05 *** N G ***\n");
}
{
  int i=0,a=1;
  i=a||(a);
  if(i==1)
    printf("*** M3ETRE46-06 *****     O    K     *****\n");
  else
    printf("*** M3ETRE46-06 *** N G ***\n");
}
{
  int i=0,a=1;
  i=a/(a);
  if(i==1)
    printf("*** M3ETRE46-07 *****     O    K     *****\n");
  else
    printf("*** M3ETRE46-07 *** N G ***\n");
}
{
  int i=1,a=1;
  i=a%(a);
  if(i==0)
    printf("*** M3ETRE46-08 *****     O    K     *****\n");
  else
    printf("*** M3ETRE46-08 *** N G ***\n");
}
{
  int i=1,a=1;
  i=a<<(a);
  if(i==2)
    printf("*** M3ETRE46-09 *****     O    K     *****\n");
  else
    printf("*** M3ETRE46-09 *** N G ***\n");
}
{
  int i=0,a=2;
  i=a>>(1);
  if(i==1)
    printf("*** M3ETRE46-10 *****     O    K     *****\n");
  else
    printf("*** M3ETRE46-10 *** N G ***\n");
}
printf("*** M3ETRE46 ** MK3 TEST FOR X_TREEMK **** ENDED \n");
 return 0;
  }
int 
m3etre47 (void)
  {
printf("*** M3ETRE47 ** MK3 TEST FOR X_TREEMK **** STARTED \n");
{
  int i=0,a=2;
  i=a^(1);
  if(i==3)
    printf("*** M3ETRE47-01 *****     O    K     *****\n");
  else
    printf("*** M3ETRE47-01 *** N G ***\n");
}
{
  int i=0,a=2;
  i=a|(1);
  if(i==3)
    printf("*** M3ETRE47-02 *****     O    K     *****\n");
  else
    printf("*** M3ETRE47-02 *** N G ***\n");
}
{
  int i=0,a=1;
  i=a&(1);
  if(i==1)
    printf("*** M3ETRE47-03 *****     O    K     *****\n");
  else
    printf("*** M3ETRE47-03 *** N G ***\n");
}
{
  int i=0,a=1;
  i=a*(1);
  if(i==1)
    printf("*** M3ETRE47-04 *****     O    K     *****\n");
  else
    printf("*** M3ETRE47-04 *** N G ***\n");
}
{
  int i=1,a=1;
  i=a-(1);
  if(i==0)
    printf("*** M3ETRE47-05 *****     O    K     *****\n");
  else
    printf("*** M3ETRE47-05 *** N G ***\n");
}
{
  int i=1,a=1;
  i=a+(1);
  if(i==2)
    printf("*** M3ETRE47-06 *****     O    K     *****\n");
  else
    printf("*** M3ETRE47-06 *** N G ***\n");
}
{
  static int arr[]={1,2,3};int i=1;
  i=arr[(++i)];
  if(i==3)
    printf("*** M3ETRE47-07 *****     O    K     *****\n");
  else
    printf("*** M3ETRE47-07 *** N G ***\n");
}
{
  int i=0,a=1;
  i+=(a);
  if(i==1)
    printf("*** M3ETRE47-08 *****     O    K     *****\n");
  else
    printf("*** M3ETRE47-08 *** N G ***\n");
}
{
  int i=0,a=1;
  i-=(a);
  if(i==-1)
    printf("*** M3ETRE47-09 *****     O    K     *****\n");
  else
    printf("*** M3ETRE47-09 *** N G ***\n");
}
{
  int i=1,a=2;
  i*=(a);
  if(i==2)
    printf("*** M3ETRE47-10 *****     O    K     *****\n");
  else
    printf("*** M3ETRE47-10 *** N G ***\n");
}
printf("*** M3ETRE47 ** MK3 TEST FOR X_TREEMK **** ENDED \n");
return 0;
  }
int 
m3etre48 (void)
  {
printf("*** M3ETRE48 ** MK3 TEST FOR X_TREEMK **** STARTED \n");
{
  int i=4,a=2;
  i/=(a);
  if(i==2)
    printf("*** M3ETRE48-01 *****     O    K     *****\n");
  else
    printf("*** M3ETRE48-01 *** N G ***\n");
}
{
  int i=4,a=2;
  i%=(a);
  if(i==0)
    printf("*** M3ETRE48-02 *****     O    K     *****\n");
  else
    printf("*** M3ETRE48-02 *** N G ***\n");
}
{
  int i=4,a=2;
  i>>=(a);
  if(i==1)
    printf("*** M3ETRE48-03 *****     O    K     *****\n");
  else
    printf("*** M3ETRE48-03 *** N G ***\n");
}
{
  int i=4,a=2;
  i<<=(a);
  if(i==16)
    printf("*** M3ETRE48-04 *****     O    K     *****\n");
  else
    printf("*** M3ETRE48-04 *** N G ***\n");
}
{
  int i=4,a=2;
  i&=(a);
  if(i==0)
    printf("*** M3ETRE48-05 *****     O    K     *****\n");
  else
    printf("*** M3ETRE48-05 *** N G ***\n");
}
{
  int i=4,a=2;
  i^=(a);
  if(i==6)
    printf("*** M3ETRE48-06 *****     O    K     *****\n");
  else
    printf("*** M3ETRE48-06 *** N G ***\n");
}
{
  int i=4,a=2;
  i|=(a);
  if(i==6)
    printf("*** M3ETRE48-07 *****     O    K     *****\n");
  else
    printf("*** M3ETRE48-07 *** N G ***\n");
}
{
  int i=4,a=2;
  i=(a);
  if(i==2)
    printf("*** M3ETRE48-08 *****     O    K     *****\n");
  else
    printf("*** M3ETRE48-08 *** N G ***\n");
}
{
  int *i,a=2;
  i=&(a);
  if(*i==2)
    printf("*** M3ETRE48-09 *****     O    K     *****\n");
  else
    printf("*** M3ETRE48-09 *** N G ***\n");
}
{
  int *i,a=2,b=0;
  i=&(a);
  b=*(i);
  if(b==2)
    printf("*** M3ETRE48-10 *****     O    K     *****\n");
  else
    printf("*** M3ETRE48-10 *** N G ***\n");
}
printf("*** M3ETRE48 ** MK3 TEST FOR X_TREEMK **** ENDED \n");
return 0;
  }
int 
m3etre49 (void)
  {
printf("*** M3ETRE49 ** MK3 TEST FOR X_TREEMK **** STARTED \n");
{
  int i=0,a=2;
  i=-(a);
  if(i==-2)
    printf("*** M3ETRE49-01 *****     O    K     *****\n");
  else
    printf("*** M3ETRE49-01 *** N G ***\n");
}
{
  int i=1,a=2;
  i=!(a);
  if(i==0)
    printf("*** M3ETRE49-02 *****     O    K     *****\n");
  else
    printf("*** M3ETRE49-02 *** N G ***\n");
}
{
  int i=0,a=1;
  i=~(a);
  if(i==-2)
    printf("*** M3ETRE49-03 *****     O    K     *****\n");
  else
    printf("*** M3ETRE49-03 *** N G ***\n");
}
{
  int i=0;char a=1;
  i=(int)(a);
  if(i==1)
    printf("*** M3ETRE49-04 *****     O    K     *****\n");
  else
    printf("*** M3ETRE49-04 *** N G ***\n");
}
{
  int i=0;char a=1;
  i=(i==0)?(++a):1;
  if(i==2)
    printf("*** M3ETRE49-05 *****     O    K     *****\n");
  else
    printf("*** M3ETRE49-05 *** N G ***\n");
}
{
  int i=0;char a=1;
  i=(i!=0)?1:(++a);
  if(i==2)
    printf("*** M3ETRE49-06 *****     O    K     *****\n");
  else
    printf("*** M3ETRE49-06 *** N G ***\n");
}
{
  int i=0;char a=1;
  i=((a=a+1)+1);
  if(i==3)
    printf("*** M3ETRE49-07 *****     O    K     *****\n");
  else
    printf("*** M3ETRE49-07 *** N G ***\n");
}
{
  int i=0;char a=1;
  i=+(a=a+1);
  if(i==2)
    printf("*** M3ETRE49-08 *****     O    K     *****\n");
  else
    printf("*** M3ETRE49-08 *** N G ***\n");
}
{
  int i=0;char a=1;
  i=++(a);
  if(i==2)
    printf("*** M3ETRE49-09 *****     O    K     *****\n");
  else
    printf("*** M3ETRE49-09 *** N G ***\n");
}
{
  int i=1;char a=1;
  i=--(a);
  if(i==0)
    printf("*** M3ETRE49-10 *****     O    K     *****\n");
  else
    printf("*** M3ETRE49-10 *** N G ***\n");
}
printf("*** M3ETRE49 ** MK3 TEST FOR X_TREEMK **** ENDED \n");
 return 0;
  }
int 
m3etre50 (void)
  {
printf("*** M3ETRE50 ** MK3 TEST FOR X_TREEMK **** STARTED \n");
{
  int i=0;char a=1;
  i=--a,(++i);
  if(i==1)
    printf("*** M3ETRE50-01 *****     O    K     *****\n");
  else
    printf("*** M3ETRE50-01 *** N G ***\n");
}
{
  int f50();char a=1;
  a=f50(1);
  if(a==2)
    printf("*** M3ETRE50-02 *****     O    K     *****\n");
  else
    printf("*** M3ETRE50-02 *** N G ***\n");
}
{
  int f50();char a=1,b=1;
  a=f50(b);
  if(a==2)
    printf("*** M3ETRE50-03 *****     O    K     *****\n");
  else
    printf("*** M3ETRE50-03 *** N G ***\n");
}
{
  int f50();char a=1;
  static int arr[]={1,2,3};
  a=f50(arr[0]);
  if(a==2)
    printf("*** M3ETRE50-04 *****     O    K     *****\n");
  else
    printf("*** M3ETRE50-04 *** N G ***\n");
}
{
  int fff();char a=0;
  a=fff();
  if(a==2)
    printf("*** M3ETRE50-05 *****     O    K     *****\n");
  else
    printf("*** M3ETRE50-05 *** N G ***\n");
}
{
  int f50();char a=2;
  a=f50(a=(a+(-1)));
  if(a==2)
    printf("*** M3ETRE50-06 *****     O    K     *****\n");
  else
    printf("*** M3ETRE50-06 *** N G ***\n");
}
{
  char a=2,i=0;
  i=(a++);
  if(a==3&i==2)
    printf("*** M3ETRE50-07 *****     O    K     *****\n");
  else
    printf("*** M3ETRE50-07 *** N G ***\n");
}
{
  char a=2,i=0;
  i=(a--);
  if(a==1&i==2)
    printf("*** M3ETRE50-08 *****     O    K     *****\n");
  else
    printf("*** M3ETRE50-08 *** N G ***\n");
}
{
  int f50();char a=1,b=0;
  b=(a=f50(a));
  if(b==2)
    printf("*** M3ETRE50-09 *****     O    K     *****\n");
  else
    printf("*** M3ETRE50-09 *** N G ***\n");
}
{
  char i=0,a=1;
  i=(a++);
  if(i==1)
    printf("*** M3ETRE50-10 *****     O    K     *****\n");
  else
    printf("*** M3ETRE50-10 *** N G ***\n");
}
printf("*** M3ETRE50 ** MK3 TEST FOR X_TREEMK **** ENDED \n");
return 0;
  }
int 
fff (void)
{
  return(2);
  }
int 
f50 (int a)
  {
    if(a==1)
    return(2);
    else
    return(0);
  }
