real,pointer :: ptr1
real,pointer :: ptr2
complex,target:: cmp
cmp=(2,4)
data ptr1 /cmp%re/
data ptr2 /cmp%im/
if(associated(ptr1).neqv..true.)print*,"101"
if(associated(ptr2).neqv..true.)print*,"101"
if(ptr1 .ne. 2 .and. ptr2 .ne. 4)print*,"101"
if(cmp%re .ne. 2) print*,"102"
if(cmp%im .ne. 4) print*,"103"
print*,"pass"
end


