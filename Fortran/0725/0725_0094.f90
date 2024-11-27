program main
real,parameter::ans =27.2727280
real,parameter::diff= 0.000005
real,dimension(1:10)::a
integer,dimension(1:10)::v

a = (/(real(i)/1.1,i=1,10)/)
v = (/(10-i+1,i=1,10)/)
r  = sum(a(v(1:10:2)))
if (abs(r-ans)<=diff) then
  print *,'ok'
else
  print *,'ng',r,ans
endif
end
