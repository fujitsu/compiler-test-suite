call test()
print *,'pass'
end
subroutine test()
integer ,parameter :: ASCII=1
character ::i
i="Hello world"
i='don''t give up'
i=1_"Fortran"
i=ASCII_'ABCDEFG HIJKLMN'
i=''
i=""        
if (i.ne."") print *,'err'
end
