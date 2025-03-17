call s1
print *,'pass'
end
subroutine s1
complex,target:: t(3)=(/(1,1),(2,2),(3,3)/)
type u
 sequence
 complex     tt(3)
end type
type(u)::vv
vv%tt=t
call x(vv,vv)
if (any(abs(vv%tt-(/(1,1),(1,1),(2,2)/))>0.001))print *,'error' 
contains
subroutine x(z1,z2)
type u
 sequence
 complex     tt(3)
end type
type(u),target:: z1,z2
z1%tt(2:3)=z2%tt(1:2)
end subroutine
end
