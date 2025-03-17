int fun[[nodiscard]]()
{
    const int i = 1;
    return i;
};

int g[[nodiscard]]()
{
    volatile double d = 3.0;
    return d;
};

int main()
{
    fun();
    g();
}
