integer :: x(10)
x=1
call sub(x(1:10:2),x(6))
print *,'pass'
end

subroutine sub(a,b)
integer a(5),b(5)
a=(/10,20,30,40,50/)
b(4)=100
b(5)=200
end
