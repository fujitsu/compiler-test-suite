program main
real,dimension(1:10) :: a
real,parameter::ans = 5.50000000
real,parameter::diff= 0.0

a = (/(real(i)/10,i=1,10)/)
r = sum(a)
if (abs(r-ans)<=diff) then
  print *,'ok'
else
  print *,'ng',r,ans
endif
end
