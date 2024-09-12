program test
      type ty
        integer :: x
      end type ty
      type,extends(ty) :: ty1
        integer :: y
      end type ty1
 
      type (ty), target :: tgt1
      type (ty1), target :: tgt2
      class (ty), pointer :: p1, p2
      tgt1%x = 1
      tgt2%x = 2
      p1 => tgt1
      p2 => tgt2
      select type (p1)
      end select
      if(p1%x /=1) then 
        print*,214
      else 
        print*,'pass'
      endif
end program test
