subroutine sub1()
character(len=4) ,target,save :: tar1="data"
character(len=:),pointer :: ptr1=>tar1

if(ptr1 .ne. "data") print*,"100"
if(len(ptr1) .ne. 4)print*,"101"
if(associated(ptr1) .eqv. .false.)print*,"102"
ptr1=>tar1
if(ptr1 .ne. "data") print*,"200"
if(len(ptr1) .ne. 4)print*,"201"
if(associated(ptr1) .eqv. .false.)print*,"202"
end
subroutine subr21()
character(kind=4,len=4) ,target,save :: tar1=4_"ああああ"
character(kind=4,len=:),pointer :: ptr1=>tar1

if(ptr1 .ne. 4_"ああああ") print*,"100"
if(len(ptr1) .ne. 4)print*,"101"
if(associated(ptr1) .eqv. .false.)print*,"102"
ptr1=>tar1
if(ptr1 .ne. 4_"ああああ") print*,"200"
if(len(ptr1) .ne. 4)print*,"201"
if(associated(ptr1) .eqv. .false.)print*,"202"
end

call sub1()
print*,"pass"
end
