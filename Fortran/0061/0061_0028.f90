integer(kind=1) i1
integer(kind=2) i2
integer(kind=4) i4
integer(kind=8) i8
integer(kind=4) j4
real(kind=4)    r4
real(kind=8)    r8
real(kind=16)   r16
i1 = 0_1
i2 = 0_2
i4 = 0_4
i8 = 0_8
r4 = 0._4
r8 = 0._8
r16 = 0._16
j4 = 1_4
print*,i1**j4
print*,i2**j4
print*,i4**j4
print*,i8**j4
print*,r4**j4
print*,r8**j4
print*,r16**j4
end
