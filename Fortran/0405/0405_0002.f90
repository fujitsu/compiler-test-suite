real :: s(10)=1,sin,c=1
associate( c => sin(1.0),sin=>1)
if (1.eq.2) print *, c+sin
associate( c => sin,sin=>1)
if (1.eq.2) print *, c+sin
associate( c => sin,sin=>1)
do i=1,1,sin
if (1.eq.2)print *,sin
call sub(sin)
end do
end associate
end associate
end associate
contains 
subroutine sub(sin)
integer :: sin
if (1.eq.2)print *,sin
print *,'pass'
end subroutine
end
