use ieee_arithmetic

real :: rr

integer         :: ia , ib
integer(kind=1) :: i1a, i1b
integer(kind=2) :: i2a, i2b
integer(kind=4) :: i4a, i4b
integer(kind=8) :: i8a, i8b

ia = 1
ib = ia

i1a = ia
i1b = i1a
i2a = i1a + i1b
i2b = i2a
i4a = i2a * i2b
i4b = i4a
i8a = i4a + i4b
i8b = i8a

rr = ieee_selected_real_kind(1)

rr = ieee_selected_real_kind(p = 1)
rr = ieee_selected_real_kind(r = 1)

rr = ieee_selected_real_kind(1_1)
rr = ieee_selected_real_kind(2_2)
rr = ieee_selected_real_kind(4_4)
rr = ieee_selected_real_kind(8_8)

rr = ieee_selected_real_kind(p = 1_1)
rr = ieee_selected_real_kind(p = 2_2)
rr = ieee_selected_real_kind(p = 4_4)
rr = ieee_selected_real_kind(p = 8_8)

rr = ieee_selected_real_kind(r = 1_1)
rr = ieee_selected_real_kind(r = 2_2)
rr = ieee_selected_real_kind(r = 4_4)
rr = ieee_selected_real_kind(r = 8_8)

rr = ieee_selected_real_kind(ia)

rr = ieee_selected_real_kind(p = ia)
rr = ieee_selected_real_kind(r = ib)

rr = ieee_selected_real_kind(i1a)
rr = ieee_selected_real_kind(i2a)
rr = ieee_selected_real_kind(i4a)
rr = ieee_selected_real_kind(i8a)

rr = ieee_selected_real_kind(p = i1a)
rr = ieee_selected_real_kind(p = i2a)
rr = ieee_selected_real_kind(p = i4a)
rr = ieee_selected_real_kind(p = i8a)

rr = ieee_selected_real_kind(r = i1b)
rr = ieee_selected_real_kind(r = i2b)
rr = ieee_selected_real_kind(r = i4b)
rr = ieee_selected_real_kind(r = i8b)

rr = ieee_selected_real_kind(1,     1)
rr = ieee_selected_real_kind(1,     r = 1)
rr = ieee_selected_real_kind(p = 1, r = 1)
rr = ieee_selected_real_kind(r = 1, p = 1)

rr = ieee_selected_real_kind(1,       1_1)
rr = ieee_selected_real_kind(1,       r = 1_1)
rr = ieee_selected_real_kind(p = 1,   r = 1_1)
rr = ieee_selected_real_kind(r = 1_1, p = 1)

rr = ieee_selected_real_kind(1,       2_2)
rr = ieee_selected_real_kind(1,       r = 2_2)
rr = ieee_selected_real_kind(p = 1,   r = 2_2)
rr = ieee_selected_real_kind(r = 2_2, p = 1)

rr = ieee_selected_real_kind(1,       4_4)
rr = ieee_selected_real_kind(1,       r = 4_4)
rr = ieee_selected_real_kind(p = 1,   r = 4_4)
rr = ieee_selected_real_kind(r = 4_4, p = 1)

rr = ieee_selected_real_kind(1,       8_8)
rr = ieee_selected_real_kind(1,       r = 8_8)
rr = ieee_selected_real_kind(p = 1,   r = 8_8)
rr = ieee_selected_real_kind(r = 8_8, p = 1)

rr = ieee_selected_real_kind(1_1,     1)
rr = ieee_selected_real_kind(1_1,     r = 1)
rr = ieee_selected_real_kind(p = 1_1, r = 1)
rr = ieee_selected_real_kind(r = 1,   p = 1_1)

rr = ieee_selected_real_kind(1_1,     1_1)
rr = ieee_selected_real_kind(1_1,     r = 1_1)
rr = ieee_selected_real_kind(p = 1_1, r = 1_1)
rr = ieee_selected_real_kind(r = 1_1, p = 1_1)

