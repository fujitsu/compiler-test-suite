pure subroutine s1(k)
    use,intrinsic::iso_c_binding,only:c_sizeof,c_int,c_size_t
        integer(c_int), dimension(10) :: x 
        integer(c_size_t),intent(out) :: k
        k = c_sizeof(x) 
end
use,intrinsic::iso_c_binding,only:c_sizeof,c_int,c_size_t
integer(c_size_t)::k
call s1(k)
print *,"pass"
end
