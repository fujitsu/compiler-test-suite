#include <cassert>

int i = 0;
int j = 0;
struct T
{
   T(){ i++;};
   T(T&&) { j++;};
   ~T(){};
};

T f( ){ return T(T(T()));}
T* g(){return new T[4];}

int main()
{
   {
   T t = f();
   assert(i == 1);
   assert(j == 0);
   }
   {
   T* t1 = g();
   assert(i == 5);
   assert(j == 0);
   }
}