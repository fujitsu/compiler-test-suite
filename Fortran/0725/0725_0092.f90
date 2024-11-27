program main
real,parameter::ans =191.666656 
real,parameter::diff=  0.000001
real,dimension(1:10)::a,b
integer,dimension(1:10)::v,w

a = (/(real(i)/1.1,i=1,10)/)
b = (/(real(i)/1.2,i=1,10)/)
v = (/(i,i=1,10)/)
w = (/(10-i+1,i=1,10)/)

r1 = sum(a(v)) + sum(a(w))
r2 = sum(b(v)) + sum(b(w))
r  = r1+r2
if (abs(r-ans)<=diff) then
  print *,'ok'
else
  print *,'ng',r,ans
endif
end
