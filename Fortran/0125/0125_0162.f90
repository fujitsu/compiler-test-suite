subroutine sub(a,b,n,m,data)
real(8),dimension(1:n) :: a,b
logical,dimension(1:n) :: data
j = m
do i=1,n/2
  a(j) = a(j) + b(i)
  if (data(i)) then
    j = j + 1
  endif
enddo
end subroutine
program main
integer,parameter :: n=1000
integer,parameter :: ians=4000
real(8),dimension(1:n) :: a,b
logical,dimension(1:n) :: data
a = 1.
b = 2.
data(1:n/2) = .false.
data(n/2+1:n) = .true.
call sub(a,b,n,10,data)
if (int(sum(a+b)) .eq. ians) then
  print *,"ok"
else
  print *,"ng", int(sum(a+b)), ians
endif
end program
