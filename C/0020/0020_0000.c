/********************************************************************************************************************************************************************
 * A test program that tries to determine whether restrict has an effect by changing the declared position of the actual argument passed to the formal argument.
 * Local variable 01, global variable 02, in-scope variable 03, structure member 04, and union member 05 are defined.
 * If the optimization is done as intended, ok is output.
 ********************************************************************************************************************************************************************/

#include <stdio.h>

int *x02;

void func01(int *restrict a, int *restrict b){
  *a = 1;
  *b = 3;

  *a = *a +1; 

  if(*a == 2){
    puts("ok");
  }else{
    puts("ng");
  }
}

int main(){
  int *x01;
  int y01[2];

  x01=y01;
  func01(x01, y01);

  int y02[2];
  x02=y02;
  func01(x02, y02);

  {
    int *x03;
    int y03[2];
    x03=y03;
    func01(x03, y03);
  }

  struct s_type{
    int *x04;
    int y04[2];
  }s;
  s.x04=s.y04;
  func01(s.x04, s.y04);

  union u_type{
    int *x05;
    int y05[2];
  }u;
  u.x05=u.y05;
  func01(u.x05, u.y05);

  return 0;
}
