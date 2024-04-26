subroutine sub( c1)
 integer     :: c1(*)
if (c1(1) /=1) print *,3101
end subroutine
integer :: x1(2)=1
 call sub( (x1(1:2)))
print *,'pass'
end
