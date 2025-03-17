struct [[nodiscard]] error_info { };

error_info & enable_missile_safety_mode(error_info &e)
{
    
    return e;
}

int main()
{   
    error_info e;
    enable_missile_safety_mode(e);
}
