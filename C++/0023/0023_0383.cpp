#include <cassert>
#include <type_traits>
#include <vector>

template<class T> struct container 
{
    container(T t) {}
    template<class Iter> container(Iter beg, Iter end)
    {
        int a = 1;
    }
};

template<class Iter>
container(Iter b, Iter e) -> container<typename std::iterator_traits<Iter>::value_type>;


int main()
{
    std::vector<double> v = {1.0,2.0};
    auto d = container(v.begin(), v.end());
    assert(true == (std::is_same<container<double>,decltype(d)>::value));
    
    container c(7);
    assert(true == (std::is_same<container<int>,decltype(c)>::value));
}
