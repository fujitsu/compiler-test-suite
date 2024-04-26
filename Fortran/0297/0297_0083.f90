subroutine sub(a,k,n)
real(8),dimension(1:n) :: a
integer,dimension(1:n) :: k
do i=1,n
  a(k(10)-10000000) = a(k(10)-10000001) + a(k(10)-10000000) + a(k(10)-9999999)
enddo
end subroutine

program main
integer,parameter :: n=100
real(8),dimension(1:n) :: a
integer,dimension(1:n) :: k
real(8),parameter :: ans=7050.0_8, error=0.000001_8
a = (/(real(i,kind=8),i=1,n)/)
k = (/(10000000+i,i=1,n)/)
call sub(a,k,n)
if (abs(sum(a)-ans) .le. error) then
  print *,"ok"
else
  print *,"ng",sum(a),ans
endif
end program
