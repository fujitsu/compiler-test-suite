program main
real,dimension(1:10) :: a,b
real,parameter::ans = 95.8333282
real,parameter::diff= 0.0

a = (/(real(i)/1.1,i=1,10)/)
r1 = sum(a)
b = (/(real(i)/1.2,i=1,10)/)
r2 = sum(b)
r  = r1 + r2
if (abs(r-ans)<=diff) then
  print *,'ok'
else
  print *,'ng',r,ans
endif
end
