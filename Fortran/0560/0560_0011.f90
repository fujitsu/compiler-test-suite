type ty(k1,k2)
    integer,kind::k1,k2
    integer(kind=k1*k2)::ii=4
    character(len=k2,kind=kind(k2)-(k1+1))::ch
end type

type ty2(k)
    integer,kind::k
    type(ty(k1=k,k2=4))::nobj 
end type 

type(ty2(k=2))::obj

if(kind(obj%nobj%ch).EQ.1)then
print*,'PASS'
else
print*,'FAIL'
end if

end
