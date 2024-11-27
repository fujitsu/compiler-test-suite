program main
real,dimension(1:100)::a,b
real,parameter::ans =82.0000305
real,parameter::diff= 0.0000382

a = 1.1
b = 1.2
r1 = sum(a(1:20))
r2 = sum(b(1:50))

r = r1+r2
if (abs(r-ans)<=diff) then
  print *,'ok'
else
  print *,'ng',r,ans
endif
end
