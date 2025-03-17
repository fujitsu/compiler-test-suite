int & fun[[nodiscard]](int c)
{
    return c;
};

int main()
{  
    volatile int a = 1;
    fun(a);
}
