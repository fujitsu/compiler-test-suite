
#include <utility>
#include <memory>
#include <cassert>

void test()
{
    {
        typedef std::pair<int, short> P1;
        P1 p1 = std::make_pair(3, 4);
        assert(p1.first == 3);
        assert(p1.second == 4);
    }
    
    {
        typedef std::pair<std::unique_ptr<int>, short> P1;
        P1 p1 = std::make_pair(std::unique_ptr<int>(new int(3)), 4);
        assert(*p1.first == 3);
        assert(p1.second == 4);
    }
    {
        typedef std::pair<std::unique_ptr<int>, short> P1;
        P1 p1 = std::make_pair(nullptr, 4);
        assert(p1.first == nullptr);
        assert(p1.second == 4);
    }
}

int main()
{
    test();
}
