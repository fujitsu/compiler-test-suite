subroutine sub(a,b,c,n1,n2,n3,m1,m2,m3)
real(8),dimension(1:n1,1:n2,1:n3) :: a,b,c
k = m3
   do j=1,m2

      do i=1,m1
         a(i,j,k) = b(j,i,k)*c(i,j,k) + a(i,j,k)
      enddo
   enddo
end subroutine

program main
integer,parameter :: n1=4
integer,parameter :: n2=100
integer,parameter :: n3=100
real(8),dimension(1:n1,1:n2,1:n3) :: a,b,c
real(8),parameter :: error=0.00000000003_8
real(8),parameter :: answer=40011.52000000002_8
real(8) :: r
a = 1.0_8
b = 0.9_8
c = 0.8_8
call sub(a,b,c,n1,n2,n3,n1,n1,n3)
r = sum(a)
if (abs(r - answer) .le. error) then
  print *,"ok"
else
  print *,"ng :", r, answer
endif
end program
