interface
function entrysub(dmy,bb)
integer,optional :: dmy
integer::bb
character(len=4) :: entrysub
end function 

function sub(dmy)
integer,optional :: dmy
character(len=4) :: sub
end function 
end interface

character(len=4) :: res
res=sub(NULL())
print*,res
end

function entrysub(dmy,bb)
integer,optional :: dmy
integer::bb
character(len=4) :: sub,entrysub

print*,bb
entry sub(dmy)
sub='pass'
if(present(dmy)) then
print*,dmy
else
print*,"dmy is absent"
endif
end function 
