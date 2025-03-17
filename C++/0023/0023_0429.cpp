#include <cassert>
#if __has_include("iostream")
 bool flag = true;
#else 
 bool flag = false;
#endif

int main()
{
  assert(flag == true);
}
