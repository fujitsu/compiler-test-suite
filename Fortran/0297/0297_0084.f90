subroutine sub(a,k,n)
real(8),dimension(1:n) :: a
iii = 0
do i=1,n-3
  a(k-iii) = a(k-iii-1) + a(k-iii) + a(k-iii+1)
  iii = iii + 1
enddo
end subroutine

program main
integer,parameter :: n=100
real(8),dimension(1:n) :: a
real(8),parameter :: ans=19212.0_8, error=0.000001_8
a = (/(real(mod(i,5),kind=8),i=1,n)/)
call sub(a,99,n)
if (abs(sum(a)-ans) .le. error) then
  print *,"ok"
else
  print *,"ng",sum(a),ans
endif
end program
