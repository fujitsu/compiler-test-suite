subroutine s1
type ttt
integer:: z1
character(:),allocatable:: name(:)
integer:: z2
end type
type(ttt)::sss(1)
k=1
sss(1)=ttt(2,name=['aa'],z2=3)
if (sss(1)%z1/=2)print *,15
if (sss(1)%z2/=3)print *,16
if (sss(1)%name(1)/='aa')print *,11
if (sss(k)%name(1)/='aa')print *,12
if (sss(1)%name(k)/='aa')print *,13
if (sss(k)%name(k)/='aa')print *,14
end
subroutine s2
type ttt
integer:: z1
character(:),pointer:: name(:)
integer:: z2
end type
type(ttt)::sss(1)
character(2),target::x(1)='aa'
k=1
sss(1)=ttt(2,name=x,z2=3)
if (sss(1)%name(1)/='aa')print *,21
if (sss(k)%name(1)/='aa')print *,22
if (sss(1)%name(k)/='aa')print *,23
if (sss(k)%name(k)/='aa')print *,24
if (sss(1)%z1/=2)print *,25
if (sss(1)%z2/=3)print *,26
end
subroutine s11
type ttt
integer:: z1
character(:),allocatable:: name
integer:: z2
end type
type(ttt)::sss(1)
k=1
sss(1)=ttt(2,name='aa',z2=3)
if (sss(1)%z1/=2)print *,15
if (sss(1)%z2/=3)print *,16
if (sss(1)%name/='aa')print *,13
if (sss(k)%name/='aa')print *,14
end
subroutine s21
type ttt
integer:: z1
character(:),pointer:: name
integer:: z2
end type
type(ttt)::sss(1)
character(2),target::x='aa'
k=1
sss(1)=ttt(2,name=x,z2=3)
if (sss(k)%name/='aa')print *,22
if (sss(k)%name/='aa')print *,24
if (sss(1)%z1/=2)print *,25
if (sss(1)%z2/=3)print *,26
end
call s1
call s2
call s11
call s21
print *,'pass'
end
