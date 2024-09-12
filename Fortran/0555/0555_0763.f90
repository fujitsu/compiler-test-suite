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
 
      type (ty),TARGET :: tar(4)
      class (*), POINTER :: ptr(:)
      tar(4)%x = 11
      ptr=>tar
      select type (ptr)
        class default 
          select type (ptr)
            type is (ty2)
              print*,111
            class is (ty)
               if(ptr(4)%x .EQ. 11) then
                 print*,'pass'
               else
                 print*,112
               endif
          end select
        type is (ty1)
          print*,113
      end select
end program test

