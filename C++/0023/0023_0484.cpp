#include <cassert>

int i = 0;
int j = 0;
struct T
{
   T(){ i++;};
   T(const T&) { j++;};
   ~T(){}; 
};

int main()
{
  {
   T &&x = T(T());
   int &&x1 = int(int());
   assert(i == 1);
   assert(j == 0);
  }
  {
   T* &&x2 = new T[3];
   int* &&x3 = new int[3];
   assert(i == 4);
   assert(j == 0);
  }

}