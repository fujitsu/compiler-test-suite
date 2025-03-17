





#include <memory>
#include <cassert>

class Deleter
{
    public:
        Deleter& operator=(Deleter&);
        void operator()(void*) {}
};

int main()
{
    {
        std::unique_ptr<int[]> p(nullptr);
    }
    {
        std::unique_ptr<int[], Deleter> p(nullptr);
    }
}
