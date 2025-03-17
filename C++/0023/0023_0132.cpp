void fun[[nodiscard,maybe_unused]]()
{
    char c = 'e'; 
}

void f()
{
    bool b = false;
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
