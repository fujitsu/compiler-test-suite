int fun[[nodiscard]]()
{
   return 0;
}

void f()
{
    double b = 4.56;
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
