#include <cassert>

int i = 0;
int j =0;
struct T
{
   T(){ i++;};
   T(const T&) { j++;};
   ~T(){};  
};

T fun()
{
 return T();
}

T* f()
{
  return new T[7];
}

int main()
{
   {
   T t = fun();
   assert(i == 1);
   assert(j == 0);
   }
   {
   T* t1 = f();
   assert(i == 8);
   assert(j == 0);
   }

}