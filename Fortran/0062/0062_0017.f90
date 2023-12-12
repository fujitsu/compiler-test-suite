!
subroutine reduction_r8(a,n)
real(kind=8),dimension(1:n) :: a
do i=1,n-1
  a(n) = a(n) + a(i)
enddo
end subroutine

subroutine reduction_i8(a,n)
integer(kind=8),dimension(1:n) :: a
do i=1,n-1
  a(n) = a(n) + a(i)
enddo
end subroutine

program main
integer,parameter :: n=100
real   (kind=8),dimension(1:n) :: r1
integer(kind=8),dimension(1:n) :: a1
real   (kind=8),parameter :: r8ans = 100._8
integer(kind=8),parameter :: i8ans = 100_8
logical(kind=4) :: mm

mm = .true.

!
r1 = 1._8
call reduction_r8(r1,n)
if (r1(n) /= r8ans) then
  mm = .false.
  print *,"ng : ", r1(n), " != ", r8ans
endif

!
a1 = 1_8
call reduction_i8(a1,n)
if (a1(n) /= i8ans) then
  mm = .false.
  print *,"ng : ", a1(n), " != ", i8ans
endif

if (mm) then
  print *,"ok"
endif
end program
