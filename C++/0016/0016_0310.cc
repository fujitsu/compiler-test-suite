struct SG {}sgobj;

class CG : public SG {
 public:
  struct CSG {
  }csgobj;
}cgobj;

union UG {}ugobj;

SG	func(SG, SG*, SG&){ return sgobj; }
SG	func(SG, SG*, ...){ return sgobj; }
CG	func(CG, CG, CG&){ return cgobj; }
CG	func(CG, CG*, ...){ return cgobj; }
CG::CSG	func(CG::CSG, CG::CSG*, CG::CSG&){ return cgobj.csgobj; }
CG::CSG	func(CG::CSG, CG::CSG*, ...){ return cgobj.csgobj; }
UG	func(UG, UG*, UG&){ return ugobj; }
UG	func(UG, UG*, ...){ return ugobj; }

#include <stdio.h>
int main(){
  puts("ok");
}
