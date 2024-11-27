program main
real,dimension(1:10)::a,b
real,parameter::ans =39.1999969
real,parameter::diff= 0.001
a = (/(real(i),i=1,10)/)
b = (/(real(i)/10.,i=1,10)/)
i = int(a(2))
j = int(a(8))
k = int(a(1))
r = sum(a(i:j:k)+b(i+1:j+1:k))
if (abs(r-ans)<=diff) then
  print *,'ok'
else
  print *,'ng',r,ans
endif
end
