void fun[[nodiscard]]()
{
    float f = 2.4;
}

void f()
{
    int i = 45;
}

void g()
{
   fun();
   f();
}

int main()
{  
   g();
}
