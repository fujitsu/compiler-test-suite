program main
integer,parameter::N=50
real,dimension(1:N) :: a
real,parameter::ans=63.0
real,parameter::diff=0.0

a = (/(real(i),i=1,N)/)
r = sum(a(1:50:20))

if (abs(r-ans)<=diff) then
  print *,'ok'
else
  print *,'ng',r,ans
endif
end
