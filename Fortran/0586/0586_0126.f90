character(len=:),pointer::ptr1
character(len=:),pointer::ptr
character(len=2),target::t1="ab"
ptr1=>t1
data ptr /t1/
if(len(ptr1).ne.2)print*,"101"
if(len(ptr).ne.2)print*,"102"
print*,"PASS"
end
