#include <cassert>
#if __has_include("abc/edf")
 bool flag = true;
#else 
 bool flag = false;
#endif

int main()
{
  assert(flag == false);
}
