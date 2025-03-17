template<typename T, typename ... Rest> void g(T&& p, Rest&& ...rs) {
    if constexpr (sizeof...(rs) > 0)
        g(rs...);
}

int main()
{
    g<int,int>(1,1);
}
