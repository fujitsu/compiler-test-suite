#include <stdio.h>
#ifdef __GNUC__
asm("");
#endif
int main()
{
  puts("PASS");
}
