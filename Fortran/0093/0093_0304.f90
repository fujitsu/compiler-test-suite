type ty
    complex:: pp(10,10)
end type

type ty1
     type(ty)::xx
end type

type(ty1)::obj(9,9)
real ::r(5,7)
obj%xx=ty((5,6))
associate(asc=>obj(9,9))
    r=obj(1,1)%xx%pp(3:7,2:8)%re
    if(any(r .ne. 5))print*,"101"
    print*,"pass"
end associate
end

