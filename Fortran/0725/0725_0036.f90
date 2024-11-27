program main
real,dimension(1:10)::a,b
real,parameter::ans =21.5053768
real,parameter::diff= 0.001
integer, dimension(1:10)::i,j

a = (/(real(k)/3.3,k=1,10)/)
b = (/(real(k)/3.1,k=1,10)/)
i = (/(k,k=1,10)/)
j = (/(10-k+1,k=1,10)/)

r = dot_product(a(i),b(j))

if (abs(r-ans)<=diff) then
  print *,'ok'
else
  print *,'ng',r,ans
endif
end
