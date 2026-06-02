module m1
contains
subroutine s1(a)
integer a(:)
    !$omp task default(none) shared(a)
  a(1)=1
!$omp end task
end subroutine
subroutine s2(a)
integer a(:)
    !$omp task default(private) 
  a(1)=1
!$omp end task
end subroutine
subroutine s3(a)
integer a(:)
    !$omp task default(firstprivate)
if (a(1)/=0) print *,201
  a(1)=1
!$omp end task
end subroutine
end
use m1
integer a(3)
a=0
call s1(a(1:1))
call s2(a(2:2))
call s3(a(3:3))
if (any(a/=[1,0,0])) print *,101,a
print *,'pass'
end
