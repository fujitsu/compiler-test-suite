integer :: x(10)
x=10
call sub(x,x)
write(1,*) x
print *,'pass'
end

subroutine sub(a,b)
  integer,dimension(10) :: a,b
  integer :: step
  read *,step
  a(1:10:step)=20
  b(1:10:step)=50
end
