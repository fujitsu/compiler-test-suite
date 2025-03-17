#include <stdio.h>
#include <cstdio>
#include <new>

int Count = 0;

class Class {
  int m01;
public:
  Class() { if(1==(m01=Count++)) throw 1; }
  ~Class() { }
} ;

int Array[8];
int main() {
  Class* P;
  try {
    P = new(Array) Class[2];
    try {
      printf("");
    } catch (int) {
      printf("ng\n");
    }
  } catch (int) {
    printf("ok\n");
  }
  operator delete[](P, Array);
}
