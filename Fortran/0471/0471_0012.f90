subroutine sub1()
character(len=4) ,target,save :: tar1(2)="data"
character(len=:),pointer :: ptr1(:)=>tar1(1:1)(2:4)

if(ptr1(1) .ne. "ata") print*,"100",ptr1(1)
if(len(ptr1(1)) .ne. 3)print*,"101",len(ptr1(1))
if(associated(ptr1) .eqv. .false.)print*,"102"
ptr1=>tar1(1:1)(2:4)
if(ptr1(1) .ne. "ata") print*,"200"
if(len(ptr1(1)) .ne. 3)print*,"201"
if(associated(ptr1) .eqv. .false.)print*,"202"
end
subroutine subr21()
character(kind=4,len=4) ,target,save :: tar1(2)=4_"あいうえ"
character(kind=4,len=:),pointer :: ptr1(:)=>tar1(1:1)(2:4)

if(ptr1(1) .ne. 4_"いうえ") print*,"100a"
if(len(ptr1(1)) .ne. 3)print*,"101a"
if(associated(ptr1) .eqv. .false.)print*,"102"
ptr1=>tar1(1:1)(2:4)
if(ptr1(1) .ne. 4_"いうえ") print*,"200",ptr1(1)
if(len(ptr1(1)) .ne. 3)print*,"201"
if(associated(ptr1) .eqv. .false.)print*,"202"
end
subroutine subr22()
character(kind=4,len=4) ,target,save :: tar1(2)=4_"あいうえ"
character(kind=4,len=:),pointer :: ptr1=>tar1(1)(2:4)

if(ptr1 .ne. 4_"いうえ") print*,"103a"
if(len(ptr1) .ne. 3)print*,"103a"
if(associated(ptr1) .eqv. .false.)print*,"103"
ptr1=>tar1(1)(2:4)
if(ptr1 .ne. 4_"いうえ") print*,"203",ptr1
if(len(ptr1) .ne. 3)print*,"231"
if(associated(ptr1) .eqv. .false.)print*,"203"
end
subroutine subr23()
character(kind=4,len=4) ,target,save :: tar1=4_"あいうえ"
character(kind=4,len=:),pointer :: ptr1=>tar1(2:4)

if(ptr1 .ne. 4_"いうえ") print*,"104a"
if(len(ptr1) .ne. 3)print*,"104a"
if(associated(ptr1) .eqv. .false.)print*,"104"
ptr1=>tar1(2:4)
if(ptr1 .ne. 4_"いうえ") print*,"204",ptr1
if(len(ptr1) .ne. 3)print*,"241"
if(associated(ptr1) .eqv. .false.)print*,"204"
end

call sub1()
call subr21()
call subr22()
call subr23()
print*,"pass"
end
