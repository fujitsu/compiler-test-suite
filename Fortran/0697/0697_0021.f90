call s1
call s2
print *,'pass'
contains
subroutine s1
character(len=0)::ch
call sub1(ch)
end subroutine
subroutine sub1(a)
character(*)::a
if(sizeof(a)/=0) print *,'err1'
end subroutine
subroutine s2
integer(1),parameter::pi1=sizeof(1_1+1_1)
integer(2),parameter::pi2=sizeof(1_2*1_2)
integer(4),parameter::pi4=sizeof(1**1)
integer(8),parameter::pi8=sizeof(1_8-1_8)
integer(1)::i1
integer(2)::i2
integer(4)::i4
integer(8)::i8
i1=1
i2=1
i4=1
i8=1
if(pi1/=sizeof(i1+i1)) print *,'err1'
if(pi2/=sizeof(i2*i2)) print *,'err2'
if(pi4/=sizeof(i4**i4)) print *,'err3'
if(pi8/=sizeof(i8-i8)) print *,'err4'
end subroutine
end
