void g()
{
    const int n=1;
    auto k = [=]()
    {
        constexpr int i = n;
        constexpr int j=*&n;
    };
}

int main()
{
    g();
}
