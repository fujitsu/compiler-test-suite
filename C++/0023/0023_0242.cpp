#include <iostream>

template <char End = '!'>
struct StirngOther {};

struct StrConIter
{
    const char* str = nullptr;

    template <char End>
        friend auto operator==(StrConIter l, StirngOther<End> r) {
            return *l.str == End;
        }   

    template <char End>
        friend auto operator==(StirngOther<End> l, StrConIter r) {
            return r == l;
        }   

    template <char End>
        friend auto operator!=(StrConIter l, StirngOther<End> r) {
            return !(l == r);
        }   

    template <char End>
        friend auto operator!=(StirngOther<End> l, StrConIter r) {
            return !(l == r);
        }   

    auto& operator*()  {        return *str;  }
    auto& operator++() { ++str; return *this; }
};

template <char End = '!'>
struct StringContainer
{
    StrConIter it; 
    public:
    StringContainer(const char* str) : it{str} {}

    auto begin()
    {
    	return it;
    }

    auto end()
    {
    	return StirngOther<End>{};
    }
};

int main()
{
    StringContainer<'!'> a = {"here is user-defined container!"};
    {
        for(const char c:a)
        {
          std::cout<<c;
        }
        std::cout<<std::endl;
    }
    {
        for(const auto c:a)
        {
            std::cout<<c;
        }
        std::cout<<std::endl;
    }
   
   {
        auto begin = a.begin();
        auto end = a.end();
        for(;begin!=end;++begin)
        {
            std::cout<<*begin;
        }
        std::cout<<std::endl;
    }
    {
        StrConIter begin = a.begin();
        StirngOther<'!'> end = a.end();
        for(;begin!=end;++begin)
        {
            std::cout<<*begin;
        }
        std::cout<<std::endl;
    }
}
