template<typename ...Types>
class simple_tuple;

template<>
class simple_tuple<>
{};

template<typename First, typename ... Rest>
class simple_tuple<First,Rest...>:
  private simple_tuple<Rest...>
{
  First member;
public:
  simple_tuple(First const& f, Rest const& ... rest):
    simple_tuple<Rest...>(rest...),member(f)
  {}

  First const& head() const
  {
    return member;
  }

  simple_tuple<Rest...> const& rest() const
  {
    return *this;
  }
};


template<unsigned index,typename ... Types>
struct simple_tuple_entry;

template<typename First,typename ... Types>
struct simple_tuple_entry<0,First,Types...>
{
    typedef First const& type;
    
    static type value(simple_tuple<First,Types...> const& tuple)
    {
        return tuple.head();
    }
};

template<unsigned index,typename First,typename ... Types>
struct simple_tuple_entry<index,First,Types...>
{
    typedef typename simple_tuple_entry<index-1,Types...>::type type;
    
    static type value(simple_tuple<First,Types...> const& tuple)
    {
        return simple_tuple_entry<index-1,Types...>::value(tuple.rest());
    }
};

template<unsigned index,typename ... Types>
typename simple_tuple_entry<index,Types...>::type 
get_tuple_entry(simple_tuple<Types...> const& tuple)
{
    return simple_tuple_entry<index,Types...>::value(tuple);
}


#if defined(_USE_COUT)
#include<iostream>
#endif

int main()
{
    simple_tuple<int,char,double> st(42,'a',3.141);
#if defined(_USE_COUT)
    std::cout<<get_tuple_entry<0>(st)<<","
             <<get_tuple_entry<1>(st)<<","
             <<get_tuple_entry<2>(st)<<std::endl;
#else
    get_tuple_entry<0>(st);
    get_tuple_entry<1>(st);
    get_tuple_entry<2>(st);
#endif
}
