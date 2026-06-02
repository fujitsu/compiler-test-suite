module m_a
type triple
  integer no(3)
end type triple
end

module m_b
integer,parameter::n=5
end

use m_a
use m_b

type (triple) cord1(n)
type (triple) cord2(n)

!$omp parallel workshare
forall ( i=1:n , j=1:3)
  cord1(i)%no(j) = (i-1)*10 + j
end forall
!$omp end parallel workshare
do i=1,n ; do j=1,3
  cord2(i)%no(j) = (i-1)*10 + j
end do   ; end do

do i=1,n ; do j=1,3
if ( cord1(i)%no(j) .ne. cord2(i)%no(j) ) print *,"fail"
enddo    ; enddo
print *,'pass'
end
