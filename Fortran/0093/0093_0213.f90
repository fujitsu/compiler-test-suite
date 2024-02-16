complex :: aa
real::rr,ii

aa =( 3.44,4.88)
rr= aa%re    
ii= aa%im


if(SIZEOF(aa%re) .ne. 4) print*,101
if(SIZEOF(aa%im) .ne. 4) print*,102
if(aa%re .ne. 3.44) print*,103
if(aa%im .ne. 4.88) print*,104
if(rr .ne. 3.44) print*,105
if(ii .ne. 4.88) print*,106
PRINT*,"PASS"
end
