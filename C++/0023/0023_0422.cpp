#include <cassert>
#if __has_include("26.h_char_seq_1.pass.cpp")
 bool flag = true;
#else 
 bool flag = false;
#endif

int main()
{
  assert(flag == true);
}
