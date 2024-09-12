program test
type ty
  integer :: x=1
end type ty
type,extends(ty) :: ty1
  integer :: y=1
end type ty1
type,extends(ty1) :: ty2
  integer :: z=1
end type ty2

type (ty) :: tgt(2:20)
type (ty2),target :: tgt2(4:22)
class (*), allocatable :: p1(:)
class (*), pointer :: p2(:)
tgt%x = 11
tgt2%x = 12
tgt2%y = 13
tgt2%z = 14
tgt(2:20:2)%x = 11
tgt2(4:22:2)%x = 12
tgt2(4:22:2)%y = 13
tgt2(4:22:2)%z = 14

allocate(p1,source=tgt)
p2 => tgt2

select type (A1=>p1(::2))
 class default
 select type (A2=>p2(::2))
   type is (ty2)
   if(all(A2%z /=14)) then 
      print*,214
   else 
      print*,'pass'
   endif
   class is (ty)
     print*,215
 end select

 type is (ty1)
   print*,216
 end select

end program test
