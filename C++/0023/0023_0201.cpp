#include <cassert>

class T
{
    public:
        int mem ;
};

int main()
{
     for(int i = 0;i < 2;i++)
     {   
       if ( T t{10};t.mem > 0)
         {
           assert(t.mem == 10);
         }
     }  
}
