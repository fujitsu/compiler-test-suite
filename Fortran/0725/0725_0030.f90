program main
real,parameter::ans=8.21212101
real,parameter::diff=0.00005

r = dot_product((/(real(i)/3.3,i=1,5)/),(/1.1,1.2,1.5,1.9,2.3/))

if (abs(r-ans)<=diff) then
  print *,'ok'
else
  print *,'ng',r,ans
endif

end
