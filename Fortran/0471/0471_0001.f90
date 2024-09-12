character(len=4),target,save :: tar1="data"
character(len=4),target,save :: tar2(10)="save"
type ty1
character(len=4) :: tar3="ssss"
end type
type(ty1),target,save :: str
character(len=:),pointer :: ptr1=>tar1
character(len=:),pointer :: ptr2=>tar2(1)
character(len=:),pointer :: ptr3=>str%tar3

if(ptr1 .ne. "data") print*,"100"
if(len(ptr1) .ne. 4)print*,"101"
if(associated(ptr1) .eqv. .false.)print*,"102"
ptr1=>tar1
if(ptr1 .ne. "data") print*,"200"
if(len(ptr1) .ne. 4)print*,"201"
if(associated(ptr1) .eqv. .false.)print*,"202"

print*,"pass"

end
