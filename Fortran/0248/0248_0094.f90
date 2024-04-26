character(len=4) :: res
res=sub(NULL())
print*,res

contains
function sub(dmy)
integer,optional :: dmy
character(len=4) :: sub
sub='pass'
if(present(dmy)) then
print*,dmy
else
print*,"dmy is absent"
endif
end function 
end
