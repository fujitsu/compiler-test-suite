







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
        std::unique_ptr<int[]> p;
        static_assert(noexcept(std::unique_ptr<int[]>()),"");
        static_assert(noexcept(std::unique_ptr<int[]>(nullptr)),"");
    }
    {
        std::unique_ptr<int[], Deleter> p;
        static_assert(noexcept(std::unique_ptr<int[], Deleter>()),"");
        static_assert(noexcept(std::unique_ptr<int[], Deleter>(nullptr)),"");
    }
}
