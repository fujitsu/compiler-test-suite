

template <typename...>
struct tuple;

template <typename Head, typename... Tail>
struct tuple<Head, Tail...> : tuple<Tail...> {
  Head data;
  tuple(const Head& head, const Tail&... tail) 
    : tuple<Tail...>(tail...),
      data(head)
  {}
};

template<>
struct tuple<>
{};
