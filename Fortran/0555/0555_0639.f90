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

      select type (p1)

        class default
          select type (p2)
            type is (ty2)
               p2%z = 15
               if(p2%z /=15) then 
                 print*,214
               else 
                 print*,'pass'
               endif
            class is (ty)
               p2%x=3
               print*,215
          end select

        type is (ty1)
           p1%x=3
           p1%y=32
           print*,216

      end select

end program test

