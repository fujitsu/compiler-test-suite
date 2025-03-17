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
    T t = T();
    assert(i == 1);
   }
   {
    T* c = new T[2];
    assert(i == 3);
   }
}