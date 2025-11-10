

#ifdef _M3INC001fc_
void funcfca(){
  st++;
}
#else
#define _M3INC001fc_
#include "002.h"
#undef  _M3INC001fc_
void funcfcb(){
  st--;
  st++;
}
#endif
