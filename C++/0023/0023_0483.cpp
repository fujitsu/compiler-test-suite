#include <cassert>

int i = 0;
int j = 0;
struct T
{
   T(){ i++;};
   T(const T&) { j++;};
   ~T(){}; 
};

T g()
{
  return T();
}

void f(T t){};

T* m()
{
  return new T[2];
}

void n(T* t){};

int main()
{
   {
   f(g());
   assert(i == 1);
   assert(j == 0);
   }
   {
   n(m());
   assert(i == 3);
   assert(j == 0);
   }
}