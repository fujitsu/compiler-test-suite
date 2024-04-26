CHARACTER(KIND=1,LEN=10),parameter :: a="a"
integer,parameter::a1=storage_size(a)
if(a1 .ne.storage_size(a))print*,"100"
print*,"PASS"
end
