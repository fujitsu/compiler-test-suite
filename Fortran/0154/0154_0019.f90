integer a(2,2)
a=2
call s(a(1,:))
if (a(1,1)/=3) print *,101
if (a(2,1)/=2) print *,102
if (a(1,2)/=3) print *,103
if (a(2,2)/=2) print *,104
do n=1,100
a=2
call s(a(1,:))
if (a(1,1)/=3) print *,101
if (a(2,1)/=2) print *,102
if (a(1,2)/=3) print *,103
if (a(2,2)/=2) print *,104
end do
print *,'pass'
contains
subroutine s(x)
integer,intent(out):: x(:)
x=3
end subroutine
end
