program main
real,parameter::ans =59.9999962
real,parameter::diff= 0.0000077
real,dimension(1:10)::a
integer,dimension(1:10)::v

a = (/(real(i)/1.1,i=1,10)/)
v = (/(10-i+1,i=1,10)/)
a  = a + 1
r  = sum(a(v))
if (abs(r-ans)<=diff) then
  print *,'ok'
else
  print *,'ng',r,ans
endif
end
