PROGRAM main
implicit complex (C)
real::rr,ii

Cmp = (3.13,3.14)
rr = Cmp%re
ii = Cmp%im

if (Cmp%re .ne. 3.13) print*,101
if (Cmp%im .ne. 3.14) print*,102
if (rr .ne. 3.13) print*,103
if (ii .ne. 3.14) print*,104
if (sizeof (Cmp%re) .ne. 4) print*,105
PRINT*,"PASS"


end
