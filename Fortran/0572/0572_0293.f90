real A(2:3,7:10)
A =20.0
call sub(A)
contains
subroutine sub(xx)
real::xx(..)
integer::lb(2)
lb = lbound(xx)
if(lbound(xx,2).ne.1)print*,"101"
if(lbound(xx,1).ne.1)print*,"102"
if(lb(1).ne.1)print*,"103"
if(lb(2).ne.1)print*,"104"
print*,"pass"
end subroutine
end
