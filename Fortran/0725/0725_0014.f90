program main
real,dimension(1:10) :: a,b
real,parameter::ans =34.9761505
real,parameter::diff= 0.000004
integer i1,i2,i3

a = (/(real(i)/3.7,i=1,10)/)
b = (/(real(i)/1.7,i=1,10)/)
i1 = 10
i2 = int(a(1)/a(1))
i3 = -2
r = sub(a,b,i1,i2,i3)
if (abs(r-ans)<=diff) then
  print *,'ok'
else
  print *,'ng',r
endif
end

real function sub(a,b,s1,s2,s3)
real,dimension(1:10) :: a,b
integer s1,s2,s3

sub = dot_product(a(s1:s2:s3),b(s1:s2:s3))
end function
