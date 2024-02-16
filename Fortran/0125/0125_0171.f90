subroutine sub(a,b,c,d,n,nn)
real(8),dimension(1:n) :: a,b,c,d
do i=1,nn
  c(i) = a(i) + b(i) + b(i+32) + b(i+64) + b(i+96) + b(i+128) + b(i+160) + b(i+192) + b(i+224) + d(i) + d(i+32) + d(i+64) + d(i+96) + d(i+128) + d(i+160) + d(i+192) +d(i+224)
enddo
end subroutine

program main
integer,parameter :: n=10000
integer,parameter :: ians=85000
real(8),dimension(1:n) :: a,b,c,d
a = 1.
b = 1.
c = 0.
d = 1.

call sub(a,b,c,d,n,5000)
if (int(sum(c)) .eq. ians) then
  print *,"ok"
else
  print *,"ng", int(sum(c)), ians
endif
end program
