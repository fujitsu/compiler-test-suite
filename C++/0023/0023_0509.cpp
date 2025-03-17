int main()
{
    auto ID = [](auto a){return a;};
    static_assert(ID(3) == 3);

    auto ID1 = [](auto ...a){return 1;};
    static_assert(ID1(3,1,1) == 1);

    auto ID2 = [](int a,auto ...s){return 1;};
    static_assert(ID2(3,1,1) == 1);
}
