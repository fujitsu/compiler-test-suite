void* f[[nodiscard]]()
{
    double c = 2.0;
    double* b = &c;
    return b;
}

int main()
{  
   f();
}