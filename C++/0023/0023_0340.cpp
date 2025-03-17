#include <new>
#include <cassert>

int A_constructed = 0;
class X
{
    public:
       X(){};
       void* operator new(std::size_t s, std::align_val_t a,const std::nothrow_t&) noexcept
       {
          ++A_constructed;
         return ::operator new(s);
       }

       void operator delete(void* ptr, std::align_val_t a)noexcept
       {
         --A_constructed;
         return ::operator delete(ptr);
       } 
};

int main()
{
   std::align_val_t f;
   X* p1 = new(f,std::nothrow) X;
   assert(p1);
   assert(A_constructed == 1);
   delete p1;
   assert(A_constructed == 0);
}