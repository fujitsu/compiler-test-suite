real :: aa(3)
complex :: bb
bb = (3.44,6.78)
aa = (/2.34,bb%re,bb%im/)


IF(aa(1) .ne. 2.34) print*,101
IF(aa(2) .ne. 3.44) print*,102
IF(aa(3) .ne. 6.78) print*,103
print*,"PASS"
end
