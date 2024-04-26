call test()
print *,'pass'
end
subroutine test()
type a_type
real :: x, y
end type a_type
type, extends(a_type) ::a_extend_type
real:: z
end type a_extend_type
end
