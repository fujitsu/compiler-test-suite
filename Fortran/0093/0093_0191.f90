implicit none
complex,pointer:: cmp1(:)
allocate(cmp1(5))
cmp1 = (2.22,3.22)
cmp1%re = 5.78
cmp1%im = 8.22
print*,cmp1%re
print*,cmp1%im
print*,cmp1(2:5:2)%re
print*,cmp1(2:5:2)%im
print*,cmp1(3)%re
print*,cmp1(3)%im
print*,"pass"
end

