[[unknown_attr]]
void fun()
{
    int f = 1;
}

[[using CC:unknown_attr]]
void fun1()
{
    int g = 1;
}

int main()
{
    fun();
    fun1();
}
