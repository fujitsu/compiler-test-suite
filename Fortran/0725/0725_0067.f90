program main
real,dimension(1:10)::a
real,parameter::ans =55.0
real,parameter::diff= 0.0
a = (/(real(i),i=1,10)/)
i = -int(a(1))*(-10)
r = sum(a(i:1:-1))
if (abs(r-ans)<=diff) then
  print *,'ok'
else
  print *,'ng',r,ans
endif
end
