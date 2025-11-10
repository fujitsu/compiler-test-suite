#include "000.h"
#include <iostream>
using namespace std;

#if __GNUC__ > 4 || (__GNUC__ == 4 && __GNUC_MINOR__ >= 2)
static
#endif
    void
    __f(int val) {
  confirm(1, "If this message is printed, it is OK.");
}

#if __GNUC__ > 4 || (__GNUC__ == 4 && __GNUC_MINOR__ >= 2)
static void f(int a) __attribute__((weakref, alias("__f")));
#else
extern void f(int a) __attribute__((weak, weakref, alias("__f")));
#endif

int main(void) {
  header("002_weakref", "weakref");
  f(10);
  header("002_weakref", "weakref");
}
