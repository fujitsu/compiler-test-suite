subroutine sub01()
  type ty0
    integer xx
  end type
  type(ty0),allocatable :: obj1
  allocate(ty0::obj1)

  obj1%xx = 1
!$omp parallel private(obj1)
  obj1%xx = 10
!$omp single
  obj1%xx = 11
!$omp end single copyprivate(obj1)
  if( obj1%xx /= 11 ) print *,'NG:obj1%xx=',obj1%xx
!$omp end parallel
end subroutine sub01

call sub01
print *,'pass'
end

