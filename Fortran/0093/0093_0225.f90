complex :: cmp(2)
real::rr(2),qq(2)        
cmp  = (6,3)

rr = cmp%re
qq = cmp%im

if(SIZE(cmp%re) .ne. 2) print*,101
if(SIZEOF(cmp%im) .ne. 8) print*,102
if(UBOUND(cmp%re,1) .ne. 2) print*,103
if(LBOUND(cmp%im,1) .ne. 1) print*,104
if(all(cmp%re .ne. 6)) print*,105
if(all(cmp%im .ne. 3)) print*,106
if(all(rr .ne. 6)) print*,107
if(all(qq .ne. 3)) print*,108
if(any(cmp .ne. (6,3))) print*,109
PRINT*,"PASS"

end
