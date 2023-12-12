!

integer, parameter :: N=10
real(kind=4) r
real(kind=4), dimension(1:N) :: a,b

a = (/(real(i/3),i=1,N)/)
b = (/(real(i/5),i=1,N)/)
do i=1,N
  a(i) = a(i) + b(i)
  if (a(i)<0.) then
    r = -127*3.5914894263979763d37
    a(i) = a(i) + r
  endif
enddo

if (int(sum(a))==22) then
  print *,'ok'
else
  print *,'ng ...',sum(a)
endif

end
