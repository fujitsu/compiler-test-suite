call s1
call s2
call s3
call s4
call s5
call s6
call s7
call s8
print *,'pass'
end
subroutine s1
integer(1)::i1,i11(8)
i1=1
do j=1,8
i11(j)=j
if(ishft(i1,i11(j))/=shiftl(i1,i11(j))) print *,'err1'
enddo 
end
subroutine s2
integer(2)::i2,i22(16)
i2=1
do j=1,16
i22(j)=j
if(ishft(i2,i22(j))/=shiftl(i2,i22(j))) print *,'err2'
enddo 
end
subroutine s3
integer(4)::i4,i44(32)
i4=1
do j=1,32
i44(j)=j
if(ishft(i4,i44(j))/=shiftl(i4,i44(j))) print *,'err3'
enddo 
end
subroutine s4
integer(8)::i8,i88(64)
i8=1
do j=1,64
i88(j)=j
if(ishft(i8,i88(j))/=shiftl(i8,i88(j))) print *,'err4'
enddo 
end
subroutine s5
integer(1)::i1(8),i11
i11=1
do j=-8,-1
i1(-(j))=j
if(ishft(i1(-(j)),i11)/=shiftl(i1(-(j)),i11)) print *,'err5'
enddo 
end
subroutine s6
integer(2)::i2(16),i22
i22=1
do j=-16,-1
i2(-(j))=j
if(ishft(i2(-(j)),i22)/=shiftl(i2(-(j)),i22)) print *,'err6'
enddo 
end
subroutine s7
integer(4)::i4(32),i44
i44=1
do j=-32,-1
i4(-(j))=j
if(ishft(i4(-(j)),i44)/=shiftl(i4(-(j)),i44)) print *,'err7'
enddo 
end

subroutine s8
integer(8)::i8(64),i88
i88=1
do j=-64,-1
i8(-(j))=j
if(ishft(i8(-(j)),i88)/=shiftl(i8(-(j)),i88)) print *,'err8',j

enddo 
end
