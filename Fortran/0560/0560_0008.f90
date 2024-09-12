type ty(k1,k2)
    integer,kind::k1,k2
    integer(kind=k1*k2)::ii=4
    character(len=k2+k1)::ch
end type
type(ty(2,4))::obj
if(len(obj%ch).EQ.6)then
print*,'PASS'
else
print*,'FAIL'
end if

end

