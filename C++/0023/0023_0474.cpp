#include <cassert>

int i = 0;
struct T
{
   T() { i++;};
   ~T(){};  
};

void fun(T t){}
void f(T* t){}

int main()
{
   {
    T t;
    fun(t);
    assert(i == 1);
   }
   { 
    f(new T[5]);
    assert(i == 6);
   }
}