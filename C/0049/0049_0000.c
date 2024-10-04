#include <string.h>
#include  <stdio.h>
#include <setjmp.h>
int get_int(int x);
static int iii(int x);
int sub10(int i, int j);
int sub8(int L);
int sub9(int L);
int sub7(int L);

static void 
init (a)
     int a[10];
{
  a[0] = 1;
  a[1] = 6;
  a[2] = 2;
  a[3] = 7;
  a[4] = 3;
  a[5] = 8;
  a[6] = 4;
  a[7] = 9;
  a[8] = 5;
  a[9] = 10;
}

static void 
sub1 ()
{
  int i;
  int j = 0;
  int sum = 0;
  int a[10];
  init (a);
#pragma clang loop unroll_count(10)
  for (i = 0; i < 10; i++)
    {
      j++;
      sum = sum + a[i] * j;
    }
  if (sum != 355)
    printf ("ng,%d\n", sum);
  if (j != 10)
    printf ("ng,%d\n", j);
}
static void 
sub2 ()
{
  int i;
  int j = 0;
  int sum = 0;
  int a[10];
  init (a);
#pragma clang loop unroll_count(5)
  for (i = 0; i < 10; i++)
    {
      j++;
      sum = sum + a[i] * j;
    }
  if (sum != 355)
    printf ("ng,%d\n", sum);
  if (j != 10)
    printf ("ng,%d\n", j);
}
static void 
sub3 ()
{
  int i;
  int j = 0;
  int sum = 0;
  int a[10];
  init (a);
#pragma clang loop unroll_count(4)
  for (i = 0; i < 9; i++)
    {
      j++;
      sum = sum + a[i] * j;
    }
  if (sum != 255)
    printf ("ng,%d\n", sum);
  if (j != 9)
    printf ("ng,%d\n", j);
}
static void 
sub4 (L)
     int L;
{
  int i;
  int j = 0;
  int sum = 0;
  int a[10];
  init (a);
  for (i = 0; i < L; i++)
    {
      j++;
      sum = sum + a[i] * j;
    }
  if (sum != 355)
    printf ("ng,%d\n", sum);
  if (j != 10)
    printf ("ng,%d\n", j);
}
static void 
sub5 ()
{
  int i;
  int j = 0;
  int sum = 0;
  int a[10];
  init (a);
#pragma clang loop unroll_count(4)
  for (i = 0; i < 10; i++)
    {
      j++;
      sum = sum + a[i] * j;
    }
  if (sum != 355)
    printf ("ng,%d\n", sum);
  if (j != 10)
    printf ("ng,%d\n", j);
}
static void 
sub6 ()
{
  int i;
  int j = 0;
  int sum = 0;
  int a[10];
  init (a);
#pragma clang loop unroll_count(7)
  for (i = 0; i < 10; i++)
    {
      j++;
      sum = sum + a[i] * j;
    }
  if (sum != 355)
    printf ("ng,%d\n", sum);
  if (j != 10)
    printf ("ng,%d\n", j);
}

void 
M2K13501()
{
  sub1 ();
  sub2 ();
  sub3 ();
  sub4 (10);
  sub5 ();
  sub6 ();
  printf ("ok\n");
  return;
}

static char b[]="1234567890";

int M2K13601()
{
  sub7(11);
  sub9(11);
  puts("ok");
}
int sub7(int L)
{
  char  a[11];
  char  *A,*B;
  int i,p=0,q=0,d=0;
  A=a;
  B=b;
  for(i=0;i<L;i++)
    {
      p=i*i;
      q=p+i+i;
      *A=*B;
      A++;
      B++;
      d+=sub8(p+q);
    }
  if(d!=880)
    printf("ng\n");
  if(strcmp(a,b))
    printf("ng\n");
}

int sub8(L)
     int L;
{
  return L;
}

int sub9(L)
     int L;
{
  int i;
  int p=0;
  for(i=0;i<L;i++)
    {
      p=sub10(i*(i+5),i*(i-5));
    }
  if(p!=200)
    printf("ng\n");
}

int sub10(i,j)
     int i,j;
{
  return i+j;
}

#define I_MAX 20
jmp_buf env1,env2;

double A[I_MAX],B[I_MAX];
static void sub11(),sub12();

static void main_test1(n)
int n;
{
  int x=0,y=0,test=iii(n);
  int i=0;
  double s=1.0,t=1.0;
  printf("test%d start\n",n);
  if (test==0){
    s=-1.0;
    t=s*-1.0;
    goto LOOP_1;
  }
  s=2.0;
LOOP_0:  
  t=s+(float)i;
LOOP_1:
  if (i<I_MAX)
    A[i]+=s*B[i];
  else
    goto END;
  i++;
  goto LOOP_0;
 END:
  printf("test%d ended\n",n);
  return;
}
  
