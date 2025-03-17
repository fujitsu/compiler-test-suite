#include <cassert>

int i = 0;
int j = 0;
struct T
{
   int n;
   T(){ i++;};
   T(const T&) { j++;};
   ~T(){};  
};

int main()
{
   {
   int K = T(T()).n;
   assert(i == 1);
   assert(j == 0);
   }
   {
    T* t = new T[4];
    int c = t->n;
   assert(i == 5);
   assert(j == 0);
   }
}