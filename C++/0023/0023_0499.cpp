int main()
{
    auto ID = [](auto a) {return a;};
    struct NonLiteral
    {
        constexpr NonLiteral(int n):n(n){}
        int n;
    };
    static_assert(ID(NonLiteral{3}).n == 3);
}
