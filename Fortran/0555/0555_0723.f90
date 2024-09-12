program test
      type ty
        integer :: x
      end type ty
      type,extends(ty) :: ty1
        integer :: y
      end type ty1
 
      type (ty), target :: tgt1(2)
      type (ty1), target :: tgt2(3)
      class (ty), pointer :: p1(:), p2(:)
      tgt1%x = 1
      tgt1(2)%x = 2
      tgt2%x = 3
      tgt2(3)%x = 4
      p1 => tgt1
      p2 => tgt2
      select type (p1)
      end select
      if(p1(2)%x /=2) then 
        print*,214
      else 
        print*,'pass'
      endif
end program test
