struct SG {}*sgobj;
struct {}*sg1obj;
class CG : public SG {}*cgobj;
class CG1 {}*cg1obj;
class {}*cg2obj;
class CG3 : public SG , public CG , public CG1 {}*cg3obj;
union UG {}*ugobj;
union {}*ug1obj;
enum EG {}*egobj;
enum {}*egf1obj;

#include <stdio.h>
int main()
{
  struct SL {}*slobj;
  struct {}*sl1obj;
  class CL : public SL {}*clobj;
  class CL1 {}*cl1obj;
  class {}*cl2obj;
  class CL3 : public SL , public CL , public CL1 {}*cl3obj;
  union UL {}*ulobj;
  union {}*ul1obj;
  enum EL {}*elobj;
  enum {}*el1obj;
  int a=0;

  puts("ok");
}
