dimension::arr(2,2)
block
call sub(arr)
end block
contains
subroutine sub(d1)
Real::d1(2,2)
integer,parameter::arr=10
block
integer::arr
dimension::arr(3,3)
if(SIZE(arr)==9)print*,"pass"
end block
if(arr==10)print*,"pass"
end subroutine
end
