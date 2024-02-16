
type ty1
     complex::xx
end type

type(ty1)::obj
obj%xx=(7,8)
associate(asc=>obj)
    if(asc%xx%im .ne. 8)print*,"101"
    if(asc%xx%re .ne. 7)print*,"102"
    print*,"pass"
end associate
end

