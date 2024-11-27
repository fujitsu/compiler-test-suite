program main
real,dimension(1:10)::a,b
real,parameter::ans =21.5053768
real,parameter::diff= 0.000004
integer, dimension(1:10)::i,j
integer k1,k2,k3

a = (/(real(k)/3.3,k=1,10)/)
b = (/(real(k)/3.1,k=1,10)/)
i = (/(k,k=1,10)/)
j = (/(10-k+1,k=1,10)/)
k1=i(1)
k2=i(10)
k3=j(10)

r = sub(a,b,i,j,k1,k2,k3)

if (abs(r-ans)<=diff) then
  print *,'ok'
else
  print *,'ng',r,ans
endif
end

real function sub(a,b,v1,v2,st,ed,ic)
real,dimension(1:10)::a,b
integer, dimension(1:10)::v1,v2
integer st,ed,ic
sub = dot_product(a(v1(st:ed:ic)),b(v2(st:ed:ic)))
end function
