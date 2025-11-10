#include <cstdio>

int a[] = {1, static_cast<int>(1.1), 2};
int i = 1.1;

class X {
public:
  void find(char c, char *str) {
    ;
  }
};

void func(X x) {
};

int main()
{
  X x;
  func(x);

  if(sizeof(X) == 1){
    printf("ok\n");
  } else{
    printf("ng\n");
  }

  return 0;
}