static int iii(x) int x; {return x;}
static void sub11(n)
int n;
{
  longjmp(env1,n);
  printf("******\n");
}

int M2K14001()
{
  volatile int i=0,test=0;
  printf("M2K14001 Start\n");
  printf("Check the GEN Graph and make sure that there are LOOP PSEUDO GEN in main_test.\n");
  i += setjmp(env1);
  if (i<I_MAX){
#if DEBUG
    fprintf(stderr,"i=%d\n",i);
#endif
    A[i]=(double)-i;
    B[i]=i;
    sub11(1);
  }
  if (test==0){
    main_test1(test++);
    printf("%f %f %f\n",(float)A[0],(float)A[1],(float)A[I_MAX-1]);
    i=-1;
    sub11(1);
  }
  main_test1(test);
  printf("%f %f %f\n",(float)A[0],(float)A[1],(float)A[I_MAX-1]);
  printf("M2K14001 End\n");
}

#define I_MAX 20

double A[I_MAX],B[I_MAX];

static void main_test3(n)
int n;
{
  int x=0,y=0,test=iii(n);
  int i=0;
  double s=1.0,t=1.0;
  printf("test%d start\n",n);
  if (test>0){
    s=-1.0;
    t=s*-1.0;
    switch (iii(n)){
    case 0:
    case 1:
      goto LOOP_1;
    case 10:
    case 11:
    case 12:
    case 13:
    case 14:
    case 15:
    case 16:
    case 17:
    case 18:
    case 19:
    case 20:
      goto LOOP_0;
    case 100:
    case 200:
      goto END;
    default:
      goto ERROR;
    }
  }
  s=2.0;
LOOP_0:  
  t=s+(float)i;
LOOP_1:
  if (i<I_MAX)
    A[i]+=s*B[i];
  else
    goto END;
  i++;
  goto LOOP_0;
 END:
  printf("test%d ended\n",n);
  return;
 ERROR:
  printf("ERROR",n);
  return;
}
  

int M2K14004()
{
  int i=0,test=0;
  printf("M2K14004 Start\n");
  printf("Check the GEN Graph and make sure that there are no LOOP PSEUDO GEN\n");
  for (i=0;i<I_MAX;i++){
    A[i]=(double)-i;
    B[i]=i;
  }
  main_test3(-1);
  printf("%f %f\n",(float)A[1],(float)A[I_MAX-1]);
  for (i=0;i<I_MAX;i++){
    A[i]=(double)-i;
    B[i]=i;
  }
  main_test3(1);
  printf("%f %f\n",(float)A[1],(float)A[I_MAX-1]);
  for (i=0;i<I_MAX;i++){
    A[i]=(double)-i;
    B[i]=i;
  }
  main_test3(20);
  printf("%f %f\n",(float)A[1],(float)A[I_MAX-1]);
  printf("M2K14003 End\n");
  for (i=0;i<I_MAX;i++){
    A[i]=(double)-i;
    B[i]=i;
  }
  main_test3(200);
  printf("%f %f\n",(float)A[1],(float)A[I_MAX-1]);
  printf("M2K14004 End\n");
}

struct t {
                       long double a; 
                       long double b;
};
void    sub15(struct t a[][3][3][3][3][3][3][3][3][3],
            struct t b[][3][3][3][3][3][3][3][3][3]) {
int i,j,k,l,m,n,o,p,q,r,s,t,u,ok=0,ng=0;

  for (i=0; i<3; i++ )     
    for (j=0; j<3; j++)     
      for (k=0; k<3; k++)  
        for (l=0; l<3; l++)  
          for (m=0; m<3; m++)  
            for (n=0; n<3; n++)  
              for (o=0; o<3; o++)  
                for (p=0; p<3; p++)  
                  for (q=0; q<3; q++)  
                    for (r=0; r<3; r++)  
         b[i][j][k][l][m][n][o][p][q][r].a 
        =a[i][j][k][l][m][n][o][p][q][r].a + 99.0L; 

}
int M2K15001()
{
	printf("*** K150 (examine object code) ***\n") ;
}

int M2K16101()
{
  int a,b,c,i;

  printf ("### M2K16101 START ###\n");
  b=get_int(3);
  c=get_int(5);

  for (i=1;i<3;i++){
    a = c % b;        
    b = a % 4194305;  
    b = a % 5;        
    a += c;
    b += a;
  }
  if (a == 10)
    printf ("###      OK-1      ###\n");
  else
    printf ("###      NG-1 a=%d ###\n",a);

  if (b == 10)
    printf ("###      OK-2      ###\n");
  else
    printf ("###      NG-2 b=%d ###\n",b);
  
  printf ("### M2K16101 END   ###\n");

  return 0;
}

