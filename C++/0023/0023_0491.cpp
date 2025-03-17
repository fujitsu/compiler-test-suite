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
    T &&x = T(T(T()));
    int &&x1 = int(int(int()));
    assert(i == 1);
    assert(j == 0);
   }
   {
    T* &&x2 = new T[2];
    int* &&x3 = new int[2];
    assert(i == 3);
    assert(j == 0);
   }
}