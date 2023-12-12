!

program main
integer,parameter::N=100
real,parameter   ::error=0.124
real,dimension(1:N)::a,b,c
integer inc

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
inc = 100000
end subroutine

subroutine sub()
do i=1,N,inc
  a(i) = a(i)*b(i) + c(i)
enddo
end subroutine
end
