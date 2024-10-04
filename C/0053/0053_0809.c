#include <stdio.h>
int main()
{
#define X  256
#define Y  256
  int i = X;
  unsigned int ui = Y;

printf(" START\n");
  if (i / 2 != X / 2) { printf("ng-%d\n",__LINE__); }
  if (i % 2 != X % 2) { printf("ng-%d\n",__LINE__); }
  if (i / 4 != X / 4) { printf("ng-%d\n",__LINE__); }

  if (ui / 2 != Y / 2) { printf("ng-%d\n",__LINE__); }
  if (ui / 3 != Y / 3) { printf("ng-%d\n",__LINE__); }
  if (ui / 4 != Y / 4) { printf("ng-%d\n",__LINE__); }
  if (ui / 8 != Y / 8) { printf("ng-%d\n",__LINE__); }
  if (ui / 16 != Y / 16) { printf("ng-%d\n",__LINE__); }
  if (ui / 32 != Y / 32) { printf("ng-%d\n",__LINE__); }
  if (ui / 64 != Y / 64) { printf("ng-%d\n",__LINE__); }
  if (ui / 128 != Y / 128) { printf("ng-%d\n",__LINE__); }
  if (ui / 256 != Y / 256) { printf("ng-%d\n",__LINE__); }

printf(" END\n");
}
