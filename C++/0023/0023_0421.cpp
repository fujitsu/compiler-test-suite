#include <cassert>
#if __has_include("include.pass.cc")
 bool flag = true;
#else 
 bool flag = false;
#endif

int main()
{
  assert(flag == true);
}
