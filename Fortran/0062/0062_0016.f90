!
subroutine strength_reduction_r8(a,n)
real(kind=8),dimension(1:n) :: a
do i=1,n/2
  k = i * 2
  a(k) = k
enddo
end subroutine

subroutine strength_reduction_i8(a,n)
integer(kind=8),dimension(1:n) :: a
do i=1,n/2
  k = i * 2
  a(k) = k
enddo
end subroutine

program main
integer,parameter :: n=100
real   (kind=8),dimension(1:n) :: r
integer(kind=8),dimension(1:n) :: a
real   (kind=8),parameter :: r8ans = 2650._8
integer(kind=8),parameter :: i8ans = 2650_8
logical(kind=4) :: mm

mm = .true.

!
r = 2._8
call strength_reduction_r8(r,n)
if (sum(r) /= r8ans) then
  mm = .false.
  print *,"ng", sum(r), " != ", r8ans
endif

!
a = 2_8
call strength_reduction_i8(a,n)
if (sum(a) /= i8ans) then
  mm = .false.
  print *,"ng", sum(a), " != ", i8ans
endif

if (mm) then
  print *,"ok"
endif
end program
