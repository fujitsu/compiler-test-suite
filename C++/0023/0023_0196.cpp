#include <cassert>

int main()
{
    bool f = true;
    const int a = 0;
    do{
        if constexpr(a == 0)
        {      
         assert(a == 0); 
        }
        else if constexpr(a > 0)
        {

        }
      }while(f == false);
}
