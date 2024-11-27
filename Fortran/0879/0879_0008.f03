integer(1),parameter::i1=-128_1
integer(2),parameter::i2=-32768_2
integer(4),parameter::i4=-2147483648_4
integer(8),parameter::i8=-9223372036854775808_8

print *,maskr(-128_1)
print *,maskr(-32768_2)
print *,maskr(-2147483648_4)
print *,maskr(-9223372036854775808_8)
print *,maskr(i1)
print *,maskr(i2)
print *,maskr(i4)
print *,maskr(i8)
end

