class C {
public:
  class CC { public: int cc; };
  union CU { int cu; };
  enum CE {ce1,ce2};
  typedef int CT;
  struct CS { int cs; };
  C f(C c){return c;}
}cobj;
struct S {
  class SC { public: int cc; };
  union SU { int cu; };
  enum SE {ce1,ce2};
  typedef int ST;
  struct SS { int cs; };
}sobj;
union U {
  class UC { public: int cc; };
  union UU { int cu; };
  enum UE {ce1,ce2};
  typedef int UT;
  struct US { int cs; };
}uobj;
typedef C T;
T tobj;
#include <stdio.h>
int main(){
  puts("ok");
}
