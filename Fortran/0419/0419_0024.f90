call s1
call s2
print *,'pass'
end
subroutine s1
integer(1),allocatable::i1
integer(2),allocatable::i2
integer(4),allocatable::i4
integer(8),allocatable::i8
i1=(1)
i2=-(-2)
i4=((4))
i8=-1+(9)
if(i1/=1) print *,'err1'
if(i2/=2) print *,'err2'
if(i4/=4) print *,'err3'
if(i8/=8) print *,'err4'
end
subroutine s2
integer(1),allocatable::i1(:)
integer(2),allocatable::i2(:)
integer(4),allocatable::i4(:)
integer(8),allocatable::i8(:)
i1=[(1)]
i2=[-(-2)]
i4=[((4))]
i8=[-1+(9)]
if(any(i1/=[1])) print *,'err1'
if(any(i2/=[2])) print *,'err2'
if(any(i4/=[4])) print *,'err3'
if(any(i8/=[8])) print *,'err4'
end
