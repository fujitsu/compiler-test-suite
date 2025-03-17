struct [[maybe_unused]] A 
{
    A() {i = 1;}
    int i;
};

struct B : A 
{
    int b;
};

int main()
{
    B b;
}
