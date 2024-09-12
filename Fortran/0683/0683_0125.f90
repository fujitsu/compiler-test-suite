!
!
subroutine sub()
  implicit none
  integer*8 i,n
  parameter(n=10003)
  integer*8 a
  integer*4 b
  common/com1/a(n)
  common/com2/b(n)
  interface
  integer*8 function fun(arg)
    !$omp declare simd
    integer*4,value:: arg
    end function fun
  end interface
  !$omp simd
  do i=1,n
     a(i) = fun(b(i))
  end do
end subroutine sub

integer*8 function fun(arg)
  implicit none
  !$omp declare simd
  integer*4,value:: arg
  fun = arg + 3
end function fun

program main
  implicit none
  integer*8 n,i
  parameter(n=10003)
  integer*8 a
  integer*4 b
  common/com1/a(n)
  common/com2/b(n)
  do i=1,n
     b(i) = i
  end do
  call sub
  if (a(1) .eq. 4 .and. a(n) .eq. 10006) then
     print *, "PASS"
  else
     print *, a(1), a(n)
  endif
end program main
