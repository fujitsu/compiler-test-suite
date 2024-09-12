program test

type ty
  integer :: x
end type ty

type,extends(ty) :: ty1
  integer :: y
end type ty1

type,extends(ty1) :: ty2
  integer :: z
end type ty2

class (*),POINTER :: ptr1(:)
type (ty),TARGET :: tar1(3)
class(*),POINTER::ptr2(:)
INTEGER,TARGET::tar2(3)

tar1%x=12
tar1(3)%x=15
tar2= 11
ptr1=>tar1
ptr2=>tar2
select type (ptr1)
  type is (ty1)
    print*,108
  class default 
    select type (ptr2)
      type is(REAL)
        print*,109
      type is(ty)
        print*,110
      type is (INTEGER)
        ptr2(1)=3
        ptr2(2)=4
        if(ptr2(1) .EQ. 3 .and. ptr2(2) .EQ. 4) then
          print*,'pass'
        else
          print*,111
        endif
      class is (ty1)
        print*,112
    end select
end select
end program test

