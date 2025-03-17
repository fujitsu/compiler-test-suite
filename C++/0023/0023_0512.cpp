int main()
{
    auto monad=[](auto v){return [=]{return v;};};
    auto bind=[](auto m)
    {
        return[=](auto fvm){return fvm(m());};
    };
    
    static_assert(bind(monad(2))(monad)()==monad(2)());
}
