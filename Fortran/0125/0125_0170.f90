subroutine sub(a,b,c,m,n)
real(8),dimension(1:n) :: a
integer,dimension(1:n) :: b,c
logical,dimension(1:n) :: m
do i=1,n
   c(i) = i
   if (m(i)) then
     a(i) = i
     b(i) = i + 1
   else
     a(i) = i + 1
     b(i) = i
   endif
enddo
end subroutine
program main
integer,parameter :: n=1000
integer,parameter :: ians=5950
real(8),dimension(1:n) :: a
integer,dimension(1:n) :: b,c
logical,dimension(1:n) :: m
a = 1.
b = (/(i,i=n,1,-1)/)
c = 0.

m(1:n/2) = .true.
m(n/2+1:n) = .false.
call sub(a,b,c,m,100)
if (int(sum(a)) .eq. ians) then
  print *,"ok"
else
  print *,"ng", int(sum(a)), ians
endif
end program
