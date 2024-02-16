PROGRAM complex
implicit none
complex:: cmp1(5)

cmp1%re = 3.78
cmp1%im = 4.89


if (any(cmp1%re .ne. 3.78)) print*,103
if (any(cmp1%im .ne. 4.89)) print*,104
if (size(cmp1%re) .ne. 5) print*,105
if (sizeof(cmp1%im) .ne. 20) print*,106
if (ubound(cmp1%re ,1) .ne. 5) print*,107


PRINT*,"PASS"
end
