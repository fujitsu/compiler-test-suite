interface
function sub(d2,dmy,d)
integer,optional :: dmy,d2,d
character(len=4) :: sub
end function
end interface
character(len=4) :: res
res=sub(2,NULL(),3)
print*,res
end

function sub(d2,dmy,d)
integer,optional :: dmy,d2,d
character(len=4) :: sub
sub='pass'
if(present(dmy)) then
print*,dmy
else
print*,"dmy is absent"
 if(.not. present(d2)) print*,101
 if(.not. present(d)) print*,102
endif
end function
