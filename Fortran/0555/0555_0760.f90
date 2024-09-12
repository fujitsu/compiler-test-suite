program test
      type ty
        integer :: x
      end type ty

      type,extends(ty) :: ty1
        integer :: y
      end type ty1
 
      type (ty), target :: tgt1(3)
      class (*), pointer :: ptr(:)
      tgt1(3)%x = 10
      ptr => tgt1
      select type (ptr)
      end select
      if(associated(ptr)) then
        print*,'pass'
      else
        print*,113
      endif
end program 
