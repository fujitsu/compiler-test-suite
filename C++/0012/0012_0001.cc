#include <stdio.h>

long seeds[4];
class init_generators {
public:
  init_generators();
};
init_generators::init_generators() {
  for (int i = 0; i < 4; i++)
    seeds[i] = 1;
}
static init_generators InitGenerators;
int main() { printf("ok\n"); }
