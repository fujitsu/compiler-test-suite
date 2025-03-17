







#include <tuple>
#include <utility>
#include <memory>
#include <cassert>

int main()
{
    {
        typedef std::tuple<std::unique_ptr<int> > T;
        T t(std::unique_ptr<int>(new int(3)));
        std::unique_ptr<int> p = std::get<0>(std::move(t));
        assert(*p == 3);
    }
}
