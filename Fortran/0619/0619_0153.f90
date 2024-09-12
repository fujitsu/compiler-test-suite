module xxx
integer n1,n2,nn
real(8),allocatable :: a(:,:)
!$omp threadprivate(n1)
end module xxx

subroutine sub()
use xxx
type x
  integer n1
end type
type(x):: str1
n1=1
n2=2
str1%n1=n1
do i=1,nn
  a(str1%n1:n2,i) = 1
  a(n1:n2,i) = 1
enddo
!$omp parallel do
do i=1,nn
  a(str1%n1:n2,i) = 1
  a(n1:n2,i) = 1
enddo
!$omp end parallel do
end subroutine
subroutine ss
integer a,aa(2)
a=1
!$omp parallel private(a)
a=1
aa(a)=2
!$omp parallel private(a)
a=1
aa(a)=2
!$omp parallel private(a)
a=1
aa(a)=2
!$omp end parallel
a=1
aa(a)=2
!$omp end parallel
a=1
aa(a)=2
!$omp end parallel
a=1
aa(a)=2

end
print *,'pass'
end

