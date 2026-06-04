type ty
 integer::aa(10)
end type

type(ty),asynchronous,pointer::obj
allocate(obj)
obj%aa =10

call sub(obj%aa)

print*,"pass"
contains
 subroutine sub(dmy)
 integer,volatile::dmy(10)
 if(any(dmy /= 10))print*,101
end subroutine

end
