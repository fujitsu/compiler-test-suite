integer(1),parameter::i1=-128_1
integer(2),parameter::i2=-32768_2
integer(4),parameter::i4=-2147483648_4
integer(8),parameter::i8=-9223372036854775808_8

print *,maskl(-128_1)
print *,maskl(-32768_2)
print *,maskl(-2147483648_4)
print *,maskl(-9223372036854775808_8)
print *,maskl(i1)
print *,maskl(i2)
print *,maskl(i4)
print *,maskl(i8)
end

