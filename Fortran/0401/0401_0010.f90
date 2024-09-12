module m
  common /com/ i1
  !$omp threadprivate(/com/)
  save /com/
  contains
    subroutine ms
      common /com2/ i2
      !$omp threadprivate(/com2/)
      save /com2/

      integer :: omp_get_thread_num, omp_get_max_threads
      integer(8), allocatable :: addr_i1(:), addr_i2(:)
      allocate(addr_i1(omp_get_max_threads()))
      allocate(addr_i2(omp_get_max_threads()))
      !$omp parallel
      addr_i1(omp_get_thread_num()+1) = loc(i1)
      addr_i2(omp_get_thread_num()+1) = loc(i2)
      !$omp end parallel
      if (any(addr_i1(2:) == addr_i1(1))) print *,1
      if (any(addr_i2(2:) == addr_i2(1))) print *,2
    end subroutine
end module

integer function f()
  common /com5/ i5
  !$omp threadprivate(/com5/)
  save /com5/

  integer :: omp_get_thread_num, omp_get_max_threads
  integer(8), allocatable :: addr_i5(:)
  allocate(addr_i5(omp_get_max_threads()))
  !$omp parallel
  addr_i5(omp_get_thread_num()+1) = loc(i5)
  !$omp end parallel
  if (any(addr_i5(2:) == addr_i5(1))) print *,5
  f=0
end function

block data
  common /com3/ i3
  !$omp threadprivate(/com3/)
  save /com3/
end block data

program main
use m
integer f
call s
i=f()
call ms
print *,'pass'
contains
  subroutine s
    common /com4/ i4
    !$omp threadprivate(/com4/)
    save /com4/

    integer :: omp_get_thread_num, omp_get_max_threads
    integer(8), allocatable :: addr_i4(:)
    allocate(addr_i4(omp_get_max_threads()))
    !$omp parallel
    addr_i4(omp_get_thread_num()+1) = loc(i4)
    !$omp end parallel
    if (any(addr_i4(2:) == addr_i4(1))) print *,4
  end subroutine
end
