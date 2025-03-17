#include <cassert>
#if __has_include(<ctype.h>)
#include <ctype.h>
 bool flag = true;
#else 
 bool flag = false;
#endif

int main()
{
  assert(flag == true);
}
