call test()
print *,'pass'
end
subroutine test()
call external()
end
subroutine external( )
implicit none
integer :: a,b
a=1
b=2
call internal()
if (a.ne.1)print *,'err'
if (b.ne.1)print *,'err'
contains
subroutine internal( )
implicit none
integer :: a
a = b
if (a.ne.2)print *,'err'
b=1
if (b.ne.1)print *,'err'
end subroutine internal
end subroutine external
