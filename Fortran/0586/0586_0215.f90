type ty
integer  :: tar1=2
integer  :: tar2(2)=4
integer  :: tar3(2)=5
integer  :: tar4(3)=6
end type

type(ty),target,save :: obj

integer,pointer :: ptr1/obj%tar1/
integer ,pointer :: ptr2(:)/ obj%tar2/
integer ,pointer :: ptr3/obj%tar3(1)/
integer ,pointer :: ptr4(:)/obj%tar4(1:2)/

 
if(associated(ptr1) .eqv. .false.)print*,"101",associated(ptr1)
if(associated(ptr2) .eqv. .false.)print*,"103",associated(ptr2)
if(associated(ptr3) .eqv. .false.)print*,"105",associated(ptr3)
if(associated(ptr4) .eqv. .false.)print*,"107",associated(ptr4)
if(associated(ptr1).eqv..true.)then
if(ptr1 .ne. 2) print*,"100"
endif
if(associated(ptr2).eqv..true.)then
if(any(ptr2 .ne. 4)) print*,"102"
endif

if(associated(ptr3).eqv..true.)then
if(ptr3 .ne. 5) print*,"104"
endif

if(associated(ptr4).eqv..true.)then
if(any(ptr4 .ne. 6)) print*,"106"
endif
print*,"pass"

end
