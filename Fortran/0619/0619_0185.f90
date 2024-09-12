subroutine s1
type b
 integer::b1
end type
type,extends(b)::e
 integer::e1
end type
type,extends(e)::f
 integer::f1
end type
type(f),parameter::fp=f(e(b(3),2),1)
integer,parameter::kb1=fp%b1
integer,parameter::ke1=fp%e1
integer,parameter::kf1=fp%f1
type(f)::fv
fv=f(f1=1,e1=2,b1=3)
if (kf1/=1)print *,101
if (ke1/=2)print *,102
if (kb1/=3)print *,103
write(11,*)fp
write(11,*)fv
nf1=fv%f1
ne1=fv%e1
nb1=fv%b1
if (nf1/=1)print *,201
if (ne1/=2)print *,202
if (nb1/=3)print *,203
call ss
end
call s1
print *,'pass'
end
subroutine ss
rewind 11
read(11,*) n1,n2,n3
if (any([n1,n2,n3]/=[3,2,1]))print *,301,n1,n2,n3
end
 
