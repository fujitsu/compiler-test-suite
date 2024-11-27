program main
integer,dimension(1:10)::a,b
integer i
a = (/(real(i),i=1,10)/)
b = (/(real(10-i+1),i=1,10)/)
i = 0
call sub(a,b,i)
end

subroutine sub(a,b,i)
integer,dimension(1:10)::a,b
integer i
integer t
t = dot_product(a(1:i:1),b(1:i:1))
if (t==0) then
  print *,'ok'
else
  print *,'ng'
endif
end subroutine
