subroutine sub(a,ia,n)
real(8),dimension(1:n) :: a
integer(8),dimension(1:n) :: ia
do i=1,n,4
  a(i) = a(i) + real(ia(i) * 3, kind=8)
enddo
end subroutine

program main
integer,parameter :: n=100
real(8),dimension(1:n) :: a
real(8),parameter :: ans=85._8
real(8),parameter :: error=0.00001_8
integer(8),dimension(1:n) :: ia
a=0.1_8
ia=1
call sub(a,ia,n)
if (abs(sum(a) - ans) .le. error) then
  print *,"ok"
else
  print *,"ng", sum(a), "!=", ans
endif
end program 
