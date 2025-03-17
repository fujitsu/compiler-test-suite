#include <cstdio>

void init() __attribute__((constructor));
void fin() __attribute__((destructor));

void init() { puts("init called"); }

void fin() { puts("fin called"); }

int main() {
  puts("main called");
  return 0;
}
