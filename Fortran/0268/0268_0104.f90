integer,target::t1=20
call sub
contains
subroutine sub

integer,pointer::ptr
data ptr /t1/
if(ptr.ne.20)print*,"101"
print*,"PASS"
end
end
