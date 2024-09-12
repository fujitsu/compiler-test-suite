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
 
      type (ty) :: tgt(3)
      class (*), allocatable :: p1(:)
      tgt(3)%x = 11

      allocate(p1,source=tgt)

      select type (p1)
        class default 
          select type (p1)
            type is (ty2)
              print*,111
            class is (ty)
               if(p1(3)%x .EQ. 11) then
                 print*,'pass'
               else
                 print*,112
               endif
          end select
        type is (ty1)
          print*,113
      end select
end program test

