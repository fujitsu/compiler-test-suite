enum [[nodiscard]] E {a,b,c};

E * d;
E *fun()
{
    return d;
};

int main()
{
    fun();
}
