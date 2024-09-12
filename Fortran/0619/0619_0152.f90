module xxx
integer n1,n2,nn
real(8),allocatable :: a(:,:),b(:,:)
!$omp threadprivate(n1,n2,n3,nn)
end module xxx

subroutine sub(k)
use xxx
type st
  integer::n1,n2
end type
type(st)::str1
nn=k
str1%n1=1
str1%n2=2
n1=1
n2=2
k1=1
k2=2
allocate(a(2,nn),b(2,nn))
a=1;b=1
!$omp parallel do
do i=1,nn
  a(str1%n1:str1%n2,i) = a(str1%n1:n2,i) + b(n1:n2,i)
  a(n1:n2,i) = a(n1:n2,i) + b(n1:n2,i)
  a(k1:k2,i) = a(k1:k2,i) + b(k1:k2,i)
enddo
!$omp end parallel do
end subroutine
call sub(2)
print *,'pass'
end

