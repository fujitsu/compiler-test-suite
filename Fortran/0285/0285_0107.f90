program main

type ty
 integer::i
end type

type con
 class(ty),pointer::o1
 type(ty),pointer::o2
 class(*),pointer::o3
end type

type(con) :: obj
allocate(obj%o1)
allocate(obj%o2)

obj%o3=>obj%o1
obj%o3=>obj%o2
associate(asc => obj%o1)
asc%i=1
end associate
nullify(obj%o3)
print*,'PASS'
end