rr = ieee_selected_real_kind(1_1,     2_2)
rr = ieee_selected_real_kind(1_1,     r = 2_2)
rr = ieee_selected_real_kind(p = 1_1, r = 2_2)
rr = ieee_selected_real_kind(r = 2_2, p = 1_1)

rr = ieee_selected_real_kind(1_1,     4_4)
rr = ieee_selected_real_kind(1_1,     r = 4_4)
rr = ieee_selected_real_kind(p = 1_1, r = 4_4)
rr = ieee_selected_real_kind(r = 4_4, p = 1_1)

rr = ieee_selected_real_kind(1_1,     8_8)
rr = ieee_selected_real_kind(1_1,     r = 8_8)
rr = ieee_selected_real_kind(p = 1_1, r = 8_8)
rr = ieee_selected_real_kind(r = 8_8, p = 1_1)

rr = ieee_selected_real_kind(2_2,     1)
rr = ieee_selected_real_kind(2_2,     r = 1)
rr = ieee_selected_real_kind(p = 2_2, r = 1)
rr = ieee_selected_real_kind(r = 1,   p = 2_2)

rr = ieee_selected_real_kind(2_2,     1_1)
rr = ieee_selected_real_kind(2_2,     r = 1_1)
rr = ieee_selected_real_kind(p = 2_2, r = 1_1)
rr = ieee_selected_real_kind(r = 1_1, p = 2_2)

rr = ieee_selected_real_kind(2_2,     2_2)
rr = ieee_selected_real_kind(2_2,     r = 2_2)
rr = ieee_selected_real_kind(p = 2_2, r = 2_2)
rr = ieee_selected_real_kind(r = 2_2, p = 2_2)

rr = ieee_selected_real_kind(2_2,     4_4)
rr = ieee_selected_real_kind(2_2,     r = 4_4)
rr = ieee_selected_real_kind(p = 2_2, r = 4_4)
rr = ieee_selected_real_kind(r = 4_4, p = 2_2)

rr = ieee_selected_real_kind(2_2,     8_8)
rr = ieee_selected_real_kind(2_2,     r = 8_8)
rr = ieee_selected_real_kind(p = 2_2, r = 8_8)
rr = ieee_selected_real_kind(r = 8_8, p = 2_2)

rr = ieee_selected_real_kind(4_4,     1)
rr = ieee_selected_real_kind(4_4,     r = 1)
rr = ieee_selected_real_kind(p = 4_4, r = 1)
rr = ieee_selected_real_kind(r = 1,   p = 4_4)

rr = ieee_selected_real_kind(4_4,     1_1)
rr = ieee_selected_real_kind(4_4,     r = 1_1)
rr = ieee_selected_real_kind(p = 4_4, r = 1_1)
rr = ieee_selected_real_kind(r = 1_1, p = 4_4)

rr = ieee_selected_real_kind(4_4,     2_2)
rr = ieee_selected_real_kind(4_4,     r = 2_2)
rr = ieee_selected_real_kind(p = 4_4, r = 2_2)
rr = ieee_selected_real_kind(r = 2_2, p = 4_4)

rr = ieee_selected_real_kind(4_4,     4_4)
rr = ieee_selected_real_kind(4_4,     r = 4_4)
rr = ieee_selected_real_kind(p = 4_4, r = 4_4)
rr = ieee_selected_real_kind(r = 4_4, p = 4_4)

rr = ieee_selected_real_kind(4_4,     8_8)
rr = ieee_selected_real_kind(4_4,     r = 8_8)
rr = ieee_selected_real_kind(p = 4_4, r = 8_8)
rr = ieee_selected_real_kind(r = 8_8, p = 4_4)

rr = ieee_selected_real_kind(8_8,     1)
rr = ieee_selected_real_kind(8_8,     r = 1)
rr = ieee_selected_real_kind(p = 8_8, r = 1)
rr = ieee_selected_real_kind(r = 1,   p = 8_8)

