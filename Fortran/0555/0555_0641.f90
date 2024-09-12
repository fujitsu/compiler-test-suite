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
      type (ty2),target :: tgt2
      class (ty), allocatable :: p1
      class (ty), pointer :: p2
      tgt%x = 11
      tgt2%x = 12
      tgt2%y = 13
      tgt2%z = 14

      allocate(p1,source=tgt)
       p2 => tgt2

      select type (p2)

        class is(ty1)
          select type (p1)
            type is (ty2)
               p1%z = 15
               print*,213
            class is (ty)
               p1%x=3
               if(p1%x /=3) then 
                 print*,214
               else 
                 print*,'pass'
               endif
          end select

        type is (ty1)
           p2%x=3
           p2%y=32
           print*,215

      end select

end program test

