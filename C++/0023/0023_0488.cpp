#include <cassert>

int i = 0;
int j = 0;
struct T
{
   int n;
   T(){ i++;};
   T(T&&) { j++;};
   ~T(){}; 
};

int main()
{
  {
   int K = T(T(T())).n;
   assert(i == 1);
   assert(j == 0);
   }
  {
   T* t = new T[7];
   int b = t->n;
   assert(i == 8);
   assert(j == 0);
  }
}