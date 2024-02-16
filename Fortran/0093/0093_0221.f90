complex,pointer:: cmp
real::xx,yy

allocate (cmp)
cmp = (3.44,2.67)

xx = cmp%re
yy = cmp%im

if (SIZEOF(cmp) .ne. 8) print*,102
if (cmp%re .ne. 3.44) print*,103
if (cmp%im .ne. 2.67) print*,104
if (xx .ne. 3.44) print*,105
if (yy .ne. 2.67) print*,106
PRINT*,"PASS"

end
