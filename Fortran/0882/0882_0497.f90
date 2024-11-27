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

type (ty) :: tgt(4)
type (ty2),target :: tgt2
class (ty), allocatable :: p1(:)
class (ty), pointer :: p2
type(ty),ALLOCATABLE::obj

tgt%x = 1
tgt(4)%x = 2
tgt2%x = 3

allocate(p1,source=tgt)
p2 => tgt2
select type (p2)
  class is(ty1)
    select type (p1)
      type is (ty2)
        print*,101
      type is (ty)
        allocate(obj)
        obj%x=5
        p1(2)=obj
        if(p1(2)%x == 5 .and. p1(4)%x == 2) then 
          print*,'pass'
        else
          print*,102
        endif
    end select
  type is (ty1)
    p2%x=3
    print*,103
end select
end program test
