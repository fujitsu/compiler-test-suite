program main
type ty
integer :: ii=10
class(*),pointer :: ptr
END TYPE ty

TYPE,EXTENDS(TY):: TY2
class(ty),pointer :: ptr2=>NULL()
END TYPE ty2

TYPE,EXTENDS(TY2):: TY3
class(ty2),pointer :: ptr3
END TYPE ty3

type point
type(ty3):: obj
end type point


type(point):: obj_2(10)
class(ty),pointer :: obj_3=>NULL()


if (SAME_type_AS(obj_3,obj_2(1)%obj%ptr2) .eqv. .TRUE.)then
print *,"pass"
else
print *,201
endif

allocate (ty3 ::obj_2(2)%obj%ptr2 )

obj_3=> obj_2(2)%obj%ptr2

select type(obj_3)
  TYPE IS(TY)
  print *,404
  TYPE IS(ty2)
  print *,303
  CLASS IS(TY)
  print *,"paSS"
end select
end program
