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
    T t = T(T());
    assert(j == 0);
    assert(i == 1);
   }
   {
     T* t = new T[2];
     assert(j == 0);
     assert(i == 3);
   } 
}