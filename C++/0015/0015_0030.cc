#include <new>
#include <stdio.h>
#include <stdlib.h>

int count;

class Class {
  int m01;
public:
  Class() { m01 = count++; if (count==1) throw "ok\n"; }
  ~Class() { count = m01; }
};

static Class *Func(Class* P) {
  return new(P) Class[2];
}
int main() {
  char* P = (char*)malloc(2*sizeof(Class));
  try {
    Func((Class*)P);
  } catch (const char *msg) {
    if (count==1)
      printf(msg);
    else
      printf("ng\n");
  }
  free(P);
}
