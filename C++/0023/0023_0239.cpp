#include <vector>
#include <cassert>

int main()
{
    std::vector<int> a{1,2,3,4,5};
    {   
        auto begin = a.begin();
        auto end = a.end();
        int sum = 0;
        for(;begin != end;begin++)
        {   
            sum+=*begin;
        }   
        assert(sum==15);
    }   
    {   
        int sum = 0;
        for(auto begin = a.begin(),end = a.end();begin != end;begin++)
        {   
            sum+=*begin;
        }
        assert(sum==15);

    }
    {
        std::vector<int>::iterator begin = a.begin();
        std::vector<int>::iterator end = a.end();
        int sum = 0;
        for(;begin != end;begin++)
        {
            sum+=*begin;
        }
        assert(sum==15);
    }
    {
        int sum = 0;
        for(std::vector<int>::iterator begin = a.begin(),end = a.end();begin != end;begin++)
        {
            sum+=*begin;
        }
        assert(sum==15);
    }
}
