module m1
contains
subroutine sub(a,b)
character*(*) a,b(:)
call suba('#'//a//'#')
call subb('#'//b//'#')
!$OMP PARALLEL PRIVATE(a)
a='1234'
b='1234'
call suba('#'//a//'#')
call subb('#'//b//'#')
!$OMP END PARALLEL
end subroutine
subroutine suba(a)
character*(*) a
if (len(a)/=5)print *,"fail"
if (a/='#123#')print *,"fail"
end subroutine
subroutine subb(a)
character*(*) a(:)
if (len(a)/=6)print *,"fail"
if (any(a/='#1234#'))print *,"fail"
if (size(a)/=3)print *,"fail"
end subroutine
end
use m1
character*3 a/'123'/,b(3)*4/3*'1234'/
call sub(a,b)
print *,'pass'
end
