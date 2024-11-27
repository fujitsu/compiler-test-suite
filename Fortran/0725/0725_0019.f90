program main
real,dimension(1:10):: a,b
real,parameter::ans =427.190918

a = (/(real(i)*1.1234567,i=1,10)/)
b = (/(real(i)*0.9876543,i=1,10)/)
i = int(a(1))
call sub(a,b,i,ans)
end

subroutine sub(a,b,i,ans)
real,dimension(1:10)::a,b
real ans
real,parameter::diff= 0.0001

r = dot_product(a(1:10:i),b(1:10:1))

if (abs(r-ans)<=diff) then
  print *,'ok'
else
  print *,'ng',r
endif
end subroutine
