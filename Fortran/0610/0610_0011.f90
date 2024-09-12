program test
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
      end select
      if(all(p1%x /=1)) then 
        print*,214
      else 
        print*,'pass'
      endif
end program test
