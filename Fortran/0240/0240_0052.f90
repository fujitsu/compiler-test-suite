call test()
print *,'pass'
end
subroutine test()
integer ,parameter :: mykind=1
character ::i
i="Hello world"
i='don''t give up'
i=1_"Fortran"
i=mykind_'TEST PROGRAM'
i=''
i=""
if (i.ne."") print *,'err'
end
