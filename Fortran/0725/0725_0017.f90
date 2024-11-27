program main
integer,dimension(1:10)::a,b
integer i
a = (/(real(i),i=1,10)/)
b = a
i = 0
j = 1
k = 1
call sub(a,b,i,j,k)
end

subroutine sub(a,b,i,j,k)
integer,dimension(1:10)::a,b
integer i,j,k
integer t
t = dot_product(a(j:i:k),b(j:i:k))
if (t==0) then
  print *,'ok'
else
  print *,'ng',t
endif
end subroutine
