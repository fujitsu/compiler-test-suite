int main()
{
    void (*p)()noexcept{};
    void (*q)()= p;

}
