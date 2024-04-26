integer ,target,save :: tar2(2)=[1,2]
integer ,pointer :: ptr1/tar2(1+1)/

if( ptr1 .ne. 2)print*,"101"
if (associated(ptr1) .eqv. .false.)print*,"102"

print*,"PASS"

end
