void* fun[[nodiscard]][[nodiscard]]()
{
    float i = 3.2;
    float* f = &i;
    return f;
}

int main()
{  
   fun();
}