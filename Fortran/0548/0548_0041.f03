call s1
call s2
print *,'pass'
end
subroutine s1
integer(1)::i1
integer(2)::i2
integer(4)::i4
integer(8)::i8
i1=0
i2=0
i4=0
i8=0
if(popcnt(poppar(i1))/=poppar(i1)) print *,'err1'
if(popcnt(poppar(i2))/=poppar(i2)) print *,'err2'
if(popcnt(poppar(i4))/=poppar(i4)) print *,'err3'
if(popcnt(poppar(i8))/=poppar(i8)) print *,'err4'
i1=-1
i2=-1
i4=-1
i8=-1
if(popcnt(poppar(i1))/=poppar(i1)) print *,'err5'
if(popcnt(poppar(i2))/=poppar(i2)) print *,'err6'
if(popcnt(poppar(i4))/=poppar(i4)) print *,'err7'
if(popcnt(poppar(i8))/=poppar(i8)) print *,'err8'
if(kind(poppar(i1))/=4) print *,'err10'
if(kind(poppar(i2))/=4) print *,'err11'
if(kind(poppar(i4))/=4) print *,'err12'
if(kind(poppar(i8))/=4) print *,'err13'
if(kind(popcnt(i1))/=4) print *,'err14'
if(kind(popcnt(i2))/=4) print *,'err15'
if(kind(popcnt(i4))/=4) print *,'err16'
if(kind(popcnt(i8))/=4) print *,'err17'
end
subroutine s2
integer(1)::i1(30),j1
integer(2)::i2(30),j2
integer(4)::i4(30),j4
integer(8)::i8(30),j8
i1=[(j1,j1=1_1,30_1)]
i2=[(j2,j2=1_2,30_2)]
i4=[(j4,j4=1,30)]
i8=[(j8,j8=1_8,30_8)]
if(any(popcnt(poppar(i1))/=poppar(i1))) print *,'err1'
if(any(popcnt(poppar(i2))/=poppar(i2))) print *,'err2'
if(any(popcnt(poppar(i4))/=poppar(i4))) print *,'err3'
if(any(popcnt(poppar(i8))/=poppar(i8))) print *,'err4'
if(any(popcnt(i=poppar(i=i1))/=poppar(i=i1))) print *,'err5'
if(any(popcnt(i=poppar(i=i2))/=poppar(i=i2))) print *,'err6'
if(any(popcnt(i=poppar(i=i4))/=poppar(i=i4))) print *,'err7'
if(any(popcnt(i=poppar(i=i8))/=poppar(i=i8))) print *,'err8'
end
