!
subroutine vcr_fusion(a,b,c,d,e,n)
real(kind=8),dimension(1:n,1:n) :: a,b,c,d,e
a = a + (b + c)
a = a - (d + e)
end subroutine

program main
integer,parameter :: n=10
real(kind=8),dimension(1:n,1:n) :: a,b,c,d,e
real(kind=8),parameter :: r8ans = 200._8
a = 2._8
b = 3._8
c = 4._8
d = 3._8
e = 4._8
call vcr_fusion(a,b,c,d,e,n)
if (sum(a) == r8ans) then
  print *,"ok"
else
  print *,"ng : ", sum(a), " != ", r8ans
endif
end program
