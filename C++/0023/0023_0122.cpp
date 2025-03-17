enum [[nodiscard]] E {a,b,c};
enum [[nodiscard]] N {red,green,blue};

E fun() {return a;};
N g() {return blue;};

int main()
{
    fun();
    g();
}
