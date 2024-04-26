type a
sequence
integer :: a1,a2,a3
end type

type(a) :: b(3)
call sub(b(1),b(2))
       print *,'pass'
end

subroutine sub(b1,b2)
type a
sequence
integer :: a1,a2,a3
end type
type(a) :: b1(*),b2(*)
b1(1:3)%a2 = 1
b2(1:3:2)%a2 = 3
end
