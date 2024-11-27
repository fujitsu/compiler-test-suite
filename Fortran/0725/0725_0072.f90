program main
real,dimension(1:10)::a
real,parameter::ans =54.0
real,parameter::diff= 0.0
a = (/(real(i),i=1,10)/)
a(2:10) = a(1:9) + 1.0
r = sum(a(2:10))
if (abs(r-ans)<=diff) then
  print *,'ok'
else
  print *,'ng',r,ans
endif
end
