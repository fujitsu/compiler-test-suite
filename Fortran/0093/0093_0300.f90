type ty
    complex:: pp(10,10)
end type

type ty1
     type(ty)::xx
end type

type(ty1)::obj
real ::r(5,7)
obj%xx%pp=(5,6)
associate(asc=>obj%xx%pp(3:7,2:8))
    r=asc%im
    if(any(r .ne. 6))print*,"101"
    print*,"Pass"
end associate
end

