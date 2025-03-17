struct [[nodiscard]] error_info { };

error_info * e;
error_info * enable_missile_safety_mode()
{
    return e;
}

int main()
{
    enable_missile_safety_mode();
}
