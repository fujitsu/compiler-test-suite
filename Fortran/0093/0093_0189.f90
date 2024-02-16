implicit none
complex:: cmp1(6) = (2.22,3.22)
cmp1%re = 5.78
print*,cmp1%re
print*,cmp1%im
print*,cmp1(2:3)%re
print*,cmp1(2:3)%im
print*,cmp1(2)%re
print*,cmp1(2)%im
print*,"pass"
end

