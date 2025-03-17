#include <cassert>

int i = 0;
struct X
{
  X(){ i++;};
  ~X(){};
};

int main()
{
  {
   const X &a = X();
   assert(i == 1);
  } 
  {
   const X (&a1)[3] = {};
   assert(i == 4);
  }
}