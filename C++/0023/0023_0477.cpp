#include <cassert>

int i = 0;
struct T
{
   T() { i++;};
   ~T(){};
};

int main()
{
   {
   T &&x = T();
   int &&x1 = int();
   assert(i == 1);
   }
   {
    T* &&x2 = new T[2];
    int* &&x3 = new int[2];
    assert(i == 3);
   }  
}