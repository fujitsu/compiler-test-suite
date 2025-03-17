#include <cassert>
#if __has_include("fil.pass.c")
 bool flag = true;
#else 
 bool flag = false;
#endif

int main()
{
  assert(flag == true);
}