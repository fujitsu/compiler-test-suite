class C1 {
public:
  int c1;
};
class C2 {
public:
  int c2;
};
class C3 : protected C1 {
public:
  int c3;
};
class C4 : protected C2 {
public:
  int c4;
};
class C5 : private C3, private C4 {
public:
  int c5;
  using C1::c1;
  using C2::c2;
  using C3::c3;
  using C4::c4;
};

C5 c5obj;

int i;

#include <stdio.h>
int main(){
  c5obj.c1 = 1;
  c5obj.c2 = 2;
  c5obj.c3 = 3;
  c5obj.c4 = 4;
  c5obj.c5 = 5;
  i=c5obj.c1+c5obj.c2+c5obj.c3+c5obj.c4+c5obj.c5;
  i++;

  puts("ok");
}
