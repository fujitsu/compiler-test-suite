#include  <stdio.h>

int global;
void sub0(){ global=0; }
void sub1(){ global=global+1; }
void sub2(){ global=global+2; }
void sub3(){ global=global+3; }
void sub4(){ global=global+4; }
void sub5(){ global=global+5; }
void sub6(){ global=global+6; }
void sub7(){ global=global+7; }
void sub8(){ global=global+8; }
void sub9(){ global=global+9; }
void sub10(){ global=global+10; }
void sub11(){ global=global+11; }
void sub12(){ global=global+12; }
void sub13(){ global=global+13; }
void sub14(){ global=global+14; }
void sub15(){ global=global+15; }
void sub16(){ global=global+16; }
void sub17(){ global=global+17; }
void sub18(){ global=global+18; }
void sub19(){ global=global+19; }
void sub20(){ global=global+20; }

void (*jump[])() = {
  sub0,sub1,sub2,sub3,sub4,sub5,sub6,sub7,sub8,sub9,sub10,
  sub11,sub12,sub13,sub14,sub15,sub16,sub17,sub18,sub19,sub20
};
int main()
{
     int i;
     for(i=0;i<20;i++) {
       (*jump[i])();
     }
     if( global == 190 ) puts(" OK ");
     else                puts(" NG ");
}
