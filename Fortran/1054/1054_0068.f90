subroutine sub01(obj1)
  character(*) :: obj1(5)


  obj1 = '000000'
!$omp parallel private(obj1)
  obj1 = '123'
!$omp single
  obj1 = '5678'
!$omp end single copyprivate(obj1)
  if( any(obj1 /= '5678') ) print *,'NG : obj1=',obj1
!$omp end parallel
end subroutine sub01

character(50) :: obj1(5)
call sub01(obj1)
print *,'pass'
end

