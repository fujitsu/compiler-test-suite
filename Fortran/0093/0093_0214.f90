complex :: aa

aa%re = 3.67    
aa%im = 4.84

if(SIZEOF(aa%re) .ne. 4) print*,101
if(SIZEOF(aa%im) .ne. 4) print*,102
if(aa%re .ne. 3.67) print*,103
if(aa%im .ne. 4.84) print*,104
PRINT*,"PASS"

end
