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
 
      class (*),POINTER :: ptr1
      type (ty),TARGET :: tar1
      class(ty),POINTER::ptr2
      type(ty2),TARGET::tar2

      tar1%x=12
      tar2%x = 11
      ptr1=>tar1
      ptr2=>tar2
      select type (ptr1)
        class default 
          select type (ptr2)
            type is (ty1)
              print*,111
            class is (ty1)
              if(ptr2%x .EQ. 11) then
                print*,'pass'
              else
                print*,112
              endif
          end select
        type is (ty1)
          print*,113
      end select
end program test

