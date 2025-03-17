struct SG {}sgobj0, &sgobj = sgobj0;
struct {}sg1obj0, &sg1obj = sg1obj0;
class CG : public SG {}cgobj0, &cgobj = cgobj0;
class CG1 {}cg1obj0, &cg1obj = cg1obj0;
class {}cg2obj0, &cg2obj = cg2obj0;
class CG3 : public SG , public CG , public CG1 {}cg3obj0, &cg3obj = cg3obj0;
union UG {}ugobj0, &ugobj = ugobj0;
union {}ug1obj0, &ug1obj = ug1obj0;
enum EG {}egobj0, &egobj = egobj0;
enum {}eg1obj0, &eg1obj = eg1obj0;

#include <stdio.h>
int main()
{
  struct SL {}slobj0, &slobj = slobj0;
  struct {}sl1obj0, &sl1obj = sl1obj0;
  class CL : public SL {}clobj0, &clobj = clobj0;
  class CL1 {}cl1obj0, &cl1obj = cl1obj0;
  class {}cl2obj0, &cl2obj = cl2obj0;
  class CL3 : public SL , public CL , public CL1 {}cl3obj0, &cl3obj = cl3obj0;
  union UL {}ulobj0, &ulobj = ulobj0;
  union {}ul1obj0, &ul1obj = ul1obj0;
  enum EL {}elobj0, &elobj = elobj0;
  enum {}el1obj0, &el1obj = el1obj0;

  puts("ok");
}
