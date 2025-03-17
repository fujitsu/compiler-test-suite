#include <cassert>
#include <vector>
#include <string>

int main()
{
    std::vector<std::string> a ={"1","2","3","4","5"};
    {   
        std::string sum = "";
        for(auto i:a)
        { 
            sum+=i;
        }
    }
    {
        std::string sum = "";
        for(std::string i:a)
        {
           sum+=i;
        }
    }
}
