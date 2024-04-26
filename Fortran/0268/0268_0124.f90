integer ,target,save :: tar1=2
integer,pointer :: ptr1/tar1/

integer ,target,save :: tar2(2)=4
integer ,pointer :: ptr2(:)/tar2/

integer ,target,save :: tar3(2)=5
integer ,pointer :: ptr3/tar3(1)/

integer ,target,save :: tar4(3)=6
integer ,pointer :: ptr4(:)/tar4(1:2)/

if(ptr1 .ne. 2) print*,"100"
if(associated(ptr1) .eqv. .false.)print*,"101"

if(any(ptr2 .ne. 4)) print*,"102"
if(associated(ptr2) .eqv. .false.)print*,"103"

if(ptr3 .ne. 5) print*,"104"
if(associated(ptr3) .eqv. .false.)print*,"105"

if(any(ptr4 .ne. 6)) print*,"106"
if(associated(ptr4) .eqv. .false.)print*,"107"

print*,"PASS"

end
