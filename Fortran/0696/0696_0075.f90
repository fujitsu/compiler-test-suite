subroutine sub(b,c,d,x,y,z)
real(8),dimension(1:100) :: c
real(8),dimension(1:100,1:100) :: b
real(8),dimension(1:100,1:100,1:100) :: d
integer,dimension(1:100) :: x,y,z

do k=1,100
  do j=1,100
    do i=1,100
      c(i) = c(z(i)) + b(x(y(i)),k) + d(x(i),y(j),z(k))
    enddo
  enddo
enddo
end subroutine

program main
integer,parameter :: ians=4000000
integer,parameter :: n=100
real(8),dimension(1:100) :: c
real(8),dimension(1:100,1:100) :: b
real(8),dimension(1:100,1:100,1:100) :: d
integer,dimension(1:100) :: x,y,z

b = 1.
c = 1.
d = 1.
x = (/(i,i=n,1,-1)/)
y = (/(i,i=1,n)/)
z = (/(i,i=n,1,-1)/)

call sub(b,c,d,x,y,z)

if (int(sum(c)) .eq. ians) then
  print *,"ok"
else
  print *,"ng:sum(c)=", int(sum(c)), ians
endif

end program
