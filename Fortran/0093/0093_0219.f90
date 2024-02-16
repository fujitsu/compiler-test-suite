complex,allocatable:: cmp1
real::xx,yy 

allocate (cmp1,source=(2.44,3.66))

Deallocate(cmp1)

allocate (cmp1,source = (8.99,9.77))        
xx = cmp1%re
yy = cmp1%im

if (allocated(cmp1) .neqv. .true. ) print*,101
if (SIZEOF(cmp1%re) .ne. 4) print*,102
if (SIZEOF(cmp1%im) .ne. 4) print*,103
if (cmp1%re .ne. 8.99) print*,104
if (cmp1%im .ne. 9.77) print*,105
if (xx .ne. 8.99) print*,106
if (yy .ne. 9.77) print*,107
if (cmp1 .ne. (8.99,9.77)) print*,108
print *,"PASS"
end

