integer(kind=1) i1
integer(kind=2) i2
integer(kind=4) i4
integer(kind=8) i8
integer(kind=8) j8
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
j8 = 1_8
print*,i1**j8
print*,i2**j8
print*,i4**j8
print*,i8**j8
print*,r4**j8
print*,r8**j8
print*,r16**j8
end
