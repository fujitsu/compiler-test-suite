type ty
 integer :: x
end type ty

type,extends(ty) :: ty1
 integer :: y
end type ty1
 
type (ty), target :: tgt1(2:7)
class (ty), pointer :: p1(:)
tgt1%x = 1
p1 => tgt1
select type (A=>p1(:5))
  type is (ty)
   if(all(A%x ==1)) then 
    print*,'PASS'
   else 
    print*,'FAIL'
  endif
end select
end
