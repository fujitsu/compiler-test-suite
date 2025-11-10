#include <cstdio>
#include <array>

using namespace std;

void sub1()
{
  array<int, 10> ai1, ai2;

  ai1.fill(1);
  ai2.fill(100);
  
  for (auto elem: ai1) {
    if (elem != 1) {
      puts("NG 1");
      return;
    }
  }
  
  for (auto elem: ai2) {
    if (elem != 100) {
      puts("NG 2");
      return;
    }
  }
  
  ai1.swap(ai2);

  for (auto begin = ai1.begin(), end = ai1.end();
       begin != end;
       ++begin) {
    if (*begin != 100) {
      puts("NG 3");
      return;
    }
  }

  for (auto begin = ai2.cbegin(), end = ai2.cend();
       begin != end;
       ++begin) {
    if (*begin != 1) {
      puts("NG 4");
      return;
    }
  }

  puts("OK");
}
