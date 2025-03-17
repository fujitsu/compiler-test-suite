class A {
public:
  int a;
  short b;
  A(int x,short y){ a=x; b=y; }
  A(){}
};


typedef int	TI;
typedef int&	TIR;
typedef int*	TIP;
typedef int*&	TIPR;
typedef int	TIA  [3];
typedef int	TIA2 [3][3];
typedef int*	TIPA [3];
typedef int	TIF();
typedef int&	TIFR();
typedef int*	TIFP();
typedef int*&	TIFPR();
typedef int	(*TIPF)();


typedef char	TC;
typedef char&	TCR;
typedef char*	TCP;
typedef char*&	TCPR;
typedef char	TCA[3];
typedef char	TCA2[3][2];


typedef A	TA;
typedef A&	TAR;
typedef A*	TAP;
typedef A*&	TAPR;


typedef TI	TIB;
typedef TIR	TIRB;
typedef TIP	TIPB;
typedef TIPR	TIPRB;

typedef TIA	TIAB;

typedef TI	TTIA  [3];
typedef TI	TTIA2 [3][3];
typedef TI*	TTIPA [3];

typedef TIA	TTIAA[3];


A      aobj = A(1,2);
TA     tobj = A(10,20);
TA     tarry[3] ;
TAR   trobj = tobj;
TAP   tpobj = &tobj;
TAPR tprobj = tpobj;
TAP* tppobj = &tpobj;
A   Aar[3];
A   Aar2[2][3];

int  a    = 100;
int& ar   = a;
int  arry[3]      = {1,2,3};
int *parry[3]     = {arry,arry+1,arry+2};
int  arry2[2][3]  = {1,2,3,4,5,6};
int *parry2[2][3] = {arry,arry+1,arry+2,arry,arry+1,arry+2};

TI   aa   = 200;
TI   aatr[3] = {100,200,300};
TIR  aar  = aa;
TIP  aap  = &aa;
TIPR aapr = aap;
TIP* aapp = &aap;
TIA  aaa  = {10,20,30};
TIA  aaa2[3] = {10,20,30,40,50,60,70,80,90};
TIA2 aaat2 = {11,22,33,44,55,66,77,88,99};
TIPA aapa = {aaa,aaa+1,aaa+2};

char b    = 'X';
TC   bb   = 'Y';
TCR  bbr  = bb;
TCP  bbp  = &bb;
TCPR bbpr = bbp;
TCP* bbpp = &bbp;
TCA  bbb  = {'1','2','3'};
TCA2 bbb2 = {'1','2','3','4','5','6'};

TTIAA ttiaa;

TIPF tpf;
int (*pf)();

typedef int    Tint[2];
typedef Tint   TTint[3];
typedef TTint  TTTint[4];
Tint   a_Tint[3]   = {{1,2},{3,4},{5,6}};
TTint  a2_TTint    = {{1,2},{3,4},{5,6}};
TTint  a3_TTint[4] = {{{1,2},{3,4},{5,6}},{7,8,9,10,11,12},{13,14,15,16,17,18},{19,20,21,22,23,24}};
TTTint a4_TTTint   = {1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24};
int ax2[2][3] = {{1,2,3},{4,5,6}};
int ax3[3][2] = {{1,2},{3,4},{5,6}};


int z[3]={100,200,300};
typedef TI (&TR)[3];
typedef TR TTR;
int (&cc1)[3]=z;
TR  cc2=z;
TTR cc3=z;

int ir1[3] = {1,2,3};
int ir2[3] = {10,20,30};
int (*apa[2])[3] = {&ir1,&ir2};
int (*pa)[3] = &ir1;

void (*func())(){return 0;}
void (*func2)();

typedef TI *XX[2];
typedef XX YY[3];
XX xx = {&ir1[0],&ir1[1]};
YY yy = {{&ir1[0],&ir1[1]},{&ir1[2],&ir2[0]},{&ir2[1],&ir2[2]}};

#include <stdio.h>
int main(){

  puts("ok");
}
