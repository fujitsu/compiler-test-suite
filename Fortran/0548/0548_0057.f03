call s1
call s2
print *,'pass'
end
subroutine s1
call s11(merge_bits(b'1101',18_1,22_1))
call s11(merge_bits(13_1,b'10010',22_1))
call s11(merge_bits(13_1,18_1,b'10110'))
call s11(merge_bits(o'15',18_1,22_1))
call s11(merge_bits(13_1,o'22',22_1))
call s11(merge_bits(13_1,18_1,o'26'))
call s11(merge_bits(z'd',18_1,22_1))
call s11(merge_bits(13_1,z'12',22_1))
call s11(merge_bits(13_1,18_1,z'16'))

call s12(merge_bits(b'1101',18_2,22_2))
call s12(merge_bits(13_2,b'10010',22_2))
call s12(merge_bits(13_2,18_2,b'10110'))
call s12(merge_bits(o'15',18_2,22_2))
call s12(merge_bits(13_2,o'22',22_2))
call s12(merge_bits(13_2,18_2,o'26'))
call s12(merge_bits(z'd',18_2,22_2))
call s12(merge_bits(13_2,z'12',22_2))
call s12(merge_bits(13_2,18_2,z'16'))

call s13(merge_bits(b'1101',18_4,22_4))
call s13(merge_bits(13_4,b'10010',22_4))
call s13(merge_bits(13_4,18_4,b'10110'))
call s13(merge_bits(o'15',18_4,22_4))
call s13(merge_bits(13_4,o'22',22_4))
call s13(merge_bits(13_4,18_4,o'26'))
call s13(merge_bits(z'd',18_4,22_4))
call s13(merge_bits(13_4,z'12',22_4))
call s13(merge_bits(13_4,18_4,z'16'))

call s14(merge_bits(b'1101',18_8,22_8))
call s14(merge_bits(13_8,b'10010',22_8))
call s14(merge_bits(13_8,18_8,b'10110'))
call s14(merge_bits(o'15',18_8,22_8))
call s14(merge_bits(13_8,o'22',22_8))
call s14(merge_bits(13_8,18_8,o'26'))
call s14(merge_bits(z'd',18_8,22_8))
call s14(merge_bits(13_8,z'12',22_8))
call s14(merge_bits(13_8,18_8,z'16'))

contains
subroutine s11(a)
integer(1)::a
if(a/=4_1) print *,'err',a
end subroutine
subroutine s12(a)
integer(2)::a
if(a/=4_2) print *,'err',a
end subroutine
subroutine s13(a)
integer(4)::a
if(a/=4_4) print *,'err',a
end subroutine
subroutine s14(a)
integer(8)::a
if(a/=4_8) print *,'err',a
end subroutine
end
subroutine s2
call s21(merge_bits(b'1101',[18_1],22_1))
call s21(merge_bits(13_1,b'10010',[22_1]))
call s21(merge_bits([13_1],18_1,b'10110'))
call s21(merge_bits(o'15',[18_1],22_1))
call s21(merge_bits(13_1,o'22',[22_1]))
call s21(merge_bits([13_1],18_1,o'26'))
call s21(merge_bits(z'd',[18_1],22_1))
call s21(merge_bits(13_1,z'12',[22_1]))
call s21(merge_bits([13_1],18_1,z'16'))

call s22(merge_bits(b'1101',[18_2],22_2))
call s22(merge_bits(13_2,b'10010',[22_2]))
call s22(merge_bits([13_2],18_2,b'10110'))
call s22(merge_bits(o'15',[18_2],22_2))
call s22(merge_bits(13_2,o'22',[22_2]))
call s22(merge_bits([13_2],18_2,o'26'))
call s22(merge_bits(z'd',[18_2],22_2))
call s22(merge_bits(13_2,z'12',[22_2]))
call s22(merge_bits([13_2],18_2,z'16'))

call s23(merge_bits(b'1101',[18_4],22_4))
call s23(merge_bits(13_4,b'10010',[22_4]))
call s23(merge_bits([13_4],18_4,b'10110'))
call s23(merge_bits(o'15',[18_4],22_4))
call s23(merge_bits(13_4,o'22',[22_4]))
call s23(merge_bits([13_4],18_4,o'26'))
call s23(merge_bits(z'd',[18_4],22_4))
call s23(merge_bits(13_4,z'12',[22_4]))
call s23(merge_bits([13_4],18_4,z'16'))

call s24(merge_bits(b'1101',[18_8],22_8))
call s24(merge_bits(13_8,b'10010',[22_8]))
call s24(merge_bits([13_8],18_8,b'10110'))
call s24(merge_bits(o'15',[18_8],22_8))
call s24(merge_bits(13_8,o'22',[22_8]))
call s24(merge_bits([13_8],18_8,o'26'))
call s24(merge_bits(z'd',[18_8],22_8))
call s24(merge_bits(13_8,z'12',[22_8]))
call s24(merge_bits([13_8],18_8,z'16'))

contains
subroutine s21(a)
integer(1)::a(:)
if(any(a/=[4_1])) print *,'err',a
end subroutine
subroutine s22(a)
integer(2)::a(:)
if(any(a/=[4_2])) print *,'err',a
end subroutine
subroutine s23(a)
integer(4)::a(:)
if(any(a/=[4_4])) print *,'err',a
end subroutine
subroutine s24(a)
integer(8)::a(:)
if(any(a/=[4_8])) print *,'err',a
end subroutine
end
