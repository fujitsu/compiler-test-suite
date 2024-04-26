CHARACTER(KIND=4,LEN=2),parameter :: a="ab"
integer,parameter::a1=storage_size(a,4)
integer,parameter::a2=kind(storage_size(a,4))
if(a1 .ne.64)print*,"100"
if(a2 .ne.4)print*,"101"
print*,"PASS"
end
