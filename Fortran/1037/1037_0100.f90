call s1
print *,'pass'
end
subroutine s1
character*6,target:: t='123456'
type u
 sequence
 character*6 tt
end type
type(u)::vv
vv%tt=t
call x(vv,vv,vv)
if (vv%tt/='112123')print *,'error' 
contains
subroutine x(z1,z2,z3)
type(u),target:: z1,z2,z3
z1%tt(2:)=z2%tt(1:2)//z3%tt(1:3)
end subroutine
end
