type ty(k1,k2)
  integer,kind :: k1=2
  integer,kind :: k2
  integer :: arr(k1,k2) 
end type

type(ty(k2=2))::obj 
obj%arr=50
if(SIZE(obj%arr)==4)then
print*,'PASS'
else
print*,'ERROR'
end if

end program


