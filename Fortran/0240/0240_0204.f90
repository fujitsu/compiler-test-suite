call test()
print *,'pass'
end
subroutine test()
integer,parameter :: mykind=1
logical :: i
i= .false.
i= .true.
i= .false._4
i= .true._mykind
if (i.neqv..true.) print *,'err'
end
