#include <cstdio>

int main(void){
  char tmp[10];

  std::snprintf(tmp, sizeof(tmp)/sizeof(tmp[0]), "ok");

  printf("%s\n", tmp);

  return 0;
}
