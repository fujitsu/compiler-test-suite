subroutine sub(a,b,c,m,n)
real(8),dimension(1:n) :: a
integer,dimension(1:n) :: b,c
logical,dimension(1:n) :: m
integer index
do i=1,n
   if (m(i)) then
     index = c(i)
   else
     index = b(i)
   endif
  a(i) = a(index) + 1.
enddo
end subroutine
program main
integer,parameter :: n=1000
integer,parameter :: ians=1100
real(8),dimension(1:n) :: a
integer,dimension(1:n) :: b,c
logical,dimension(1:n) :: m
a = 1.
b = (/(i,i=n,1,-1)/)
c = (/(i,i=1,n)/)
m(1:n/2) = .true.
m(n/2+1:n) = .false.
call sub(a,b,c,m,100)
if (int(sum(a)) .eq. ians) then
  print *,"ok"
else
  print *,"ng", int(sum(a)), ians
endif
end program
