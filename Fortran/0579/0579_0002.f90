procedure(aimag),pointer::func
procedure(func)::ptr1
procedure(func),pointer::ptr2
complex:: c1
c1=(2,3)
ptr2=>aimag
if(ptr2(c1) .ne. 3.0)print*,"101"
if(ptr1(c1) .ne. 4.0)print*,"102"
print*,"pass"
end

function ptr1(d)
real :: ptr1
complex :: d
ptr1=aimag(d)+1
end function

