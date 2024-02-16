integer,parameter::x(3,3) = reshape([1,9,45,45,5,6,7,8,9],[3,3])
type ty
logical::l
end type
type(ty),parameter::obj = ty(.true.)
integer,parameter::k(3) = maxloc(x,dim=1,back= obj%l)

if(any(k.ne.[2,1,1]))then
 print*,"PASS"
else
 print*,"FAIL"
!print*,k
end if
end

