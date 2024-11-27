program main
real,dimension(1:10)::a,b
real,parameter::ans = 9.28641319
real,parameter::diff= 0.000001
integer, dimension(1:10)::i,j

a = (/(real(k)/3.3,k=1,10)/)
b = (/(real(k)/3.1,k=1,10)/)
i = (/(k,k=1,10)/)
j = (/(10-k+1,k=1,10)/)

r = dot_product(a(i(1:5)),b(j(2:6)))

if (abs(r-ans)<=diff) then
  print *,'ok'
else
  print *,'ng',r,ans
endif
end
