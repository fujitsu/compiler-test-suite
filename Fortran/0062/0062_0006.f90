!
subroutine fma_r4(a,b,c,d,e,n)
real(kind=4),dimension(1:n) :: a,b,c,d,e
a(1) = (a(1) + b(1)*c(1)) - d(1)*e(1)
do i=2,n
  a(i) = (a(i) + b(i)*c(i)) - d(i)*e(i)
enddo
end subroutine

subroutine fma_r8(a,b,c,d,e,n)
real(kind=8),dimension(1:n) :: a,b,c,d,e
a(1) = (a(1) + b(1)*c(1)) - d(1)*e(1)
do i=2,n
  a(i) = (a(i) + b(i)*c(i)) - d(i)*e(i)
enddo
end subroutine

program main
integer,parameter :: n=100
real(kind=4),dimension(1:n) :: r1,r2,r3,r4,r5
real(kind=8),dimension(1:n) :: a1,a2,a3,a4,a5
real(kind=4),parameter :: r4ans=200._4
real(kind=8),parameter :: r8ans=200._8
logical(kind=4) :: mm

mm = .true.

r1 = 2._4
r2 = 3._4
r3 = 4._4
r4 = 3._4
r5 = 4._4
call fma_r4(r1,r2,r3,r4,r5,n)
if (sum(r1) /= r4ans) then
  mm = .false.
  print *,"ng : ", sum(r1), " != ", r4ans
endif

a1 = 2._8
a2 = 3._8
a3 = 4._8
a4 = 3._8
a5 = 4._8
call fma_r8(a1,a2,a3,a4,a5,n)
if (sum(a1) /= r8ans) then
  mm = .false.
  print *,"ng : ", sum(a1), " != ", r8ans
endif

if (mm) then
  print *,"ok"
endif
end program
