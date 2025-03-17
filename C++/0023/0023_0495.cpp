#include <cassert>

int i = 0;
struct T
{
   T(){ i++;};
   T(const T&) = delete;
   ~T(){}; 
};

int main()
{
  {
   T t = T(T());
   assert(i == 1);
   }
   {
   T* t = new T[6];
   assert(i == 7);
   }
}