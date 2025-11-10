#include <cstdio>

int main()
{
  int ia[] = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10};
  int j = 0;
  for(auto i : ia) {
    j += i;
  }

  if (j == 55)
    puts("ranged-for statement: OK");
  else
    puts("ranged-for statement: NG");
}
