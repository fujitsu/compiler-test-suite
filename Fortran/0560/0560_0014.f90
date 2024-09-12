integer :: mm= 4
type ty(k1,k2)
integer,kind::k1,k2
integer(kind=k1*k2)::ii=kind(mm)
character(len=4, kind=8-(k1+k2+1))::ch
end type

type(ty(2,4))::obj

if(kind(obj%ch) /= 1) print*,'103',kind(obj%ch)
if(obj%ii /= 4) print*,'104'
print*,'pass'
end

