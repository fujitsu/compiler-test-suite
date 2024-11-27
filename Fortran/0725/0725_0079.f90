program main
real,dimension(1:100)::a
real,parameter::ans =4095.00000
real,parameter::diff=0.0
a = (/(real(i),i=1,100)/)
r = sum(a(1:90:1))
if (abs(r-ans)<=diff) then
  print *,'ok'
else
  print *,'ng',r
endif
end
