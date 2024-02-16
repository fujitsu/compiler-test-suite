complex :: aa(2)

aa(2)%re = 3.44
aa(2)%im = 4.56

if(SIZE(aa%re) .ne. 2) print*,101
if(SIZEOF(aa%im) .ne. 8) print*,102
if(UBOUND(aa%re,1) .ne. 2) print*,103
if(LBOUND(aa%im,1) .ne. 1) print*,104
if( aa(2)%re .ne. 3.44) print*,105
if( aa(2)%im .ne. 4.56) print*,106
if (aa(2) .ne. (3.44,4.56)) print*,107
PRINT*,"PASS"
end
