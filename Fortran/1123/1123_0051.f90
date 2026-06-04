module mm
contains
  subroutine add_ref(p)
    !$omp declare simd linear(ref(p))
    implicit none
    integer :: p
    p = p + 1
  end subroutine add_ref
  subroutine add_uval(p, i)
    !$omp declare simd linear(ref(p)) linear(uval(i):1)
    implicit none
    integer :: p
    integer, intent(in) :: i
    p = p + i
  end subroutine add_uval
  integer function add_val(x, y, i)
    !$omp declare simd  linear(val(i):1)
    implicit none
    integer, intent(in) :: x(*), y(*)
    integer, intent(in) :: i
!    write(6,*) i,x(i),y(i)
    add_val = x(i) + y(i)
  end function add_val
end module mm

program declare_test
  use mm
  parameter(N=32)
  integer a(N)
  integer b(N)
  integer c(N*2)
  integer d(N*2)

  c=1
  d=10
!$omp simd
  do i=1,N
     a(i) = i
     b(i) = i
     c(i) = i
     d(i) = 10
  enddo

  m=1
!$omp simd
  do i=1,N
     call add_ref(a(m))
     m=m+1
  enddo
  write(6,1) a

  m=1
!$omp simd
  do i=1,N
     call add_uval(b(m), m)
     m=m+1
  enddo
  write(6,1) b

  m=1
!$omp simd
  do i=1,N
     c(i) = add_val(c(m),d(m),m)
     m=m+1
  enddo
  write(6,1) c
  1 format(10i5)
end program declare_test