int get_int(x)
int x;
{
  return x;
}

int M2K16102()
{
  printf ("### M2K16102 START ###\n");

  {
	static char ch=1;
	static int in =3,a;

	a = ch % in;
	if (a == 1)
	  printf("###      OK        ###\n");
	else
	  printf("###      NG   a=%d ###\n",a);
  }

  {
	static char ch=1;
	static short in =3,a;

	a = ch % in;
	if (a == 1)
	  printf("###      OK        ###\n");
	else
	  printf("###      NG   a=%d ###\n",a);
  }

  {
	static char ch=1;
	static char in =3,a;

	a = ch % in;
	if (a == 1)
	  printf("###      OK        ###\n");
	else
	  printf("###      NG   a=%d ###\n",a);
  }

  {
	static unsigned char ch=1;
	static int in =3,a;

	a = ch % in;
	if (a == 1)
	  printf("###      OK        ###\n");
	else
	  printf("###      NG   a=%d ###\n",a);
  }

  {
	static unsigned char ch=1;
	static short in =3,a;

	a = ch % in;
	if (a == 1)
	  printf("###      OK        ###\n");
	else
	  printf("###      NG   a=%d ###\n",a);
  }

  {
	static unsigned char ch=1;
	static char in =3,a;

	a = ch % in;
	if (a == 1)
	  printf("###      OK        ###\n");
	else
	  printf("###      NG   a=%d ###\n",a);
  }

  {
	static unsigned char ch=1;
	static unsigned int in =3,a;

	a = ch % in;
	if (a == 1)
	  printf("###      OK        ###\n");
	else
	  printf("###      NG   a=%d ###\n",a);
  }

  {
	static unsigned char ch=1;
	static unsigned short in =3,a;

	a = ch % in;
	if (a == 1)
	  printf("###      OK        ###\n");
	else
	  printf("###      NG   a=%d ###\n",a);
  }

  {
	static unsigned char ch=1;
	static unsigned char in =3,a;

	a = ch % in;
	if (a == 1)
	  printf("###      OK        ###\n");
	else
	  printf("###      NG   a=%d ###\n",a);
  }

  {
	static char ch=1;
	static unsigned int in =3,a;

	a = ch % in;
	if (a == 1)
	  printf("###      OK        ###\n");
	else
	  printf("###      NG   a=%d ###\n",a);
  }

  {
	static char ch=1;
	static unsigned short in =3,a;

	a = ch % in;
	if (a == 1)
	  printf("###      OK        ###\n");
	else
	  printf("###      NG   a=%d ###\n",a);
  }

  {
	static char ch=1;
	static unsigned char in =3,a;

	a = ch % in;
	if (a == 1)
	  printf("###      OK        ###\n");
	else
	  printf("###      NG   a=%d ###\n",a);
  }

  {
	static char ch=1;
	static unsigned char in =3,a;

	a = ch % 3;
	if (a == 1)
	  printf("###      OK        ###\n");
	else
	  printf("###      NG   a=%d ###\n",a);
  }

  printf ("### M2K16102 END   ###\n");
}

int M2K16103()
{
  printf ("### M2K16103 START ###\n");

  {
	static int ch=1;
	static int in =3,a;

	a = ch % in;
	if (a == 1)
	  printf("###      OK        ###\n");
	else
	  printf("###      NG   a=%d ###\n",a);
  }

  {
	static int ch=1;
	static short in =3,a;

	a = ch % in;
	if (a == 1)
	  printf("###      OK        ###\n");
	else
	  printf("###      NG   a=%d ###\n",a);
  }

  {
	static int ch=1;
	static char in =3,a;

	a = ch % in;
	if (a == 1)
	  printf("###      OK        ###\n");
	else
	  printf("###      NG   a=%d ###\n",a);
  }

  {
	static unsigned int ch=1;
	static int in =3,a;

	a = ch % in;
	if (a == 1)
	  printf("###      OK        ###\n");
	else
	  printf("###      NG   a=%d ###\n",a);
  }

  {
	static unsigned int ch=1;
	static short in =3,a;

	a = ch % in;
	if (a == 1)
	  printf("###      OK        ###\n");
	else
	  printf("###      NG   a=%d ###\n",a);
  }

  {
	static unsigned int ch=1;
	static char in =3,a;

	a = ch % in;
	if (a == 1)
	  printf("###      OK        ###\n");
	else
	  printf("###      NG   a=%d ###\n",a);
  }

  {
	static unsigned int ch=1;
	static unsigned int in =3,a;

	a = ch % in;
	if (a == 1)
	  printf("###      OK        ###\n");
	else
	  printf("###      NG   a=%d ###\n",a);
  }

  {
	static unsigned int ch=1;
	static unsigned short in =3,a;

	a = ch % in;
	if (a == 1)
	  printf("###      OK        ###\n");
	else
	  printf("###      NG   a=%d ###\n",a);
  }

  {
	static unsigned int ch=1;
	static unsigned char in =3,a;

	a = ch % in;
	if (a == 1)
	  printf("###      OK        ###\n");
	else
	  printf("###      NG   a=%d ###\n",a);
  }

  {
	static int ch=1;
	static unsigned int in =3,a;

	a = ch % in;
	if (a == 1)
	  printf("###      OK        ###\n");
	else
	  printf("###      NG   a=%d ###\n",a);
  }

  {
	static int ch=1;
	static unsigned short in =3,a;

	a = ch % in;
	if (a == 1)
	  printf("###      OK        ###\n");
	else
	  printf("###      NG   a=%d ###\n",a);
  }

  {
	static int ch=1;
	static unsigned char in =3,a;

	a = ch % in;
	if (a == 1)
	  printf("###      OK        ###\n");
	else
	  printf("###      NG   a=%d ###\n",a);
  }

  {
	static int ch=1;
	static unsigned char in =3,a;

	a = ch % 3;
	if (a == 1)
	  printf("###      OK        ###\n");
	else
	  printf("###      NG   a=%d ###\n",a);
  }

  printf ("### M2K16103 END   ###\n");
}

