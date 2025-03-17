

#include <type_traits>

int main()
{
    static_assert( !std::is_trivial<void>::value, "");
    static_assert( !std::is_trivially_copyable<void>::value, "");
    static_assert( !std::is_standard_layout<void>::value, "");
    static_assert( !std::is_pod<void>::value, "");
    static_assert( !std::is_literal_type<void>::value, "");
    static_assert( !std::is_empty<void>::value, "");
    static_assert( !std::is_polymorphic<void>::value, "");
    static_assert( !std::is_abstract<void>::value, "");
    static_assert( !std::is_constructible<void,void>::value, "");
    static_assert( !std::is_default_constructible<void>::value, "");
    static_assert( !std::is_copy_constructible<void>::value, "");
    static_assert( !std::is_move_constructible<void>::value, "");
    static_assert( !std::is_assignable<void,void>::value, "");
    static_assert( !std::is_copy_assignable<void>::value, "");
    static_assert( !std::is_move_assignable<void>::value, "");
    static_assert( !std::is_destructible<void>::value, "");
    static_assert( !std::is_trivially_constructible<void,void>::value, "");
    static_assert( !std::is_trivially_default_constructible<void>::value, "");
    static_assert( !std::is_trivially_copy_constructible<void>::value, "");
    static_assert( !std::is_trivially_move_constructible<void>::value, "");
    static_assert( !std::is_trivially_assignable<void,void>::value, "");
    static_assert( !std::is_trivially_copy_assignable<void>::value, "");
    static_assert( !std::is_trivially_move_assignable<void>::value, "");
    static_assert( !std::is_trivially_destructible<void>::value, "");
    static_assert( !std::is_nothrow_constructible<void,void>::value, "");
    static_assert( !std::is_nothrow_default_constructible<void>::value, "");
    static_assert( !std::is_nothrow_copy_constructible<void>::value, "");
    static_assert( !std::is_nothrow_move_constructible<void>::value, "");
    static_assert( !std::is_nothrow_assignable<void,void>::value, "");
    static_assert( !std::is_nothrow_copy_assignable<void>::value, "");
    static_assert( !std::is_nothrow_move_assignable<void>::value, "");
    static_assert( !std::is_nothrow_destructible<void>::value, "");
    static_assert( !std::has_virtual_destructor<void>::value, "");
}