rr = ieee_selected_real_kind(8_8,     1_1)
rr = ieee_selected_real_kind(8_8,     r = 1_1)
rr = ieee_selected_real_kind(p = 8_8, r = 1_1)
rr = ieee_selected_real_kind(r = 1_1, p = 8_8)

rr = ieee_selected_real_kind(8_8,     2_2)
rr = ieee_selected_real_kind(8_8,     r = 2_2)
rr = ieee_selected_real_kind(p = 8_8, r = 2_2)
rr = ieee_selected_real_kind(r = 2_2, p = 8_8)

rr = ieee_selected_real_kind(8_8,     4_4)
rr = ieee_selected_real_kind(8_8,     r = 4_4)
rr = ieee_selected_real_kind(p = 8_8, r = 4_4)
rr = ieee_selected_real_kind(r = 4_4, p = 8_8)

rr = ieee_selected_real_kind(8_8,     8_8)
rr = ieee_selected_real_kind(8_8,     r = 8_8)
rr = ieee_selected_real_kind(p = 8_8, r = 8_8)
rr = ieee_selected_real_kind(r = 8_8, p = 8_8)

rr = ieee_selected_real_kind(ia,     ib)
rr = ieee_selected_real_kind(ia,     r = ib)
rr = ieee_selected_real_kind(p = ia, r = ib)
rr = ieee_selected_real_kind(r = ib, p = ia)

rr = ieee_selected_real_kind(ia,      i1b)
rr = ieee_selected_real_kind(ia,      r = i1b)
rr = ieee_selected_real_kind(p = ia,  r = i1b)
rr = ieee_selected_real_kind(r = i1b, p = ia)

rr = ieee_selected_real_kind(ia,      i2b)
rr = ieee_selected_real_kind(ia,      r = i2b)
rr = ieee_selected_real_kind(p = ia,  r = i2b)
rr = ieee_selected_real_kind(r = i2b, p = ia)

rr = ieee_selected_real_kind(ia,      i4b)
rr = ieee_selected_real_kind(ia,      r = i4b)
rr = ieee_selected_real_kind(p = ia,  r = i4b)
rr = ieee_selected_real_kind(r = i4b, p = ia)

rr = ieee_selected_real_kind(ia,      i8b)
rr = ieee_selected_real_kind(ia,      r = i8b)
rr = ieee_selected_real_kind(p = ia,  r = i8b)
rr = ieee_selected_real_kind(r = i8b, p = ia)

rr = ieee_selected_real_kind(i1a,     ib)
rr = ieee_selected_real_kind(i1a,     r = ib)
rr = ieee_selected_real_kind(p = i1a, r = ib)
rr = ieee_selected_real_kind(r = ib,  p = i1a)

rr = ieee_selected_real_kind(i1a,     i1b)
rr = ieee_selected_real_kind(i1a,     r = i1b)
rr = ieee_selected_real_kind(p = i1a, r = i1b)
rr = ieee_selected_real_kind(r = i1b, p = i1a)

rr = ieee_selected_real_kind(i1a,     i2b)
rr = ieee_selected_real_kind(i1a,     r = i2b)
rr = ieee_selected_real_kind(p = i1a, r = i2b)
rr = ieee_selected_real_kind(r = i2b, p = i1a)

rr = ieee_selected_real_kind(i1a,     i4b)
rr = ieee_selected_real_kind(i1a,     r = i4b)
rr = ieee_selected_real_kind(p = i1a, r = i4b)
rr = ieee_selected_real_kind(r = i4b, p = i1a)

rr = ieee_selected_real_kind(i1a,     i8b)
rr = ieee_selected_real_kind(i1a,     r = i8b)
rr = ieee_selected_real_kind(p = i1a, r = i8b)
rr = ieee_selected_real_kind(r = i8b, p = i1a)

rr = ieee_selected_real_kind(i2a,     ib)
rr = ieee_selected_real_kind(i2a,     r = ib)
rr = ieee_selected_real_kind(p = i2a, r = ib)
rr = ieee_selected_real_kind(r = ib,  p = i2a)

