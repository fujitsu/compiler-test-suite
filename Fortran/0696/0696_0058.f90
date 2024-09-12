subroutine sub(a,b,c,d,e)
real(8),dimension(1:100,1:100,1:100) :: a,b,c,d
real(8),dimension(1:100,1:100) :: e

do k=1,100
 do j=1,100
  do i=1,100
    e(i,j) = a(i,j,k) + b(i,j,k) + c(i,j,k) + d(i,j,k) + e(i,j)
  enddo
 enddo
enddo
end subroutine

program main
integer,parameter :: ians=5030000
real(8),dimension(1:100,1:100,1:100) :: a,b,c,d
real(8),dimension(1:100,1:100) :: e

a = 1.
b = 1.
c = 1.
d = 2.
e = 3.

call sub(a,b,c,d,e)
if (int(sum(e)) .eq. ians) then
  print *,"ok"
else
  print *,"ng", int(sum(e)), ians
endif
end program