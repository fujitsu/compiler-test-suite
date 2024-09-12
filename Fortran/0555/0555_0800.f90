program main
type ty
integer :: ii=10
class(*),pointer :: ptr
END TYPE ty

TYPE,EXTENDS(TY):: TY2
class(ty),pointer :: ptr2=>NULL()
END TYPE ty2

TYPE,EXTENDS(TY2):: TY3
class(ty2),pointer :: ptr3=>NULL()
END TYPE ty3

type point
type(ty3):: obj
end type point


type(point):: obj_2
class(ty),pointer :: obj_3=>NULL()

if (SAME_type_AS(obj_3,obj_2%obj%ptr2) .neqv. .TRUE.)then
print *,201
else
print *,"pass"
endif

allocate(obj_2%obj%ptr2)
obj_3=> obj_2%obj%ptr2

select type(obj_3)
  TYPE IS(TY)
  print *,"pass"
  TYPE IS(ty2)
  print *,201
  CLASS IS(TY)
  print *,202
end select

end program
