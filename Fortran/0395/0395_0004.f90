Program test0006
implicit none

type t1
    character(len=10) :: name = 'none'
    integer           :: age = 5
end type

type(t1) :: p1 = t1(name = 'a')
write(1,*) p1%name, p1%age

write(1,*) p1%name, p1%age
print *,'pass'

stop
end program test0006
