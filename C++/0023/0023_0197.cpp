#include <cassert>

class T
{
    public:
        int mem ;
};

int main()
{
     bool f = true;
     do{
        if ( T t{10};t.mem>0)
         {
            assert(t.mem == 10);
         }
       }while(f == false);
}
