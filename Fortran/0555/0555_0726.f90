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
 
      type (ty),target :: tgt(3)
      class (ty), pointer :: p1(:)
      tgt%x = 10
      tgt(3)%x = 11

      p1=>tgt

      select type (p1)

        class is(ty)
          select type (p1)
            type is (ty2)
               print*,213
           type is (ty)
               if(p1(3)%x /=11) then 
                 print*,214
               else 
                 print*,'pass'
               endif
          end select

        type is (ty1)
           print*,215

      end select

end program test

