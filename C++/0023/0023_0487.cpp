#include <cassert>

int i = 0;
int j = 0;
struct T
{
   T(){ i++;};
   T(T&&) { j++;};
   ~T(){}; 
};

int main()
{
  {
   T t = T(T(T()));
   assert(i == 1);
   assert(j == 0);
  }
  {
   T* t = new T[2];
   assert(i == 3);
   assert(j == 0);
  }
}