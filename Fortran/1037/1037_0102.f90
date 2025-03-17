call s1
print *,'pass'
end
subroutine s1
integer,target:: t(3)=(/1,2,3/)
type u
 sequence
 integer     tt(3)
end type
type(u)::vv
vv%tt=t
call x(vv,vv)
if (any(vv%tt/=(/1,1,2/)))print *,'error' 
contains
subroutine x(z1,z2)
type u
 sequence
 integer     tt(3)
end type
type(u),target:: z1,z2
z1%tt(2:3)=z2%tt(1:2)
end subroutine
end
