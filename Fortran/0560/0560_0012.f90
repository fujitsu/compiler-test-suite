type ty(k1,k2)
integer,kind::k1,k2
integer(kind=k1*k2)::ii=4
character(len=k2,kind=kind(k2)-(k1+1))::ch
end type
 
type(ty(2,4))::obj

if(len(obj%ch) /= 4)print*,'102',len(obj%ch)
if(kind(obj%ch) /= 1) print*,'103',kind(obj%ch)
 print*,'pass'
 end

