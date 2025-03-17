#include <cassert>
#if __has_include("experimental/optional")
 bool flag = true;
#else 
 bool flag = false;
#endif

int main()
{
  assert(flag == true);
}
