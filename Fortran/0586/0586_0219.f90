subroutine s1()
integer,pointer,save :: ptr
integer,target,save :: trg = 2
ptr=>trg
call s2()
contains
subroutine s2()
integer,pointer,save :: ptr2/trg/
if(ptr2 .ne. 2)print*,"101"
if(associated(ptr2) .eqv. .false.)print*,"102"
print*,"pass"
end
end
call s1()
end
