program main
real,parameter::ans =1.81818175
real,parameter::diff=0.00000001
real,dimension(1:10)::a
integer,dimension(1:10)::v

a = (/(real(i)/1.1,i=1,10)/)
v = (/(10-i+1,i=1,10)/)
i=v(2)
j=v(10)
k=-v(2)
r  = sum(a(v(i:j:k)))
if (abs(r-ans)<=diff) then
  print *,'ok'
else
  print *,'ng',r,ans
endif
end
