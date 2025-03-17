struct [[maybe_unused]] A 
{
     A() {i = 1;}
    int i;
};

struct [[maybe_unused]] B : A 
{
    int b;
};

int main()
{
  B b;
}
