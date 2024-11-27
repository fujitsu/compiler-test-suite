program main
real,dimension(1:20)::a
real,parameter::ans=0.500000000
real,parameter::diff=1.0e-07
real r
a = (/(real(i)/100,i=1,20)/)
i = 2
r = sum(a(1:10:i))+sum(a(1:10:2))

if (abs(r-ans)<=diff) then
  print *,'ok'
else
  print *,'ng',r,ans
endif
end
