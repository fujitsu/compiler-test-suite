real,pointer :: ptr1
real,pointer :: ptr2
complex,target :: cmp
cmp=(2,4)
ptr1=>cmp%re
ptr2=>cmp%im
if(ptr1 .ne. 2 .and. ptr2 .ne. 4)print*,"101"
ptr1=3
ptr2=5
if(cmp%re .ne. 3) print*,"102"
if(cmp%im .ne. 5) print*,"103"
print*,"pass"
end

