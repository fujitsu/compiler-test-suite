REAL A(2:3, 7:10)
call sub(A ,A)
contains
subroutine sub(xx,yy)
real::xx(..)
real::yy(2:3,*)
integer::lb(2)
lb = ubound(xx)
if(ubound(xx,2).ne.4)print*,"101"
if(ubound(xx,1).ne.2)print*,"102"
if(lb(1).ne.2)print*,"103"
if(lb(2).ne.4)print*,"104"
call sub2(yy)
print*,"pass"
end subroutine
subroutine sub2(zz)
real::zz(..)
integer::lb(2)
lb = ubound(zz)
if(ubound(zz,2).ne.-1)print*,"105"
if(ubound(zz,1).ne.2)print*,"106"
if(lb(1).ne.2)print*,"107"
if(lb(2).ne.-1)print*,"108"
end subroutine
end
