complex :: aa(3:5)
complex :: bb

bb = (3.44,6.78)

aa%re = (/3.56,bb%re,7.88 /)
aa%im = (/5.45,bb%im,5.43 /)

IF( UBOUND(aa,1) .ne. 5) print*,101
IF( LBOUND(aa,1) .ne. 3) print*,102
IF(sizeof(aa(4)%re) .ne. 4) print*,103
IF(sizeof(aa(4)%im) .ne. 4) print*,104
IF(aa(3)%re .ne. 3.56) print*,105
IF(aa(4)%re .ne. 3.44) print*,106
IF(aa(5)%re .ne. 7.88) print*,107
IF(aa(3)%im .ne. 5.45) print*,108
IF(aa(4)%im .ne. 6.78) print*,109
IF(aa(5)%im .ne. 5.43) print*,110
PRINT*,"PASS"
end


