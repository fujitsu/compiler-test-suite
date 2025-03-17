#include <cassert>
#include <cstddef>

int main()
{
    int a[]={1,2,3,4,5};
    {   
        int sum = 0;
        for(auto i:a)
        { 
            sum+=i;
        }
        assert(sum==15);
    }
    {
        int sum = 0;
        for(size_t i:a)
        {
            sum+=i;
        }
        assert(sum==15);
    }
}
