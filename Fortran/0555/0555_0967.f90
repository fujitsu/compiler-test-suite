program main

type ty
 integer::i
end type

type con
 class(ty),allocatable::o1
 type(ty),allocatable::o2
 class(*),allocatable::o3
end type

type(con)::obj

allocate(obj%o1)
allocate(obj%o2)
allocate(obj%o3,source=obj%o2)
deallocate(obj%o3)
allocate(obj%o3,source=obj%o1)
print*,'PASS'
end
