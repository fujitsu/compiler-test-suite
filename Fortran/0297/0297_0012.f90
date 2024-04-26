subroutine sub(a,n)
real(8),dimension(1:n) :: a
do i=1,n
  a(i) = a(i) + 1.1
enddo
end subroutine

program main
integer,parameter :: n=100
real(8),parameter :: ans=110.0_8
real(8),parameter :: error=0.00001_8
real(8),dimension(1:n) :: a
a=0._8
call sub(a,n)
if (abs(sum(a) - ans) .le. error) then
  print *,"ok"
else
  print *,"ng", sum(a), "!=", ans
endif
end program
