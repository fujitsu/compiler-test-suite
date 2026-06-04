subroutine sub(a,b,m,n)
integer n,i,j
real(8),dimension(1:n,1:n) :: a,b
real(8),volatile :: m
do j=1,n
   do i=1,n
      if (m.gt.0._8) then
         a(i,j) = a(i,j) + b(i,j)
      endif
   enddo
enddo
end subroutine

program main
interface
   subroutine sub(a,b,m,n)
     integer n
     real(8),dimension(1:n,1:n) :: a,b
     real(8),volatile :: m
   end subroutine sub
end interface
integer,parameter :: n=100
real(8),dimension(1:n,1:n) :: a,b
real(8),volatile :: m
real(8),parameter :: ans=50005000.00000000_8, error=0.00001_8

a = 0.0_8
b = reshape((/(real(i,kind=8),i=1,n*n)/), (/n,n/))
m = 1.0_8
call sub(a,b,m,n)
if (abs(sum(a) - ans) .le. error) then
  print *,"ok"
else
  print *,"ng", sum(a), ans
endif
end program
