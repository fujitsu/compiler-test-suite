#include <new>
#include <cassert>

int A_constructed = 2;
class X
{
    public:
       X(){};
       void operator delete(void* ptr, std::size_t s,std::align_val_t a)noexcept
       {
         --A_constructed;
         return ::operator delete(ptr);
       }

       void operator delete[](void* ptr, std::size_t s,std::align_val_t a)noexcept
       {
         --A_constructed;
         return ::operator delete(ptr);
       } 
};

int main()
{
   X* p1 = new X;
   assert(p1);
   delete p1;
   assert(A_constructed == 1);
   X* p2 = new X[10];
   assert(p2);
   delete[] p2;
   assert(A_constructed == 0);
}