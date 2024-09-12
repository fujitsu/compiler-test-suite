
character*2,target::tar ='ab'
character(len=:),pointer::ptr=>NULL()
character(len=:),pointer::ptr2=>tar
character(len=:),pointer::ptr3
integer::a,b,c(2)

data a,b,c,ptr3 /4*4,tar/

if(associated(ptr).neqv..false.)print*,"101",associated(ptr)
if(associated(ptr2).neqv..true.)print*,"102",associated(ptr2)
if(associated(ptr3).neqv..true.)print*,"103",associated(ptr3)
if(len(ptr2).ne.2)print*,"102",len(ptr2)
if(len(ptr3).ne.2)print*,"104",len(ptr3)
if(a.ne.4)print*,"104"
if(b.ne.4)print*,"105"
if(c(1).ne.4)print*,"106"
if(c(2).ne.4)print*,"107"

print*,"PASS"
end

