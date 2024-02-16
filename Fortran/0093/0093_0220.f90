complex,allocatable:: cmp1
real::xx,yy

allocate (cmp1)
cmp1 =(2.44,3.66)
xx = cmp1%re
yy = cmp1%im

if (allocated(cmp1) .neqv. .true. ) print*,101
if (SIZEOF(cmp1) .ne. 8) print*,102
if (cmp1%re .ne. 2.44 ) print*, 103
if (cmp1%im .ne. 3.66) print*,104
if (xx .ne. 2.44) print*,105
if (yy .ne. 3.66) print*,106
print*,"PASS"
end

