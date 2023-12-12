!

program main
integer,parameter::N=100
real,parameter::error=152380.7
real,dimension(1:N)::a,b,c
integer idx,inc

call init()
r1 = sum(a)
call sub()
r2 = sum(a)
if (abs(r1-r2)<error) then
  print *,'ok'
else
  print *,'ng',r1,r2
endif
contains

subroutine init()
a = (/(real(i)/3.,i=1,N)/)
b = (/(real(i)/5.,i=1,N)/)
c = (/(real(i)/7.,i=1,N)/)
inc = 1000000
idx = 8
end subroutine

subroutine sub()
do i=1,N,inc
  b(i) = a(i)*b(i) + c(idx)*idx
  a(i) = a(i)*b(i) + c(idx)*idx
enddo
end subroutine
end
