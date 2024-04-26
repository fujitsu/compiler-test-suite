module mod
integer,pointer :: a(:) 
integer,pointer :: b(:,:)
end module
use mod
allocate(a(100),source=(/(i,i=1,100)/))
b(2:8,4:10) => a
print *,b
print *,lbound(b,1) , ubound(b,1)
print *,lbound(b,2) , ubound(b,2)
print *,'ok'
end
