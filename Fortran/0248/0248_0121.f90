interface
function entrysub(dmy,bb)
integer,optional :: dmy
integer::bb
character(len=4) :: entrysub
end function 

function sub(dmy,d2,d3)
integer,optional :: dmy,d2,d3
character(len=4) :: sub
end function 
end interface

character(len=4) :: res
res=sub(NULL(),2,3)
print*,res
end

function entrysub(dmy,bb)
integer,optional :: dmy,d2,d3
integer::bb
character(len=4) :: sub,entrysub

print*,bb
entry sub(dmy,d2,d3)
sub='pass'
if(present(dmy)) then
print*,dmy
else
print*,"dmy is absent"
if(.not. present(d2)) print*,101
if(.not. present(d3)) print*,102
endif
end function 
