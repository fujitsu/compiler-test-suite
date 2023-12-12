!
subroutine fusion_r8(a,b,c,n)
real(kind=8),dimension(1:n) :: a,b,c
do i=1,n
  a(i) = a(i) + b(i)
enddo
do i=1,n
  c(i) = c(i) + b(i)
enddo
end subroutine

subroutine fusion_i8(a,b,c,n)
integer(kind=8),dimension(1:n) :: a,b,c
do i=1,n
  a(i) = a(i) + b(i)
enddo
do i=1,n
  c(i) = c(i) + b(i)
enddo
end subroutine

program main
integer,parameter :: n=100
real   (kind=8),dimension(1:n) :: r1,r2,r3
integer(kind=8),dimension(1:n) :: a1,a2,a3
real(kind=8),parameter :: r8ans=1200._8
integer(kind=8),parameter :: i8ans=1200_8
logical(kind=4) :: mm

mm = .true.

!
r1 = 2._8
r2 = 3._8
r3 = 4._8
call fusion_r8(r1,r2,r3,n)
if (sum(r1+r3) /= r8ans) then
  mm = .false.
  print *,"ng : ", sum(r1+r3), " != ", r8ans
endif

!
a1 = 2_8
a2 = 3_8
a3 = 4_8
call fusion_i8(a1,a2,a3,n)
if (sum(a1+a3) /= i8ans) then
  mm = .false.
  print *,"ng : ", sum(a1+a3), " != ", i8ans
endif

if (mm) then
  print *,"ok"
endif
end program
