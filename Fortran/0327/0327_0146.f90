character,dimension(10)::x
x=(/'1','2','3','4','5','6','7','8','9','0'/)
call sub(x(1:5),x(6:10))
contains

subroutine sub(a,b)
character,dimension(*)::a,b
integer :: i

do i=1,5
a(i)=b(i)
end do
       print *,'pass'
end subroutine
end
