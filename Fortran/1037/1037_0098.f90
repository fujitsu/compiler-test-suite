call s1
print *,'pass'
end
subroutine s1
character*3,target:: t='123'
type u
 sequence
 character*3 tt
end type
type(u)::vv
vv%tt=t
call x(vv,vv)
if (vv%tt/='112')print *,'error' 
contains
subroutine x(z1,z2)
type u
 sequence
 character*3 tt
end type
type(u),target:: z1,z2
z1%tt(2:3)=z2%tt(1:2)
end subroutine
end
