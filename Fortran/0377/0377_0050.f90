if (kind(int(1, kind(int8(1_1)))).ne.kind(int(2, kind(int8(2_2))))) print *,'error 01'
if (kind(int(3, kind(int8(4_4)))).ne.kind(int(4, kind(int8(8_8))))) print *,'error 02'
if (kind(int8(1_1)).ne.kind(int8(2_2))) print *,'error 03'
if (kind(int8(4_4)).ne.kind(int8(8_8))) print *,'error 04'
if (kind(int(1, kind(int8(1_1)))).ne.kind(int8(1_1))) print *,'error 05'
if (kind(int(2, kind(int8(2_2)))).ne.kind(int8(2_2))) print *,'error 06'
if (kind(int(3, kind(int8(4_4)))).ne.kind(int8(4_4))) print *,'error 07'
if (kind(int(4, kind(int8(8_8)))).ne.kind(int8(8_8))) print *,'error 08'


print *,'pass'

end
