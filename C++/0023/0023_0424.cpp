#include <cassert>
#if __has_include(<123>)
 bool flag = true;
#else 
 bool flag = false;
#endif

int main()
{
  assert(flag == false);
}
