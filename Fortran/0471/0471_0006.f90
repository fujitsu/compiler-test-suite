subroutine sub1()
character(len=4) ,target,save :: tar1="data"
character(len=:),pointer :: ptr1=>tar1(1:4)

if(ptr1 .ne. "data") print*,"100",ptr1
if(len(ptr1) .ne. 4)print*,"101",len(ptr1)
if(associated(ptr1) .eqv. .false.)print*,"102"
ptr1=>tar1(1:4)
if(ptr1 .ne. "data") print*,"200"
if(len(ptr1) .ne. 4)print*,"201"
if(associated(ptr1) .eqv. .false.)print*,"202"
end

subroutine sub2()
character(len=4) ,target,save :: tar1="data"
character(len=:),pointer :: ptr1=>tar1(2:4)

if(ptr1 .ne. "ata") print*,"100a"
if(len(ptr1) .ne. 3)print*,"101a"
if(associated(ptr1) .eqv. .false.)print*,"102"
ptr1=>tar1(2:4)
if(ptr1 .ne. "ata") print*,"200a"
if(len(ptr1) .ne. 3)print*,"201a"
if(associated(ptr1) .eqv. .false.)print*,"202"
end

subroutine subr21()
character(kind=4,len=4) ,target,save :: tar1=4_"ああああ"
character(kind=4,len=:),pointer :: ptr1=>tar1(1:4)

if(ptr1 .ne. 4_"ああああ") print*,"100b"
if(len(ptr1) .ne. 4)print*,"101b"
if(associated(ptr1) .eqv. .false.)print*,"102"
ptr1=>tar1(1:4)
if(ptr1 .ne. 4_"ああああ") print*,"200"
if(len(ptr1) .ne. 4)print*,"201"
if(associated(ptr1) .eqv. .false.)print*,"202"
end

call sub1()
call sub2()
call subr21()
print*,"pass"
end
