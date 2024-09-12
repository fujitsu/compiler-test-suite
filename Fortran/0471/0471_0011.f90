subroutine sub1()
character(len=4) ,target,save :: tar1(2)="data"
character(len=:),pointer :: ptr1(:)=>tar1(1:2)(2:4)

if(ptr1(1) .ne. "ata") print*,"100",ptr1(1)
if(len(ptr1(1)) .ne. 3)print*,"101",len(ptr1(1))
if(associated(ptr1) .eqv. .false.)print*,"102"
ptr1=>tar1(1:2)(2:4)
if(ptr1(1) .ne. "ata") print*,"200"
if(len(ptr1(1)) .ne. 3)print*,"201"
if(associated(ptr1) .eqv. .false.)print*,"202"
end
subroutine subr21()
character(kind=4,len=4) ,target,save :: tar1(2)=4_"ああああ"
character(kind=4,len=:),pointer :: ptr1(:)=>tar1(1:2)(2:4)

if(ptr1(1) .ne. 4_"あああ") print*,"100a"
if(len(ptr1(1)) .ne. 3)print*,"101a"
if(associated(ptr1) .eqv. .false.)print*,"102"
ptr1=>tar1(1:2)(2:4)
if(ptr1(1) .ne. 4_"あああ") print*,"200"
if(len(ptr1(1)) .ne. 3)print*,"201"
if(associated(ptr1) .eqv. .false.)print*,"202"
end

call sub1()
call subr21()
print*,"pass"
end
