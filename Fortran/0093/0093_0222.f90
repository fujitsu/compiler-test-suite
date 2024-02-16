complex,pointer:: pt
complex,target:: tgt
real::xx,yy

pt => tgt
tgt = (2.44,3.66)

xx = tgt%re
yy = tgt%im

if (ASSOCIATED (pt) .neqv. .true.) print*,101
if (SIZEOF(tgt) .ne. 8) print*,102
if (tgt%re .ne. 2.44) print*,103
if (tgt%im .ne. 3.66) print*,104
if (xx .ne. 2.44) print*,105
if (yy .ne. 3.66) print*,106
print *,"PASS"
end

