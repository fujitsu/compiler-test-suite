int main()
{
    void (*q)() = []()noexcept {};
    void (*p)()=[](){};
    p = q;
}
