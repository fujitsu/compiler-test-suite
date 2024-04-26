type ty
integer,allocatable :: m(:)
end type

type(ty) :: obj

allocate(obj%m(3))

obj%m = 10

a1:associate(a=>(obj%m(1) * obj%m(1)))
 a2: associate(c=>(obj%m(2) * obj%m(2)))
  obj%m = 11
  goto 100
 end associate a2

 obj%m = 3
 100 if(all(obj%m /= 11)) print*, 101

 a3: associate(b=>(obj%m(3) * obj%m(3)))
  obj%m = 12
  exit a1
 end associate a3

 obj%m = 13
end associate a1

if(all(obj%m /= 12)) print*, 102
print*,"PASS"
end
