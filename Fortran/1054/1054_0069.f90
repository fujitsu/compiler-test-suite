module m1
  contains
subroutine sub01(obj1)
  character(*),allocatable :: obj1


  obj1 = '000000'
!$omp parallel private(obj1)
  obj1 = '123'
!$omp single
  obj1 = '5678'
!$omp end single copyprivate(obj1)
  if( obj1 /= '5678' ) print *,'NG : obj1=',obj1
!$omp end parallel
end subroutine sub01

end module m1

use m1
character(50),allocatable :: obj1
  allocate(obj1)
call sub01(obj1)
print *,'pass'
end
