#ifndef _B_HPP
#define _B_HPP

namespace A
{
  namespace B
  {
    void funcAB(void) __attribute__ ((constructor (4000)));
  }
  
  namespace C
  {
    void funcAC(void) __attribute__ ((destructor (4000)));
  }
}
#endif
