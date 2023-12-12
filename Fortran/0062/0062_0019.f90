!
subroutine unroll_r4(a,b)
real(kind=4),dimension(1:20) :: a,b
do i=1,20
  a(i) = a(i) + b(i)
enddo
end subroutine

subroutine unroll_i4(a,b)
integer(kind=4),dimension(1:20) :: a,b
do i=1,20
  a(i) = a(i) + b(i)
enddo
end subroutine

program main
real   (kind=4),dimension(1:20) :: r1,r2
integer(kind=4),dimension(1:20) :: a1,a2
real   (kind=4),parameter :: r4ans = 180._4
integer(kind=4),parameter :: i4ans = 180_4
logical(kind=4) :: mm

mm = .true.

!
r1 = 4._4
r2 = 5._4
call unroll_r4(r1,r2)
if (sum(r1) /= r4ans) then
  mm = .false.
  print *,"ng : ", sum(r1), " != ", r4ans
endif

!
a1 = 4_8
a2 = 5_8
call unroll_i4(a1,a2)
if (sum(a1) /= i4ans) then
  mm = .false.
  print *,"ng : ", sum(a1), " != ", i4ans
endif

if (mm) then
  print *,"ok"
endif
end program