int M2K16104()
{
  printf ("### M2K16104 START ###\n");

  {
	static short ch=1;
	static int in =3,a;

	a = ch % in;
	if (a == 1)
	  printf("###      OK        ###\n");
	else
	  printf("###      NG   a=%d ###\n",a);
  }

  {
	static short ch=1;
	static short in =3,a;

	a = ch % in;
	if (a == 1)
	  printf("###      OK        ###\n");
	else
	  printf("###      NG   a=%d ###\n",a);
  }

  {
	static short ch=1;
	static char in =3,a;

	a = ch % in;
	if (a == 1)
	  printf("###      OK        ###\n");
	else
	  printf("###      NG   a=%d ###\n",a);
  }

  {
	static unsigned short ch=1;
	static int in =3,a;

	a = ch % in;
	if (a == 1)
	  printf("###      OK        ###\n");
	else
	  printf("###      NG   a=%d ###\n",a);
  }

  {
	static unsigned short ch=1;
	static short in =3,a;

	a = ch % in;
	if (a == 1)
	  printf("###      OK        ###\n");
	else
	  printf("###      NG   a=%d ###\n",a);
  }

  {
	static unsigned short ch=1;
	static char in =3,a;

	a = ch % in;
	if (a == 1)
	  printf("###      OK        ###\n");
	else
	  printf("###      NG   a=%d ###\n",a);
  }

  {
	static unsigned short ch=1;
	static unsigned int in =3,a;

	a = ch % in;
	if (a == 1)
	  printf("###      OK        ###\n");
	else
	  printf("###      NG   a=%d ###\n",a);
  }

  {
	static unsigned short ch=1;
	static unsigned short in =3,a;

	a = ch % in;
	if (a == 1)
	  printf("###      OK        ###\n");
	else
	  printf("###      NG   a=%d ###\n",a);
  }

  {
	static unsigned short ch=1;
	static unsigned char in =3,a;

	a = ch % in;
	if (a == 1)
	  printf("###      OK        ###\n");
	else
	  printf("###      NG   a=%d ###\n",a);
  }

  {
	static short ch=1;
	static unsigned int in =3,a;

	a = ch % in;
	if (a == 1)
	  printf("###      OK        ###\n");
	else
	  printf("###      NG   a=%d ###\n",a);
  }

  {
	static short ch=1;
	static unsigned short in =3,a;

	a = ch % in;
	if (a == 1)
	  printf("###      OK        ###\n");
	else
	  printf("###      NG   a=%d ###\n",a);
  }

  {
	static short ch=1;
	static unsigned char in =3,a;

	a = ch % in;
	if (a == 1)
	  printf("###      OK        ###\n");
	else
	  printf("###      NG   a=%d ###\n",a);
  }

  {
	static short ch=1;
	static unsigned char in =3,a;

	a = ch % 3;
	if (a == 1)
	  printf("###      OK        ###\n");
	else
	  printf("###      NG   a=%d ###\n",a);
  }

  printf ("### M2K16104 END   ###\n");
}
int main(){
  M2K13501();
  M2K13601();
  M2K14001();
  M2K14004();
  M2K15001();
  M2K16101();
  M2K16102();
  M2K16103();
  M2K16104();
}
