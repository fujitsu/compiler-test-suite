type ty(k1,k2)
   integer,kind::k1,k2
   integer(kind=k1*k2)::ii=4
    character(kind=kind(k2)-(k1+1))::ch
end type

type(ty(2,4))::obj

if(kind(obj%ch).EQ. 1)then
print*,'PASS'
else
print*,'FAIL'
end if

end

