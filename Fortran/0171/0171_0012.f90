subroutine sub( c1)
 integer     :: c1(*)
if (c1(1) /=1) print *,3101
end subroutine

integer::k1=1,k2=2
integer :: x1(2)
x1 =1
 call sub( (x1(1:2)))
 call sub( (x1(1:k2)))
 call sub( (x1(k1:2)))
print *,'pass'
end
