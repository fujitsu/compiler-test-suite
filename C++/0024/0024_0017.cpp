#include "000.h"
#include <iostream>
using namespace std;

void func() __attribute__((no_check_memory_usage));
void func() {}
int main() {
  header("test", "no_check_memory_usage");
  func();
  header("test", "no_check_memory_usage");
  return 0;
}
