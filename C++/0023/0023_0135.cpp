void* fun[[nodiscard,maybe_unused]]()
{
    char a = 'c';
    char* c = &a;
    return c;
}

int main()
{  
   fun();
}
