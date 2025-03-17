#include <cassert>

int i = 0;
struct T
{
   T() { i++;};
   int n;
   ~T(){}; 
};

int main()
{
  {   
   int k = T().n;
   assert(i == 1);
  }
  {
    T* c = new T[2];
    int d = c->n;
    assert(i == 3);
  }
}