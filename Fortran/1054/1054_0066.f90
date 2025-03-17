subroutine sub01()
  character(50),allocatable :: obj1
  allocate(obj1)


  obj1 = '000000'
!$omp parallel private(obj1)
  obj1 = '123'
!$omp single
  obj1 = '5678'
!$omp end single copyprivate(obj1)
  if( obj1 /= '5678' ) print *,'NG : obj1=',obj1
!$omp end parallel
end subroutine sub01

call sub01()
print *,'pass'
end
