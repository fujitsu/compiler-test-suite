type ty(k1,k2)
    integer,kind::k1,k2
    integer(kind=k1*k2)::ii=4
    character(len=k2,kind=kind(k2)-(k1+1))::ch
end type

type,extends(ty):: ty2(k)
    integer,kind::k
end type 

type(ty2(k1=2,k2=2,k=4))::obj2

if(kind(obj2%ch).EQ.1)then
print*,'PASS'
else
print*,'FAIL'
end if

end
