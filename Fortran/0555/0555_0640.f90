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
 
      type (ty),target :: tgt
      class (ty), pointer :: p1
      tgt%x = 11

      p1=>tgt

      select type (p1)

        class is(ty)
          select type (p1)
            type is (ty2)
               p1%y = 5
               print*,213
            type is (ty)
               p1%x=3
               if(p1%x /=3) then 
                 print*,214
               else 
                 print*,'pass'
               endif
          end select

        type is (ty1)
          p1%x=3
          p1%y=32
          print*,215

      end select

end program test

