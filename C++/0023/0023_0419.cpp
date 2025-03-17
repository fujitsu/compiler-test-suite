#include <cassert>
#if __has_include("file.pass.c")
 bool flag = true;
#else 
 bool flag = false;
#endif

int main()
{
  assert(flag == false);
}
