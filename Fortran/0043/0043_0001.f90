!

program main
integer,parameter::N=100
real,parameter   ::error=21594.8
real,dimension(1:N)::a,b,c
integer,pointer::p

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
end subroutine

subroutine sub()
do i=1,N
  a(i) = a(i)*b(i) + c(i)
  if (a(i)<0) then
    a(i) = a(i) + p
  endif  
enddo
end subroutine
end
