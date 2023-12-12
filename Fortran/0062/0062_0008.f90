!
subroutine icm_r8(a,n)
real(kind=8),dimension(1:n) :: a
do i=1,n-1
  a(i) = a(i) + a(n)
enddo
end subroutine

subroutine icm_i8(a,n)
integer(kind=8),dimension(1:n) :: a
do i=1,n-1
  a(i) = a(i) + a(n)
enddo
end subroutine

program main
integer,parameter :: n=100
real   (kind=8),dimension(1:n) :: r1
integer(kind=8),dimension(1:n) :: a1
real   (kind=8),parameter :: r8ans = 398._8
integer(kind=8),parameter :: i8ans = 398_8
logical(kind=4) :: mm

mm = .true.

!
r1 = 2._8
call icm_r8(r1,n)
if (sum(r1) /= r8ans) then
  mm = .false.
  print *,"ng : ", sum(r1), " != ", r8ans
endif
  

!
a1 = 2_8
call icm_i8(a1,n)
if (sum(a1) /= i8ans) then
  mm = .false.
  print *,"ng : ", sum(a1), " != ", i8ans
endif

if (mm) then
  print *,"ok"
endif
end program
