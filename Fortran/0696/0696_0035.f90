subroutine sub(a,b,c,d)
real(8),dimension(1:10,1:10,1:10,1:10,1:10) :: a,b
real(8),dimension(1:10,1:10,1:10,1:10) :: c
real(8),dimension(1:10,1:10,1:10) :: d

do m=1,10
 do l=1,10
  do k=1,10
   do j=1,10
    do i=1,10
      a(i,j,k,l,m) = b(m,l,k,j,i) + c(i,j,k,l) + d(i,j,k)
    enddo
   enddo
  enddo
 enddo
enddo
end subroutine

program main
integer,parameter :: ians=300000
real(8),dimension(1:10,1:10,1:10,1:10,1:10) :: a,b
real(8),dimension(1:10,1:10,1:10,1:10) :: c
real(8),dimension(1:10,1:10,1:10) :: d

a = 1.
b = 1.
c = 1.
d = 1.

call sub(a,b,c,d)
if (int(sum(a)) .eq. ians) then
  print *,"ok"
else
  print *,"ng", int(sum(a)), ians
endif
end program
