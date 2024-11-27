program main
real,dimension(1:10)::a
real,parameter::ans =35.0
real,parameter::diff= 0.0
a = (/(real(i),i=1,10)/)
i = int(a(2))
j = int(a(8))
k = int(a(1))
r = sum(a(i:j:k))
if (abs(r-ans)<=diff) then
  print *,'ok'
else
  print *,'ng',r,ans
endif
end
