real,parameter::x(2,3,1) =20.7
real,pointer::ptr(:,:)
integer::p =rank(ptr)
if(p.ne.2)print*,"101"
call sub(x)
contains
subroutine sub(x)
real::x(:,:,:)
integer::y = Rank(x)
if(y.ne.3)print*,"101"
print*,"pass"
end subroutine
end