rr = ieee_selected_real_kind(i2a,     i1b)
rr = ieee_selected_real_kind(i2a,     r = i1b)
rr = ieee_selected_real_kind(p = i2a, r = i1b)
rr = ieee_selected_real_kind(r = i1b, p = i2a)

rr = ieee_selected_real_kind(i2a,     i2b)
rr = ieee_selected_real_kind(i2a,     r = i2b)
rr = ieee_selected_real_kind(p = i2a, r = i2b)
rr = ieee_selected_real_kind(r = i2b, p = i2a)

rr = ieee_selected_real_kind(i2a,     i4b)
rr = ieee_selected_real_kind(i2a,     r = i4b)
rr = ieee_selected_real_kind(p = i2a, r = i4b)
rr = ieee_selected_real_kind(r = i4b, p = i2a)

rr = ieee_selected_real_kind(i2a,     i8b)
rr = ieee_selected_real_kind(i2a,     r = i8b)
rr = ieee_selected_real_kind(p = i2a, r = i8b)
rr = ieee_selected_real_kind(r = i8b, p = i2a)

rr = ieee_selected_real_kind(i4a,     ib)
rr = ieee_selected_real_kind(i4a,     r = ib)
rr = ieee_selected_real_kind(p = i4a, r = ib)
rr = ieee_selected_real_kind(r = ib,  p = i4a)

rr = ieee_selected_real_kind(i4a,     i1b)
rr = ieee_selected_real_kind(i4a,     r = i1b)
rr = ieee_selected_real_kind(p = i4a, r = i1b)
rr = ieee_selected_real_kind(r = i1b, p = i4a)

rr = ieee_selected_real_kind(i4a,     i2b)
rr = ieee_selected_real_kind(i4a,     r = i2b)
rr = ieee_selected_real_kind(p = i4a, r = i2b)
rr = ieee_selected_real_kind(r = i2b, p = i4a)

rr = ieee_selected_real_kind(i4a,     i4b)
rr = ieee_selected_real_kind(i4a,     r = i4b)
rr = ieee_selected_real_kind(p = i4a, r = i4b)
rr = ieee_selected_real_kind(r = i4b, p = i4a)

rr = ieee_selected_real_kind(i4a,     i8b)
rr = ieee_selected_real_kind(i4a,     r = i8b)
rr = ieee_selected_real_kind(p = i4a, r = i8b)
rr = ieee_selected_real_kind(r = i8b, p = i4a)

rr = ieee_selected_real_kind(i8a,     ib)
rr = ieee_selected_real_kind(i8a,     r = ib)
rr = ieee_selected_real_kind(p = i8a, r = ib)
rr = ieee_selected_real_kind(r = ib,  p = i8a)

rr = ieee_selected_real_kind(i8a,     i1b)
rr = ieee_selected_real_kind(i8a,     r = i1b)
rr = ieee_selected_real_kind(p = i8a, r = i1b)
rr = ieee_selected_real_kind(r = i1b, p = i8a)

rr = ieee_selected_real_kind(i8a,     i2b)
rr = ieee_selected_real_kind(i8a,     r = i2b)
rr = ieee_selected_real_kind(p = i8a, r = i2b)
rr = ieee_selected_real_kind(r = i2b, p = i8a)

rr = ieee_selected_real_kind(i8a,     i4b)
rr = ieee_selected_real_kind(i8a,     r = i4b)
rr = ieee_selected_real_kind(p = i8a, r = i4b)
rr = ieee_selected_real_kind(r = i4b, p = i8a)

rr = ieee_selected_real_kind(i8a,     i8b)
rr = ieee_selected_real_kind(i8a,     r = i8b)
rr = ieee_selected_real_kind(p = i8a, r = i8b)
rr = ieee_selected_real_kind(r = i8b, p = i8a)

print *,'pass'

end
