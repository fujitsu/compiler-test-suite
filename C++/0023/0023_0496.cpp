#include <cassert>

int i = 0;
struct T
{
   T(){ i++;};
   T(T&&) = delete;
   ~T(){}; 
};

int main()
{
  {
   T t = T(T(T()));
   assert(i == 1);
  }
  {
   T* t = new T[8];
   assert(i == 9);
  }
}