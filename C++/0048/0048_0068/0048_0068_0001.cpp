#include <cstdio>

void sub1()
{
  const char *str = R"("test")";
  std::printf("%s\n", str);
}
