
#include <stdio.h>
typedef int TI;
TI a1;
struct SG{};
class CG {
public:
  TI a2;
  TI SG::*a3;
  TI SG::*(SG::*a4);
  TI SG::*(SG::*a5[1]);
  TI SG::*(SG::*a6)[1];
  TI SG::*(SG::*a7[1])[2];
}obj;
int main(){
  a1 = 0;
  obj.a2 = 0;
  obj.a3 = 0;
  obj.a3 = 0;
  obj.a4 = 0;
  obj.a5[0] = 0;
  obj.a6 = 0;
  obj.a7[0] = 0;
  puts("ok");
}
