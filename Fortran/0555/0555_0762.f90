program test
      type ty
        integer :: x=1
      end type ty

      type,extends(ty) :: ty1
        integer :: y=2
      end type ty1

      type,extends(ty1) :: ty2
        integer :: z=3
      end type ty2
 
      type (ty) :: tgt(7)
      class (*), allocatable :: p1(:)
      class(ty),POINTER::ptr(:)
      type(ty2),TARGET::tar(3)

      tgt(3)%x = 11
      tar(3)%x=12
      allocate(p1,source=tgt)
      ptr=>tar
      select type (p1)
        class default 
          select type (ptr)
            type is (ty1)
              print*,111
            class is (ty1)
              if(ptr(3)%x .EQ. 12) then
                print*,'pass'
              else
                print*,112
              endif
          end select
        type is (ty1)
          print*,113
      end select
end program test

