integer,pointer ::ptr
integer,target::t1 =12
integer::X(5,5)
DATA (( X(J,I), I=1,J), J=1,5),ptr / 15*1,t1 /
if(associated(ptr).neqv..true.)print*,"101"
print*,"PASS"
end
