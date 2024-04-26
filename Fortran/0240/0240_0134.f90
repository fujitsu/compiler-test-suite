call external()
print *,'pass'
end
subroutine external ()
implicit none
integer :: a, b
a=100
b=1
call internal()
if (a.ne.100) print *,'err'
contains
subroutine internal ()
implicit none
integer :: a
a=b
if (a.ne.1) print *,'err'
end subroutine internal
end subroutine external
