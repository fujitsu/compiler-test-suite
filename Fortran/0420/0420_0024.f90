integer :: a1,a2
a1=2
a2=2

call tt(a1)
call ss(a2)
print *,'pass'

contains
subroutine tt(d)
integer:: d
if (  a1/= 2) print *,100,a1
if (  d/= 2) print *,101,d
end subroutine
subroutine ss(d)
integer,intent(in) :: d
if (  a2/= 2) print *,200,a2
if (  d/= 2) print *,201,d
end subroutine
END
