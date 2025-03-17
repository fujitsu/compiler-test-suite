struct SG {}sgobj[1];
struct {}sg1obj[1][2];
class CG : public SG {}cgobj[1];
class CG1 {}cg1obj[1];
class {}cg2obj[1][2];
class CG3 : public SG , public CG , public CG1 {}cg3obj[1];
union UG {}ugobj[1];
union {}ug1obj[1][2];
enum EG {}egobj[1];
enum {}eg1obj[1][2];

#include <stdio.h>
int main()
{
  struct SL {}slobj[1];
  struct {}sl1obj[1][2];
  class CL : public SL {}clobj[1];
  class CL1 {}cl1obj[1];
  class {}cl2obj[1][2];
  class CL3 : public SL , public CL , public CL1 {}cl3obj[1];
  union UL {}ulobj[1];
  union {}ul1obj[1][2];
  enum EL {}elobj[1];
  enum {}el1obj[1][2];
  int a=0;

  puts("ok");
}
