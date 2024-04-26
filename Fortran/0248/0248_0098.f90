integer,pointer :: pp=>NULL()
character(len=4) :: res
res=sub(NULL(),NULL(),pp)
print*,res

contains
function sub(dmy,d2,d)
integer,optional :: dmy
integer,optional,pointer :: d2,d
character(len=4) :: sub
sub='pass'
if(present(dmy)) then
print*,dmy
else
print*,"dmy is absent"
 if(present(d2) .neqv. .true.) print*,101
 if(present(d) .neqv. .true.) print*,102
endif
end function
end
