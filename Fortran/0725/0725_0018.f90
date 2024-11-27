program main
real,dimension(1:10):: a,b
real,parameter::ans =427.743103

a = (/(real(i)*1.00001,i=1,10)/)
b = (/(real(i)*1.11101,i=1,10)/)
i = 1
k = i*i
call sub(a,b,i,k,ans)
end

subroutine sub(a,b,i,k,ans)
real,dimension(1:10)::a,b
real ans
real,parameter::diff= 0.0001

r = dot_product(a(1:10:i),b(1:10:k))

if (abs(r-ans)<=diff) then
  print *,'ok'
else
  print *,'ng',r
endif
end subroutine
