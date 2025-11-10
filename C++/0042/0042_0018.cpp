#include <cstring>
#include <cstdlib>
#include <cassert>

void* operator new(size_t sz){
  void* m = malloc(sz);
  assert(m);

  const char* p = __func__ ;
  assert(!strcmp(p,"operator new")) ;

  return m;
}

struct St{
  double n;

  St operator+(const St& rhs){
    const char* p = __func__ ;
    assert(!strcmp(p,"operator+")) ;

    St sum;
    sum.n = this->n + rhs.n;
    return sum ;
  }

};

void test(){
  int* p = new int(1);
  St st1;
  St st2;
  st1 + st2;

  free(p);
}

int main(){
  test();
}
