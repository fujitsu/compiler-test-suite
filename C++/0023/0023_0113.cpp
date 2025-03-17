struct [[nodiscard]] error_info { };

error_info enable_missile_safety_mode[[nodiscard]]()
{   
    error_info e;
    return e;
}

void test_missiles() 
{
    enable_missile_safety_mode();
}

int main()
{
    test_missiles();
}
