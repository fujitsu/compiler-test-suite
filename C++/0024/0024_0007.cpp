#include <stdio.h>
#pragma pack(push, 1)
class Cmp1 {
public:
  Cmp1() {
    c = 0;
    s = 0;
    d = 0.0;
  }
  void Add(char x) {
    c = x;
    printf("char   %c \n", x);
  }
  void Add(int x) {
    s = x;
    printf("int    %d \n", x);
  }
  void Add(double x) {
    d = x;
    printf("double %f \n", x);
  }
  int Get_num() { return s; }

private:
  char c;
  int s;
  double d;
};
#pragma pack(16)
class Cmp2 {
private:
  int s;
  double d;

public:
  char c;
  Cmp2() {
    c = 0;
    s = 0;
    d = 0.0;
  }
  void Add(char x) {
    c = x;
    printf("char   %c \n", x);
  }
  void Add(int x) {
    s = x;
    printf("int    %d \n", x);
  }
  void Add(double x) {
    d = x;
    printf("double %f \n", x);
  }
  int Get_num() { return s; }
};

int main() {
  Cmp1 s1;
  Cmp1 s2(s1);
  Cmp2 t1;
  Cmp2 t2;

  s2.Add(3);
  s2.Add(2.2);
  s2.Add('3');
  s1 = s2;
  printf("get_nm:%d\n", s2.Get_num());
  if (sizeof(Cmp1) == 13)
    printf("ok01\n");
  else
    printf("ng01 %d\n", sizeof(Cmp1));

  t2.Add(3);
  t2.Add(2.2);
  t2.Add('3');
  t1 = t2;
  printf("get_nm:%d\n", t2.Get_num());
  if (sizeof(Cmp2) == 24)
    printf("ok02\n");
  else
    printf("ng02 %d\n", sizeof(Cmp2));

  return 0;
}
