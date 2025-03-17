#include <cassert>

int i = 0;
struct T
{
   T() { i++;};
   ~T(){}; 
};

T f() { return T(); }
T* g() { return new T[3];}

int main()
{
  {
   T x = f();
   assert(i == 1);
  }
  {
   T* x1 = g();
   assert(i == 4);
  }
}