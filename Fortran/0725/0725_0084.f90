program main
real,dimension(1:100)::a
real,parameter::ans =253.0
real,parameter::diff=0.0
a = (/(real(i),i=1,100)/)
i = int(a(1))*22
r = sub(a,i)
if (abs(r-ans)<=diff) then
  print *,'ok'
else
  print *,'ng',r
endif
end

real function sub(a,i)
real,dimension(1:100)::a
sub = sum(a(1:i:1))
end function
