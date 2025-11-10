#include "003.h"

extern funcPtr *fptr(void);

int main()
{
  funcPtr *p = fptr();

  p[0]("sub1: OK");
  p[1]("sub2: OK");
  p[2]("sub3: OK");

  return 0;
}
