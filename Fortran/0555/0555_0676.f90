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
 
      type (ty) :: tgt
      class (*), allocatable :: p1
      class(ty),POINTER::ptr
      type(ty2),TARGET::tar

      tgt%x = 11
      tar%x=12
      allocate(p1,source=tgt)
      ptr=>tar
      select type (p1)
        class default 
          select type (ptr)
            type is (ty1)
              print*,111
            class is (ty1)
              if(ptr%x .EQ. 12) then
                print*,'pass'
              else
                print*,112
              endif
          end select
        type is (ty1)
          print*,113
      end select
end program test

