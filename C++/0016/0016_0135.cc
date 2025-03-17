class A {
public:
  int a;
  int b;
  char c;
  A(int x,int y,char z){
    a=x; b=y, c=z;
  }
};
typedef A TA;
typedef A& TAR;
typedef A* TAP;
typedef A*& TAPR;
typedef int TI;
typedef int& TIR;
typedef int* TIP;
typedef int*& TIPR;
typedef int  TIA [3];
typedef int* TIPA [3];
typedef char TC;
typedef char& TCR;
typedef char* TCP;
typedef char*& TCPR;

A      aobj = A(1,2,'a');
TA     tobj = A(10,20,'b');
TAR   trobj = tobj;
TAP   tpobj = &tobj;
TAPR tprobj = tpobj;
TAP* tppobj = &tpobj;

int  a    = 100;
int& ar   = a;
TI   aa   = 200;
TI*  aap2 = &aa;
TI&  aar2 = aa;
TI*& aapr2 = aap2;
TI** aapp2 = &aap2;
TIR  aar  = aa;
TIP  aap  = &aa;
TIPR aapr = aap;
TIP* aapp = &aap;
TIA  aaa  = {10,20,30};
TIPA aapa = {aaa,aaa+1,aaa+2};
int arry[3]   = {1,2,3};
int *parry[3] = {arry,arry+1,arry+2};
int arry2[2][3]   = {1,2,3,4,5,6};
int *parry2[2][3] = {arry,arry+1,arry+2,arry,arry+1,arry+2};

char b    = 'X';
TC   bb   = 'Y';
TCR  bbr  = bb;
TCP  bbp  = &bb;
TCPR bbpr = bbp;
TCP* bbpp = &bbp;

#include <stdio.h>
int main(){

  puts("ok");
}
