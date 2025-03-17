enum [[nodiscard]]E{a,b,c};

typedef E E1;
typedef E1 E2;
typedef E2 E3;

E3 * d;
E3* fun()
{
    return d;
};

int main()
{
    fun();
}
