integer :: a(4,2,2) /1,2,3,4,5,6,7,8,-1,-2,-3,-4,-5,-6,-7,-8/ 

type gda
  integer ka(4)
  integer kaa(4)
end type gda

type (gda) z(2)
type (gda) y(2)

!$omp parallel
!$omp workshare
forall ( i=1:2, j=1:4 )
  z(i)%ka(j)  = a(j,i,1)
  z(i)%kaa(j) = a(j,i,2)
end forall
!$omp end workshare
!$omp do
do i=1,2 ; do j=1,4
  y(i)%ka(j)  = a(j,i,1)
  y(i)%kaa(j) = a(j,i,2)
end do   ; end do
!$omp end do

if ( any(z(1)%ka/=y(1)%ka) ) print *,"fail"
if ( any(z(2)%ka/=y(2)%ka) ) print *,"fail"
if ( any(z(1)%kaa/=y(1)%kaa) ) print *,"fail"
if ( any(z(2)%kaa/=y(2)%kaa) ) print *,"fail"
!$omp end parallel

print *,'pass'
end
