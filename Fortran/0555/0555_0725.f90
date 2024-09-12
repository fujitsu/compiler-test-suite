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
      type (ty2),target :: tgt2(3)
      class (ty), allocatable :: p1(:)
      class (ty), pointer :: p2(:)
      tgt%x = 11
      tgt2%x = 12
      tgt2(3)%x = 13

      allocate(p1(3),source=tgt)
       p1(3)%x=10
       p2 => tgt2

      select type (p1)

        class default
          select type (p2)
            type is (ty2)
               if(p2(3)%x /=13 .and. p1(3)%x /=10) then 
                 print*,214
               else 
                 print*,'pass'
               endif
            class is (ty)
               print*,215
          end select

        type is (ty1)
           print*,216

      end select

end program test

