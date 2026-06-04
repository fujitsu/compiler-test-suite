real,pointer :: ptr1
real,pointer :: ptr2
complex,save,target:: cmp
real, target :: real_part, imag_part
cmp=(2,4)

real_part = cmp%re 
imag_part = cmp%im 
ptr1 => real_part
ptr2 => imag_part

if(associated(ptr1).neqv..true.)print*,"101"
if(associated(ptr2).neqv..true.)print*,"101"
if(ptr1 .ne. 2 .and. ptr2 .ne. 4)print*,"101"
if(cmp%re .ne. 2) print*,"102"
if(cmp%im .ne. 4) print*,"103"
print*,"pass"
end


