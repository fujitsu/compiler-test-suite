
namespace NA { 
 namespace NC{}
}
namespace { 
 namespace ND{}
}
namespace NB {
  namespace X = NA;
}
namespace Y = NA;
namespace Z = NA::NC;
namespace W = ND;
using namespace NB;
using namespace Y;
#include <stdio.h>
int main(){
  puts("ok");
}
