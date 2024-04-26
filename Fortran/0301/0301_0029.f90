subroutine sub(b,n,m)
real(8),dimension(1:n,1:n) :: b
real(8),dimension(1:m) :: a,c
do j=2,n-1
  do i=2,m-1
    a(1:i) = 1.0
    c(2:i+1) = 2.0
    b(1:i,j-1) = b(1:i,j)*b(1:i-1,j) + a(1) - a(2) + c(2) - c(3) 
  enddo
enddo
end subroutine

program main
real(8),dimension(1:100,1:100) :: a
integer,parameter :: ians = 10000
a=1.0
call sub(a,100,5)
if (int(sum(a)) .eq. ians) then
  print *,"ok"
else
  print *,"ng : ",sum(a)
endif
end program
