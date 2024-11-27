program main
real,dimension(1:1)::a,b,c
real,parameter::ans=5915.71875
real,parameter::diff=  0.0005

a = (/1.1111/)
b = (/1.2345/)
c = (/9.8765/)

r = sub(dot_product(a+b+c,(/(sum(a))/)),dot_product((/(sum(b))/),(/2.1/)),sum(c))

if (abs(r-ans)<=diff) then
  print *,'ok'
else
  print *,'ng',r,ans
endif
end

real function sub(a,b,c)
real a,b,c
sub = dot_product((/(dot_product((/(a+b),(a-b)/),(/(a+b+c),sum((/(a+b)/))/)))/),(/(c)/))
end function
