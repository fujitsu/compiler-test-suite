module m1
integer a(3)
!$omp threadprivate(a)
end
subroutine sub
use m1
integer aa(3)
common /com/ aa
!$omp threadprivate(/com/)
aa=(/1,2,3/)
a=(/11,12,13/)
end
subroutine sss
use m1
integer aa(3)
common /com/ aa
!$omp threadprivate(/com/)
if (any(aa/=(/1,2,3/)))write(6,*) "NG"
if (any(a/=(/11,12,13/)))write(6,*) "NG"
end
call sub
call sss
print *,'pass'
end

