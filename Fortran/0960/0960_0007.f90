Program main
TYPE ty
class(ty),pointer :: jj(:)=>NULL()
END TYPE ty

TYPE,EXTENDS(ty):: ty1
type(ty):: bobj
END type ty1

type,EXTENDS(ty1):: ty2
type(ty1):: aobj1
end type

class(ty),pointer :: obj2
type(ty) :: tar
allocate(ty2::obj2)

SELECT TYPE(obj2)
TYPE IS(ty2)
if(SAME_type_As(obj2%aobj1%bobj%jj,tar) .neqv. .TRUE.) then
  print *,"FAIL1"
else 
  print *,"PASS1"
endif
END SELECT

deallocate(obj2)
allocate(ty1::obj2)


SELECT TYPE(obj2)
TYPE IS(ty1)
if(SAME_type_As(obj2%bobj%jj,tar) .neqv. .TRUE.) then
  print *,"FAIL2"
else
  print *,"PASS2"
endif
END SELECT

deallocate(obj2)
allocate(obj2)

SELECT TYPE(obj2)
TYPE IS(ty)
if(SAME_type_As(obj2%jj,tar) .neqv. .TRUE.) then
  print *,"FAIL3"
else
  print *,"PASS3"
endif
END SELECT
End Program
