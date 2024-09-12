call s1
call s2
print *,'pass'
contains
subroutine s1
if(leadz(1_1)/=7) print *,'err1'
if(leadz(1_2)/=15) print *,'err2'
if(leadz(1_4)/=31) print *,'err3'
if(leadz(1_8)/=63) print *,'err4'
if(leadz(i=1_1)/=7) print *,'err5'
if(leadz(i=1_2)/=15) print *,'err6'
if(leadz(I=1_4)/=31) print *,'err7'
if(leadz(I=1_8)/=63) print *,'err8'
if(kind(leadz(1_1))/=4_4) print *,'err9'
if(kind(leadz(1_2))/=4_4) print *,'err10'
if(kind(leadz(1_4))/=4_4) print *,'err11'
if(kind(leadz(1_8))/=4_4) print *,'err12'
end subroutine
subroutine s2
integer(1)::i1(3)
integer(2)::i2(3)
integer(4)::i4(3)
integer(8)::i8(3)
i1=[111,11,1]
i2=[111,11,1]
i4=[111,11,1]
i8=[111,11,1]
if(any(leadz(i1)/=[1,4,7])) print *,'err11'
if(any(leadz(i2)/=[9,12,15])) print *,'err12'
if(any(leadz(i4)/=[25,28,31])) print *,'err13'
if(any(leadz(i8)/=[57,60,63])) print *,'err14'
end subroutine

end
