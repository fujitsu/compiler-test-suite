program main
real,dimension(1:10,1:10) :: a,b
real,parameter::ans =10115.9707
real,parameter::diff=    0.001
a = reshape((/(real(i)*1.123,i=1,100)/),(/10,10/))
b = reshape((/(real(i)*1.111,i=1,100)/),(/10,10/))
r = dot_product(a(1,:),b(:,1))
r = r + dot_product(a(:,1),b(1,:))
r = r + dot_product(a(1:2,3),b(2:3,4))
if (abs(r-ans)<=diff) then
  print *,'ok'
else
  print *,'ng',r,ans
endif
end  
