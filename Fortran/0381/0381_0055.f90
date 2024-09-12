subroutine s1(n)
type ttt
integer:: z1
character(:),allocatable:: name(:)
integer:: z2
end type
type(ttt)::sss(1)
k=1
sss(1)=ttt(2,name=['aa'(:n)],z2=3)
if (sss(1)%z1/=2)print *,15
if (sss(1)%z2/=3)print *,16
if (sss(1)%name(1)(:)/='aa')print *,11
if (sss(k)%name(1)(:)/='aa')print *,12
if (sss(1)%name(k)(:)/='aa')print *,13
if (sss(k)%name(k)(:)/='aa')print *,14
end
subroutine s2(n)
type ttt
integer:: z1
character(:),pointer:: name(:)
integer:: z2
end type
type(ttt)::sss(1)
character(n),target::x(1)
x='aa'
k=1
sss(1)=ttt(2,name=x,z2=3)
if (sss(1)%name(1)(:)/='aa')print *,21
if (sss(k)%name(1)(:)/='aa')print *,22
if (sss(1)%name(k)(:)/='aa')print *,23
if (sss(k)%name(k)(:)/='aa')print *,24
if (sss(1)%z1/=2)print *,25
if (sss(1)%z2/=3)print *,26
end
subroutine s11(n)
type ttt
integer:: z1
character(:),allocatable:: name
integer:: z2
end type
character(n)::x
type(ttt)::sss(1)
x='aa'
k=1
sss(1)=ttt(2,name=x,z2=3)
if (sss(1)%z1/=2)print *,15
if (sss(1)%z2/=3)print *,16
if (sss(1)%name(:)/='aa')print *,13
if (sss(k)%name(:)/='aa')print *,14
end
subroutine s21(n)
type ttt
integer:: z1
character(:),pointer:: name
integer:: z2
end type
type(ttt)::sss(1)
character(n),target::x
x='aa'
k=1
sss(1)=ttt(2,name=x,z2=3)
if (sss(k)%name(:)/='aa')print *,22
if (sss(k)%name(:)/='aa')print *,24
if (sss(1)%z1/=2)print *,25
if (sss(1)%z2/=3)print *,26
end
n=2
call s1(n)
call s2(n)
call s11(n)
call s21(n)
print *,'pass'
end
