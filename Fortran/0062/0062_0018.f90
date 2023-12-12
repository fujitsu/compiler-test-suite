!
subroutine unroll_r8(a,b,n)
real(kind=8),dimension(1:n) :: a,b
do i=1,n
  a(i) = a(i) + b(i)
enddo
end subroutine

subroutine unroll_i8(a,b,n)
integer(kind=8),dimension(1:n) :: a,b
do i=1,n
  a(i) = a(i) + b(i)
enddo
end subroutine

program main
integer,parameter :: n=100
real   (kind=8),dimension(1:n) :: r1,r2
integer(kind=8),dimension(1:n) :: a1,a2
real   (kind=8),parameter :: r8ans = 900._8
integer(kind=8),parameter :: i8ans = 900_8
logical(kind=4) :: mm

mm = .true.

!
r1 = 4._8
r2 = 5._8
call unroll_r8(r1,r2,n)
if (sum(r1) /= r8ans) then
  mm = .false.
  print *,"ng : ", sum(r1), " != ", r8ans
endif

!
a1 = 4_8
a2 = 5_8
call unroll_i8(a1,a2,n)
if (sum(a1) /= i8ans) then
  mm = .false.
  print *,"ng : ", sum(a1), " != ", i8ans
endif

if (mm) then
  print *,"ok"
endif
end program
