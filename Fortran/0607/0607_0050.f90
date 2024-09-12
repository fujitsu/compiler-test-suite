Module Mod
 TYPE base_type
  integer :: i1=1
 END TYPE

 TYPE,extends(base_type) :: extd_type
  integer :: i2=2
 END TYPE

END MODULE


use Mod
type (extd_type), target :: tgt

type total
 class (base_type), pointer :: ptr
end type

type(total) :: objj

tgt%i1 = 12
tgt%i2 = 22
objj%ptr => tgt
select type (A=>objj%ptr)
 class default
    select case(A%i1)
      case(12)
        print*,'PASS'
    end select
end select
end
