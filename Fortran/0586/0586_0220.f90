integer ,target,save :: tar2(2)=[1,2]
integer ,pointer :: ptr1/tar2(2)/
call s(ptr1)
contains
subroutine s(d)
integer ,pointer :: d
if( d .ne. 2)print*,"101"
if (associated(d) .eqv. .false.)print*,"102"
print*,"pass"
end subroutine
end
    
