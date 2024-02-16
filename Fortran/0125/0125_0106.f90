subroutine sub(a,b,c,n,k)
real(8),dimension(1:n) :: a,b
integer,dimension(1:n) :: c
do i=1,n-1,k
  a(c(i)) = a(c(i)) + b(c(i)) + b(c(i+1))
enddo
end subroutine

program main
integer,parameter :: n=1000
integer,parameter :: ians=1136
integer,parameter :: k=30

real(8),dimension(1:n) :: a,b
integer,dimension(1:n) :: c

a = 1.
b = 2.
c = (/(i,i=n,1,-1)/)

call sub(a,b,c,n,k)

if (int(sum(a)) .eq. ians) then
  print *,"ok"
else
  print *,"ng", " result =", int(sum(a)),"master =", ians
endif

end program
