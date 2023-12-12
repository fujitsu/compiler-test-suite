!
subroutine reroll_r8(a,b)
real(kind=8),dimension(1:100) :: a,b
do i=1,100,5
  a(i+0) = a(i+0) + b(i+0)
  a(i+1) = a(i+1) + b(i+1)
  a(i+2) = a(i+2) + b(i+2)
  a(i+3) = a(i+3) + b(i+3)
  a(i+4) = a(i+4) + b(i+4)
enddo
end subroutine

subroutine reroll_i8(a,b)
integer(kind=8),dimension(1:100) :: a,b
do i=1,100,5
  a(i+0) = a(i+0) + b(i+0)
  a(i+1) = a(i+1) + b(i+1)
  a(i+2) = a(i+2) + b(i+2)
  a(i+3) = a(i+3) + b(i+3)
  a(i+4) = a(i+4) + b(i+4)
enddo
end subroutine

program main
integer,parameter :: n=100
real   (kind=8),dimension(1:n) :: r1,r2
integer(kind=8),dimension(1:n) :: a1,a2
real   (kind=8),parameter :: r8ans = 500._8
integer(kind=8),parameter :: i8ans = 500_8
logical(kind=4) :: mm

mm = .true.

!
r1 = 3._8
r2 = 2._8
call reroll_r8(r1,r2)
if (sum(r1) /= r8ans) then
  mm = .false.
  print *,"ng : ", sum(r1), " != ", r8ans
endif

!
a1 = 3_8
a2 = 2_8
call reroll_i8(a1,a2)
if (sum(a1) /= i8ans) then
  mm = .false.
  print *,"ng : ", sum(a1), " != ", i8ans
endif

if (mm) then
  print *,"ok"
endif
end program
