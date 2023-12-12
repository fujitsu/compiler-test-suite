!
subroutine recurrence_r8(a,n)
  real(kind=8),dimension(1:n) :: a
  do i=3,n
     a(i) = a(i-1) - a(i-2)
  enddo
end subroutine

subroutine recurrence_i8(a,n)
  integer(kind=8),dimension(1:n) :: a
  do i=3,n
     a(i) = a(i-1) - a(i-2)
  enddo
end subroutine

program main
  integer,parameter :: n=100
  real(kind=8),dimension(1:n) :: a1
  integer(kind=8),dimension(1:n) :: a2
  real(kind=8),parameter :: r8ans=2._8
  integer(kind=8),parameter :: i8ans=2_8
  logical(kind=1) mm
  
  mm = .true.

!
  a1 = 2.0_8
  call recurrence_r8(a1,n)
  if (sum(a1) /= r8ans) then
    mm = .false.
    print *, "ng : ", sum(a1), " != ", r8ans
  endif

!
  a2 = 2_8
  call recurrence_i8(a2,n)
  if (sum(a2) /= i8ans) then
    mm = .false.
    print *, "ng : ", sum(a2), " != ", i8ans
  endif

  if (mm) then
     print *,"ok"
  endif
end program
