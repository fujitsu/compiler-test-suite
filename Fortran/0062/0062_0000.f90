!
subroutine array2scalar_r8(a,b,n,k)
real(kind=8),dimension(1:n) :: a,b
do i=1,n-1
  a(i) = a(n) + b(k)
enddo
end subroutine

subroutine array2scalar_i8(a,b,n,k)
integer(kind=8),dimension(1:n) :: a,b
do i=1,n-1
  a(i) = a(n) + b(k)
enddo
end subroutine

program main
integer,parameter :: n=100
integer,parameter :: k=10
real   (kind=8),dimension(1:n) :: r1,r2
integer(kind=8),dimension(1:n) :: a1,a2
real   (kind=8),parameter :: r8ans = 498._8
integer(kind=8),parameter :: i8ans = 498_8
logical(kind=4) :: mm

mm = .true.

!
r1 = 3._8
r2 = 2._8
call array2scalar_r8(r1,r2,n,k)
if (sum(r1) /= r8ans) then
  mm = .false.
  print *,"ng : ", sum(r1), " != ", r8ans
endif

!
a1 = 3_8
a2 = 2_8
call array2scalar_i8(a1,a2,n,k)
if (sum(a1) /= i8ans) then
  mm = .false.
  print *,"ng : ", sum(a1), " != ", i8ans
endif

if (mm) then
  print *,"ok"
endif
end program
