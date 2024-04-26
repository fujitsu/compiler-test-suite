integer :: a
a=1
call sub(+a)
print *,'pass'
contains
subroutine sub(k)
integer :: k
if (k.ne.1) print *,'NG'
end subroutine
end
