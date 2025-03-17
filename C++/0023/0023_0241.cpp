#include <iostream>

template <char End = '!'>
struct StrConIter
{
    const char* str = nullptr;
    friend auto operator==(StrConIter l, StrConIter r) {
        return l.str ? (r.str || (*l.str == End)) : (!r.str || (*r.str == End));
    }

    friend auto operator!=(StrConIter l, StrConIter r) {
        return !(l == r);
    }

    auto & operator*()  {        return *str;  }
    auto & operator++() { ++str; return *this; }
};

template <char End = '!'>
struct StringContainer
{
    StrConIter<End> it;
    StringContainer(const char* str) : it{str}{}
    auto begin() { return it;     }
    auto end()   { return StrConIter<End>{}; }
};

int main()
{
    StringContainer<'!'> a = {"here is user-defined container!"};
    {
        for (const auto c:a)
        {
            std::cout<<c;
        }
         std::cout<<std::endl;
    }
    {
        for (const char c:a)
        {
            std::cout<<c;
        }
        std::cout<<std::endl;
    } 
    {
        auto begin = a.begin();auto end = a.end();     
        for(;begin!=end;++begin)
        {
            std::cout<<*begin;
        }
        std::cout<<std::endl;
    }
    {
        StrConIter<'!'> begin = a.begin(), end = a.end();
        for(;begin!=end;++begin)
        {
            std::cout<<*begin;
        }  
        std::cout<<std::endl;
    }
    {
        for(StrConIter<'!'> begin = a.begin(), end = a.end();begin!=end;++begin)
        {
            std::cout<<*begin;
        }
        std::cout<<std::endl;
    }
    {
        for(auto begin = a.begin(), end = a.end();begin!=end;++begin)
        {
            std::cout<<*begin;
        }
        std::cout<<std::endl;
    }
}
