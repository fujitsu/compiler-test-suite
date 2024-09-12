subroutine sub1()
character(len=4) ,target,save :: tar1(2)="data"
character(len=:),pointer :: ptr1(:)=>tar1(1:2)(2:4)

if(ptr1(1) .ne. "ata") print*,"err",ptr1(1)
ptr1=>tar1(1:2)(2:4)
if(ptr1(1) .ne. "ata") print*,"err"
end
subroutine sub2()
character(kind=4,len=4) ,target,save :: tar1(2)=4_"ああああ"
character(kind=4,len=:),pointer :: ptr1(:)=>tar1(1:2)(2:4)

if(ptr1(1) .ne. 4_"あああ") print*,"err ",ptr1(1)
ptr1=>tar1(1:2)(2:4)
if(ptr1(1) .ne. 4_"あああ") print*,"err"
end

call sub1()
call sub2()
print*,"pass"
end
