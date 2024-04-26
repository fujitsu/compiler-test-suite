PROGRAM MAIN
IMPLICIT NONE
type,abstract :: ty
 character ,pointer :: ii(:)
end type

type,extends(ty) :: ty1
 character  :: jj(2)
end type
integer b
class(ty),allocatable :: obj(:)
type(ty1) :: obj2(2)
obj2(1)%jj='m'
allocate(obj,mold=obj2,stat=b)
select type(obj)
  type is (ty1)
  if(b .eq. 0 .AND. size(obj) .eq. 2 )then
  print*,'pass'
  else
  print*,101
  endif
end select
END PROGRAM
