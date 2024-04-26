call test()
print *,'pass'
end
subroutine test()
integer :: a(3,4)
call zee(a)
contains
subroutine zee(x)
integer, dimension(-1:,:) :: x
if (lbound(x,1).ne.-1   )print *,'err'
if (ubound(x,1).ne.1   )print *,'err'
if (lbound(x,2).ne.1   )print *,'err'
if (ubound(x,2).ne.4   )print *,'err'
end subroutine zee
end
